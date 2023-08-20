import 'dart:async';

import '../../../wrapper/process.dart';
import '../base.dart';

/// These classes will inherit from the base LSPService and provide
/// the specifics for setting up and running an LSP for a particular language.
class DartLSPService extends LSPService {
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
  static Future<DartLSPService> start({
    required ProcessWrapper processWrapper,
    required String clientId,
    required String clientVersion,
    String logFilePath = '',
    int diagnosticPort = 80,
  }) async {
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
      // This bug https://github.com/dart-lang/sdk/issues/52501 prevents us
      // from using --protocol-traffic-log hence we are using --instrumentation-log-file
      processParams.add('--instrumentation-log-file');
      processParams.add(logFilePath);

      // FYI: LSP Server diagnostics available at http://localhost:8081/
      processParams.add('--diagnostic-port=8081');
    }

    await dartLSP.startProcess('dart', processParams);

    return dartLSP;
  }
}
