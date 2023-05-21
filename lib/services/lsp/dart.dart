import 'dart:async';
import 'dart:convert';
import 'dart:io';

class DartLspService {
  late Process _process;
  late String _rootUri;

  String clientID = 'quinine.dart';
  String clientVersion = '0.1';
  StreamController<String>? _responseController;

  int _id = 0; // we're going to use this to keep track of the request ID

  Future<void> start() async {
    _responseController = StreamController();
    // start the process
    _process = await Process.start('dart', [
      'language-server',
      '--client-id',
      clientID,
      '--client-version',
      clientVersion
    ]);
    // listen for responses
    _process.stdout.transform(utf8.decoder).listen(_responseController!.add);
  }

  Stream<String> get responses =>
      _responseController?.stream ?? const Stream.empty();

  void sendRequest(String method, [Map<String, dynamic> params = const {}]) {
    // merge the standard part of the payload with the provided method and params
    final request = {
      'jsonrpc': '2.0',
      'id': (_id++).toString(), // increment and use the ID
      'method': method,
      'params': params,
    };

    _process.stdin.writeln(jsonEncode(request));
  }

  void initialize(String rootUri) {
    _rootUri = rootUri;

    sendRequest('initialize', {
      'processId': pid,
      'rootUri': rootUri,
      'capabilities': {},
      'trace': 'off',
    });
  }

  Future<bool?> stop() async {
    await _responseController?.close();
    return _process.kill();
  }
}
