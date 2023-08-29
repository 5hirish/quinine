import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:quinine/models/lsp/params/capabilities.dart';
import 'package:quinine/models/lsp/params/clientInfo.dart';
import 'package:quinine/models/lsp/params/initializationOptions.dart';
import 'package:quinine/models/lsp/params/initialize.dart';
import 'package:quinine/models/lsp/params/workspaceFolder.dart';
import 'package:quinine/services/lsp/lang/dart.dart';
import 'package:quinine/wrapper/process.dart';

void main() {
  group('DartLSPService tests', () {
    late DartLSPService service;

    setUp(() async {
      PackageInfo.setMockInitialValues(
          appName: 'Quinine Test',
          packageName: 'quinine.test',
          version: '1',
          buildNumber: '1',
          buildSignature: 'buildSignature');

      service = await DartLSPService.start(
          processWrapper: ActualProcessWrapper(),
          clientId: 'quinine.test',
          clientVersion: '1',
          logFilePath: 'test-dart-sdk-lsp.log');
    });

    tearDown(() async {
      await service.stop();
    });

    test(
      'initialize the LSP server path',
      () async {
        expect(service, isA<DartLSPService>());

        int lspPpId = await service.getParentProcessId();

        expect(lspPpId, isA<int>());

        final directoryPath = Directory.current.path;
        final directoryUri = Uri.parse(directoryPath);
        WorkspaceFolder workspaceFolder = WorkspaceFolder(
          uri: directoryUri,
          name: basename(directoryPath),
        );

        Initialize initializeParams = Initialize(
          processId: lspPpId,
          rootUri: directoryUri.toString(),
          capabilities: clientCapabilitiesMap,
          initializationOptions: const InitializationOptions(),
          trace: "verbose",
          workspaceFolder: [workspaceFolder],
          clientInfo: const ClientInfo(name: 'quinine.test', version: '0.1'),
          locale: "en_US",
        );

        final result = await service.initialize(initializeParams);

        expect(
            result,
            isA<Map<String, dynamic>>()
                .having((resp) => resp.containsKey('capabilities'),
                    'capabilities', isTrue)
                .having((resp) => resp.containsKey('serverInfo'), 'server info',
                    isTrue));

        final notification = await service.initialized();

        expect(notification.length, 0);
      },
      timeout: const Timeout(Duration(seconds: 3)),
    );
  });
}
