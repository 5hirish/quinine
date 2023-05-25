import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:quinine/models/lsp/params/capabilities.dart';
import 'package:quinine/models/lsp/params/clientInfo.dart';
import 'package:quinine/models/lsp/params/initializationOptions.dart';
import 'package:quinine/models/lsp/params/initialize.dart';
import 'package:quinine/models/lsp/params/workspaceFolder.dart';
import 'package:quinine/services/lsp/lang/dart.dart';
import 'package:quinine/wrapper/process.dart';

import '../data/lsp.dart';
@GenerateNiceMocks([MockSpec<ActualProcessWrapper>(), MockSpec<IOSink>()])
import 'lsp_test.mocks.dart';

void main() {
  group('DartLSPService mock tests', () {
    late DartLSPService service;
    late MockActualProcessWrapper mockProcess;
    late MockIOSink mockIOSink;

    List<List<int>> encodedStrings =
        lspOutputChunkingTestData.map((str) => utf8.encode(str)).toList();

    setUp(() async {
      mockProcess = MockActualProcessWrapper();
      mockIOSink = MockIOSink();

      when(mockProcess.start(any, any)).thenAnswer((_) async => mockProcess);

      when(mockProcess.stdout)
          .thenAnswer((_) => Stream.fromIterable(encodedStrings));

      when(mockProcess.stdin).thenReturn(mockIOSink);
      // when(mockProcess.stdin.add([0, 0])).thenReturn(null);

      PackageInfo.setMockInitialValues(
          appName: 'Quinine Test',
          packageName: 'quinine.test',
          version: '1',
          buildNumber: '1',
          buildSignature: 'buildSignature');

      service = await DartLSPService.start(
          processWrapper: mockProcess,
          clientId: 'quinine.test',
          clientVersion: '1',
          logFilePath: 'test-dart-sdk-lsp.log');
    });

    tearDown(() async {
      await service.stop();
    });

    test(
      'test DartLSPService message handling',
      () async {
        int lspPpId = 100;
        final directoryPath = Directory.current.path;
        final directoryUri = Uri.parse(directoryPath);
        WorkspaceFolder workspaceFolder = WorkspaceFolder(
          uri: directoryUri,
          name: basename(directoryPath),
        );

        Initialize initializeParams = Initialize(
          processId: lspPpId,
          rootUri: directoryUri.toString(),
          capabilities: clientCapabilities,
          initializationOptions: const InitializationOptions(),
          trace: "verbose",
          workspaceFolder: [workspaceFolder],
          clientInfo: const ClientInfo(name: 'quinine.test', version: '0.1'),
          locale: "en_US",
        );

        final result = await service.initialize(initializeParams);

        expect(result, isNotNull);
      },
      timeout: const Timeout(Duration(seconds: 3)),
    );
  });
}
