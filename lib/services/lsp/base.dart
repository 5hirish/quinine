import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../logger.dart';
import '../../config/lang.dart';
import '../../models/lsp/error.dart';
import '../../models/lsp/params/initialize.dart';
import '../../wrapper/process.dart';
import 'buffer.dart';
import 'lang/dart.dart';

/// ref: https://github.com/dart-lang/sdk/blob/main/pkg/analysis_server/lib/src/lsp/channel/lsp_byte_stream_channel.dart

/// By keeping the main LSPService generic and allowing for modular components,
/// one can easily add support for other languages in the future.
/// As LSP or your requirements evolve, one should be able to extend or
/// modify parts without major refactoring.
/// This class will be responsible for setting up the connection,
/// handling the basic protocol, and sending and receiving messages.
abstract class LSPService {
  final ProcessWrapper processWrapper;
  late ProcessWrapper _process;

  // To allow multiple subscriptions to a single stream.
  final StreamController<Map<String, dynamic>?> _controller =
      StreamController<Map<String, dynamic>?>.broadcast();

  final lspBuffer = LSPBuffer();

  // To store the IDs of pending client requests in a map when a client makes
  // a request and then remove them from the map when server responds.
  final Map<int, Completer<Map<String, dynamic>?>> _pendingClientRequests = {};

  // To allow filtered subscriptions to server requests
  final StreamController<Map<String, dynamic>> _serverRequestController =
      StreamController<Map<String, dynamic>>.broadcast();

  // To allow filtered subscriptions to server messages
  final StreamController<Map<String, dynamic>> _serverMessageController =
      StreamController<Map<String, dynamic>>.broadcast();

  // To keep track of whether the server is running.
  bool _isServerRunning = false;

  int _id = 0; // we're going to use this to keep track of the request ID

  Stream<Map<String, dynamic>?> get responses => _controller.stream;
  Stream<Map<String, dynamic>> get serverRequests =>
      _serverRequestController.stream;
  Stream<Map<String, dynamic>> get serverMessages =>
      _serverRequestController.stream;

  bool get isServerRunning => _isServerRunning;
  int get requestId => _id;
  int get pid => _process.pid;

  final String clientId;
  final String clientVersion;

  LSPService(
      {required this.processWrapper,
      required this.clientId,
      required this.clientVersion});

  static Future<LSPService> createLSPService({
    required LSPLanguage language,
    required ProcessWrapper processWrapper,
    required String clientId,
    required String clientVersion,
    String logFilePath = '',
  }) async {
    switch (language) {
      case LSPLanguage.dart:
        return await DartLSPService.start(
          processWrapper: processWrapper,
          clientId: clientId,
          clientVersion: clientVersion,
          logFilePath: logFilePath,
        );
      // case SupportedLanguages.Java:
      //     return await JavaLSPService.start(...);
      // case SupportedLanguages.Kotlin:
      //     return await KotlinLSPService.start(...);
      // ... add other cases as you define more LSPServices
      default:
        throw UnsupportedError('Unsupported Language for LSP');
    }
  }

  Future<void> startProcess(
      String executable, List<String> processParams) async {
    // Start the LSP server process
    _process = await processWrapper.start(executable, processParams);

    // Listen for responses and errors from the language server on the
    // standard output and standard error streams.
    _process.stdout.transform(utf8.decoder).listen((data) {
      // logger.d("RES:: $data");

      // Feed the raw data into the LSPBuffer
      lspBuffer.feed(data);

      // Try to process the buffer
      while (true) {
        var message = lspBuffer.process();
        if (message == null) {
          // If there's not enough data to process a complete message, break the loop
          break;
        }

        if (message is Map<String, dynamic>) {
          logger.d("RES::MSG::$message");
          _controller.add(message);
          _handleMessage(message);
        } else {
          logger.e("ERR::FMT::$message");
        }
      }
    });

    _process.stderr.transform(utf8.decoder).listen((error) {
      logger.e("ERR:: $error");
    });

    // Mark the server as running after starting it.
    _isServerRunning = true;

    logger.i(
        "SIG::STARTED::$executable::${_process.pid}::Diagnostics-> http://localhost:8081/");
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
      if (result.stdout.trim().isEmpty) {
        return -1;
      }
      return int.parse(result.stdout.trim());
    }
  }

  void _handleMessage(Map<String, dynamic> message) {
    /**
     * A Response Message sent as a result of a request.
     * If a request doesn’t provide a result value the receiver of a request
     * still needs to return a response message to conform to the JSON-RPC specification.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#responseMessage
     */

    final id = message['id'];
    final result = message['result'];
    final error = message['error'];
    final method = message['method'];
    final params = message['params'];

    if (id != null) {
      if (_pendingClientRequests.containsKey(id)) {
        if (error != null) {
          try {
            _pendingClientRequests[id]!.completeError(LSPError.fromJson(error));
          } catch (e) {
            _pendingClientRequests[id]!.completeError(error);
          }
        } else if (result != null) {
          _pendingClientRequests[id]!.complete(result);
        } else {
          _pendingClientRequests[id]!.complete({'': null});
        }
        _pendingClientRequests.remove(id);
      } else {
        if (method != null && params != null) {
          _serverRequestController.add(message);
        }
      }
    } else {
      if (method != null && params != null) {
        _serverMessageController.add(message);
      }
    }
  }

  Future<Map<String, dynamic>> _sendMessage(String method, bool isNotification,
      [Map<String, dynamic> params = const {}]) {
    /**
     * The base protocol consists of a header and a content part.
     * The header and content part are separated by a ‘\r\n’.
     * The header part is encoded using the ‘ascii’ encoding.
     * The content part is encoded using the ‘utf8’ encoding.
     */

    Map<String, dynamic> content = {
      'jsonrpc': '2.0',
      'method': method,
      'params': params,
    };

    int id = -1;
    if (!isNotification) {
      id = _id++;
      // Increment and use the ID for this request
      content['id'] = id;
    }

    final jsonContent = jsonEncode(content);
    final encodedContent = utf8.encode(jsonContent);

    final header = 'Content-Length: ${encodedContent.length}\r\n'
        'Content-Type: application/quinine-jsonrpc; charset=utf-8\r\n\r\n';

    final encodedHeader = ascii.encode(header);

    final List<int> fullMessage = [...encodedHeader, ...encodedContent];

    _process.stdin.add(fullMessage);

    if (isNotification) {
      return Future.value({});
    }

    logger.d("${isNotification ? "NTF" : "REQ"}::$id::$method");

    final completer = Completer<Map<String, dynamic>>();
    _pendingClientRequests[id] = completer;
    return completer.future;
  }

  void _sendResponse(int id, [dynamic result, dynamic error]) {
    /**
     * The base protocol consists of a header and a content part.
     * The header and content part are separated by a ‘\r\n’.
     * The header part is encoded using the ‘ascii’ encoding.
     * The content part is encoded using the ‘utf8’ encoding.
     */

    Map<String, dynamic> content = {
      'jsonrpc': '2.0',
      'id': id,
      'clientRequestTime': DateTime.now().millisecondsSinceEpoch,
    };

    if (id > _id) {
      _id = id;
    }

    if (error != null) {
      content['error'] = error;
    } else {
      // The result of a request. This member is REQUIRED on success.
      // * This member MUST NOT exist if there was an error invoking the method.
      content['result'] = result;
    }

    final jsonContent = jsonEncode(content);
    final encodedContent = utf8.encode(jsonContent);

    final header = 'Content-Length: ${encodedContent.length}\r\n'
        'Content-Type: application/quinine-jsonrpc; charset=utf-8\r\n\r\n';

    final encodedHeader = ascii.encode(header);

    final List<int> fullMessage = [...encodedHeader, ...encodedContent];

    _process.stdin.add(fullMessage);

    logger.d("RES::$id");
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

  void sendResponse(int requestId, [dynamic result, dynamic error]) {
    /**
     * A Response Message sent as a result of a request. If a request doesn’t
     * provide a result value the receiver of a request still needs to return
     * a response message to conform to the JSON-RPC specification.
     * The result property of the ResponseMessage should be set to null in
     * this case to signal a successful request.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#responseMessage
     */

    return _sendResponse(requestId, result, error);
  }

  Future<Map<String, dynamic>> sendNotification(String method,
      [Map<String, dynamic> params = const {}]) {
    /**
     * A processed notification message must not send a response back.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#notificationMessage
     */

    return _sendMessage(method, true, params);
  }

  /// Life cycle messages

  Future<Map<String, dynamic>> initialize(Initialize initialize) {
    /**
     * The initialize request is sent as the first request from the client to the server.
     * Until the server has responded to the initialize request with an
     * InitializeResult, the client must not send any additional requests or notifications to the server
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#initialize
     */

    return sendRequest('initialize', initialize.toJson());
  }

  Future<Map<String, dynamic>> initialized() {
    /**
     * The initialized notification is sent from the client to the server
     * after the client received the result of the initialize request but before
     * the client is sending any other request or notification to the server.
     * The server can use the initialized notification for example to
     * dynamically register capabilities. The initialized notification may only be sent once.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#initialized
     */
    return sendNotification('initialized');
  }

  static const String mRegisterCapability = 'client/registerCapability';

  void registerCapability(requestId) {
    /**
     * The client/registerCapability request is sent from the server to the
     * client to register for a new capability on the client side. Not all
     * clients need to support dynamic capability registration.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#client_registerCapability
     */
    return sendResponse(requestId, null);
  }

  static const String mUnRegisterCapability = 'client/unregisterCapability';

  void unregisterCapability(requestId) {
    /**
     * The client/unregisterCapability request is sent from the server to the
     * client to unregister a previously registered capability.
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#client_unregisterCapability
     */
    return sendResponse(requestId, null);
  }

  Future<Map<String, dynamic>> cancelRequest(int id) {
    /**
     * To cancel a request, a notification message with the request id to cancel is sent
     * ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#cancelRequest
     */
    return sendNotification('\$/cancelRequest', {'id': id});
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

  Future<Map<String, dynamic>> exit() {
    /**
     * A notification to ask the server to exit its process.
     * The server should exit with success code 0 if the shutdown request
     * has been received before; otherwise with error code 1.
     */
    return sendNotification('exit');
  }

  /// Document Synchronization messages

  Future<bool?> stop() async {
    Map<String, dynamic>? response = await shutdown();

    if (response['result'] == null) {
      await exit();
    }

    // Close the stream controller and kill the process.
    await _controller.close();
    await _serverRequestController.close();
    await _serverMessageController.close();

    // Kill the process and mark the server as not running
    _isServerRunning = !_process.kill();

    logger.i("SIG::SHUTDOWN");

    return _isServerRunning;
  }
}
