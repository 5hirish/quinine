import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';
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

    test(
      'mock test DartLSPService message handling',
      () async {
        List<Map<String, dynamic>> events = [];

        service.responses.listen((event) {
          expect(event, isA<Map<String, dynamic>>());
          expect(event, isNotNull);
          events.add(event!);
        });

        await Future.delayed(const Duration(seconds: 1));

        expect(events.length, 6);
      },
    );
  });
}
