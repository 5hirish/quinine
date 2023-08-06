import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:quinine/collections/buffer/code.dart';
import 'package:quinine/provider/code.dart';
import 'package:quinine/provider/file.dart';
import 'package:quinine/provider/repository.dart';
import 'package:quinine/repository/buffer/code.dart';
import 'package:quinine/services/file.dart';

import '../snippets/basic.dart';
@GenerateNiceMocks([
  MockSpec<CodeRepository>(),
  MockSpec<IsarCollection<CodeText>>(),
  MockSpec<FileService>(),
  MockSpec<Clock>(),
])
import 'code_test.mocks.dart';

void main() {
  bool isBufferDiffInThreshold(
      DateTime now, DateTime? bufferedAt, int thresholdMilliseconds,
      {bool isLessThan = true}) {
    if (bufferedAt != null) {
      int diffMs = now.difference(bufferedAt).inMilliseconds;

      return isLessThan
          ? diffMs < thresholdMilliseconds
          : diffMs > thresholdMilliseconds;
    }
    return false;
  }

  group('SourceFile provider tests', () {
    late ProviderContainer container;
    late MockCodeRepository mockCodeRepository;
    late MockIsarCollection mockIsarCollection;
    late MockFileService mockFileService;
    late MockClock mockClock;

    const String testFilePath = 'test_counter_app.dart';
    const String testFileExt = 'dart';

    /// Define setup actions to be run before each test in the group
    setUp(() {
      mockCodeRepository = MockCodeRepository();
      mockIsarCollection = MockIsarCollection();
      mockFileService = MockFileService();
      mockClock = MockClock();

      // Set up the mock repository to return the mock collection
      when(mockCodeRepository.getCodeTextCol()).thenReturn(mockIsarCollection);
      when(mockFileService.path).thenAnswer((_) => testFilePath);
      when(mockFileService.extension).thenAnswer((_) => testFileExt);

      // Create a new ProviderContainer, overriding the real CodeRepository with the mock
      container = ProviderContainer(overrides: [
        codeBufferRepoProvider
            .overrideWith((ref) => Future.value(mockCodeRepository)),
        fileServiceProvider(testFilePath)
            .overrideWith((ref) => mockFileService),
      ]);
    });

    /// Define cleanup actions to be run after each test in the group
    tearDown(() {
      container.dispose();
    });

    test('source file fetches code', () async {
      // Set up the mock file service to return the test code
      when(mockFileService.readFileContent())
          .thenAnswer((_) => Future.value(counterProviderMaterialApp));

      // The first read if the loading state
      expect(
        container.read(sourceFileProvider(filePath: testFilePath)),
        const AsyncValue<CodeText>.loading(),
      );

      // Wait for the request to finish
      await container.read(sourceFileProvider(filePath: testFilePath).future);

      // Exposes the data fetched
      expect(
          container.read(sourceFileProvider(filePath: testFilePath)).value,
          isA<CodeText>()
              .having((code) => code.filePath, 'filePath', testFilePath)
              .having((code) => code.fullText.length, 'fullText',
                  counterProviderMaterialApp.length)
              .having((code) => code.language, 'language', testFileExt));
    });

    test('source file modify and sync', () async {
      DateTime now = DateTime.now();
      // Set up the mock file service to return the mock code
      when(mockFileService.readFileContent())
          .thenAnswer((_) => Future.value(counterProviderMaterialApp));

      // The first read if the loading state
      expect(
        container.read(sourceFileProvider(filePath: testFilePath)),
        const AsyncValue<CodeText>.loading(),
      );

      // Wait for the request to finish
      await container.read(sourceFileProvider(filePath: testFilePath).future);

      // Exposes the data fetched
      expect(
          container.read(sourceFileProvider(filePath: testFilePath)).value,
          isA<CodeText>()
              .having((code) => code.filePath, 'file path', testFilePath)
              .having((code) => code.fullText.length, 'full code',
                  counterProviderMaterialApp.length)
              .having((code) => code.language, 'language', testFileExt));

      // Fast forward clock by 100ms
      when(mockClock.now())
          .thenAnswer((_) => now.add(const Duration(milliseconds: 100)));

      // Set up the mock file service to return the modified code
      container
          .read(sourceFileProvider(filePath: testFilePath).notifier)
          .bufferModifiedCode(counterProviderMaterialApp2, 0, 0);

      // Exposes the data fetched and confirm that code is buffered the first time
      expect(
          container.read(sourceFileProvider(filePath: testFilePath)).value,
          isA<CodeText>()
              .having((code) => code.filePath, 'file path', testFilePath)
              .having((code) => code.fullText.length, 'full code',
                  counterProviderMaterialApp2.length)
              .having((code) => code.language, 'language', testFileExt)
              .having((code) => code.bufferedAt, 'buffered at', isNotNull));

      // Fast forward clock by 100ms
      when(mockClock.now())
          .thenAnswer((_) => now.add(const Duration(milliseconds: 100)));

      // Set up the mock file service to return more modified code (mimics undo operation in this case)
      container
          .read(sourceFileProvider(filePath: testFilePath).notifier)
          .bufferModifiedCode(counterProviderMaterialApp, 0, 0);

      // Exposes the data fetched and confirm that code is not buffered since < 300ms threshold
      expect(
          container.read(sourceFileProvider(filePath: testFilePath)).value,
          isA<CodeText>()
              .having((code) => code.filePath, 'file path', testFilePath)
              .having((code) => code.fullText.length, 'full code',
                  counterProviderMaterialApp.length)
              .having((code) => code.language, 'language', testFileExt)
              .having(
                  (code) => isBufferDiffInThreshold(now, code.bufferedAt, 300),
                  'buffer diff',
                  isTrue));

      // Fast forward clock by 500ms
      when(mockClock.now())
          .thenAnswer((_) => now.add(const Duration(milliseconds: 500)));

      // Set up the mock file service to return the modified code (mimics redo operation in this case)
      container
          .read(sourceFileProvider(filePath: testFilePath).notifier)
          .bufferModifiedCode(counterProviderMaterialApp2, 0, 0);

      // Exposes the data fetched and confirm that code is buffered since > 300ms threshold
      expect(
          container.read(sourceFileProvider(filePath: testFilePath)).value,
          isA<CodeText>()
              .having((code) => code.filePath, 'file path', testFilePath)
              .having((code) => code.fullText.length, 'full code',
                  counterProviderMaterialApp2.length)
              .having((code) => code.language, 'language', testFileExt)
              .having(
                  (code) => isBufferDiffInThreshold(now, code.bufferedAt, 300),
                  'buffer diff',
                  isTrue));

      // Fast forward clock by 100ms
      when(mockClock.now())
          .thenAnswer((_) => now.add(const Duration(milliseconds: 100)));

      container
          .read(sourceFileProvider(filePath: testFilePath).notifier)
          .syncCode();

      // Exposes the data fetched and confirm that code is buffered on sync
      expect(
          container.read(sourceFileProvider(filePath: testFilePath)).value,
          isA<CodeText>()
              .having((code) => code.filePath, 'file path', testFilePath)
              .having((code) => code.fullText.length, 'full code',
                  counterProviderMaterialApp2.length)
              .having((code) => code.language, 'language', testFileExt)
              .having((code) => code.bufferedAt, 'buffer diff', isNotNull));
    });
  });
}
