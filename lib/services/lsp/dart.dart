import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';

import '../../logger.dart';
import '../../models/lsp/params/initialize.dart';

class DartLSPService {
  late Process _process;

  // To allow multiple subscriptions to a single stream.
  StreamController<String>? _controller = StreamController<String>.broadcast();

  // To store the IDs of pending requests in a map when you send the request,
  // and then remove them from the map when you receive the response.
  final Map<int, Completer> _pendingRequests = {};

  // To keep track of whether the server is running.
  bool _isServerRunning = false;

  int _id = 0; // we're going to use this to keep track of the request ID

  Stream<String> get responses => _controller?.stream ?? const Stream.empty();

  bool get isServerRunning => _isServerRunning;

  int get requestId => _id;

  int get pid => _process.pid;

  DartLSPService() {
    _start();
  }

  void _handleResponse(Object? message) {
    /**
     * A Response Message sent as a result of a request.
     * If a request doesn’t provide a result value the receiver of a request
     * still needs to return a response message to conform to the JSON-RPC specification.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#responseMessage
     */
    if (message is Map<String, dynamic>) {
      final id = message['id'];
      final result = message['result'];
      final error = message['error'];

      if (_pendingRequests.containsKey(id)) {
        if (error != null) {
          _pendingRequests[id]!.completeError(error);
        } else {
          _pendingRequests[id]!.complete(result);
        }
        _pendingRequests.remove(id);
      }
    } else {
      // Handle case when the message is not a Map<String, dynamic>
    }
  }

  Future<void> _start() async {
    _controller = StreamController();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    // Start the process
    _process = await Process.start('dart', [
      'language-server',
      '--client-id',
      packageInfo.packageName,
      '--client-version',
      packageInfo.version,
      '--protocol-traffic-log',
      'dart-sdk-lsp.log',
    ]);

    // Listen for responses and errors from the language server on the
    // standard output and standard error streams.
    _process.stdout
        .transform(utf8.decoder)
        .transform(json.decoder)
        .listen((data) {
      _handleResponse(data);
    });

    _process.stderr.transform(utf8.decoder).listen((data) {
      _controller?.add(data);
    });

    // Mark the server as running after starting it.
    _isServerRunning = true;

    logger.i("Dart SDK LSP Server started");
  }

  Future<Map<String, dynamic>> _sendMessage(String method, bool isNotification,
      [Map<String, dynamic> params = const {}]) {
    /**
     * The base protocol consists of a header and a content part.
     * The header and content part are separated by a ‘\r\n’.
     * The header part is encoded using the ‘ascii’ encoding.
     * The content part is encoded using the ‘utf8’ encoding.
     */

    final content = {
      'jsonrpc': '2.0',
      'method': method,
      'params': params,
    };

    int id = _id;
    if (!isNotification) {
      // Increment and use the ID for this request
      id = _id++;
      content['id'] = id;
    }

    final encodedContent = utf8.encode(jsonEncode(content));

    final header = 'Content-Length: ${encodedContent.length}\r\n'
        'Content-Type: application/quinine-jsonrpc; charset=utf-8\r\n\r\n';

    final encodedHeader = ascii.encode(header);

    final List<int> fullMessage = [...encodedHeader, ...encodedContent];

    _process.stdin.add(fullMessage);

    if (isNotification) {
      return Future.value({});
    }

    final completer = Completer<Map<String, dynamic>>();
    _pendingRequests[id] = completer;
    return completer.future;
  }

  Future<Map<String, dynamic>> sendRequest(String method,
      [Map<String, dynamic> params = const {}]) {
    /**
     * A request message to describe a request between the client and the server.
     * Every processed request must send a response back to the sender of the request.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#requestMessage
     */

    return _sendMessage(method, false, params);
  }

  Future<Map<String, dynamic>> sendNotification(String method,
      [Map<String, dynamic> params = const {}]) {
    /**
     * A processed notification message must not send a response back.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#notificationMessage
     */

    return _sendMessage(method, true, params);
  }

  Future<Map<String, dynamic>> initialize(Initialize initialize) {
    /**
     * The initialize request is sent as the first request from the client to the server.
     * Until the server has responded to the initialize request with an
     * InitializeResult, the client must not send any additional requests or notifications to the server
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#initialize
     */

    return sendRequest('initialize', initialize.toJson());
  }

  void initialized() {
    /**
     * The initialized notification is sent from the client to the server
     * after the client received the result of the initialize request but before
     * the client is sending any other request or notification to the server.
     * The server can use the initialized notification for example to
     * dynamically register capabilities. The initialized notification may only be sent once.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#initialized
     */
    sendNotification('initialized');
  }

  void cancelRequest(int id) {
    /**
     * To cancel a request, a notification message with the request id to cancel is sent
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#cancelRequest
     */
    sendNotification('\$/cancelRequest', {'id': id});
  }

  Future<Map<String, dynamic>> shutdown() {
    /**
     * The shutdown request is sent from the client to the server.
     * It asks the server to shut down, but to not exit
     * (otherwise the response might not be delivered correctly to the client).
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#shutdown
     */
    return sendRequest('shutdown');
  }

  void exit() {
    /**
     * A notification to ask the server to exit its process.
     * The server should exit with success code 0 if the shutdown request
     * has been received before; otherwise with error code 1.
     */
    sendNotification('exit');
  }

  Future<int> getParentProcessId() async {
    ProcessResult result;

    if (Platform.isWindows) {
      result = await Process.run('powershell.exe', [
        '-Command',
        'gwmi win32_process | ? processid -eq ${_process.pid} | select parentprocessid'
      ]);

      return int.parse(result.stdout.split('\n')[3].trim());
    } else {
      result =
          await Process.run('ps', ['-p', _process.pid.toString(), '-oppid=']);
      return int.parse(result.stdout.trim());
    }
  }

  Future<bool?> stop() async {
    // Todo:: Send a shutdown request to the server and then exit.
    Map<String, dynamic>? response = await shutdown();

    if (response['result'] == null) {
      exit();
    }

    // Close the stream controller and kill the process.
    await _controller?.close();

    // Kill the process and mark the server as not running
    _isServerRunning = !_process.kill();

    logger.i("Dart SDK LSP Server stopped");

    return _isServerRunning;
  }
}
