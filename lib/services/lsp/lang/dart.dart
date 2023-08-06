import 'dart:async';

import '../../../wrapper/process.dart';
import '../base.dart';
import '../document.dart';

class DartLSPService extends LSPService with DocumentSynchronization {
  final String logFilePath;

  DartLSPService._start(
      {required ProcessWrapper processWrapper,
      required String clientId,
      required String clientVersion,
      this.logFilePath = ''})
      : super(
          processWrapper: processWrapper,
          clientId: clientId,
          clientVersion: clientVersion,
        );

  /// Public factory to start the LSP server
  static Future<DartLSPService> start(
      {required ProcessWrapper processWrapper,
      required String clientId,
      required String clientVersion,
      String logFilePath = ''}) async {
    var dartLSP = DartLSPService._start(
        processWrapper: processWrapper,
        clientId: clientId,
        clientVersion: clientVersion,
        logFilePath: logFilePath);

    // LSP Server params
    List<String> processParams = [
      'language-server',
      '--client-id',
      clientId,
      '--client-version',
      clientVersion
    ];

    if (logFilePath.isNotEmpty) {
      processParams.add('--instrumentation-log-file');
      processParams.add(logFilePath);
    }

    await dartLSP.startProcess('dart', processParams);

    return dartLSP;
  }
}
