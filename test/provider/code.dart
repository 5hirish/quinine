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
])
import 'code.mocks.dart';


void main() {
  group('SourceFile provider tests', () {

    late ProviderContainer container;
    late MockCodeRepository mockCodeRepository;
    late MockIsarCollection mockIsarCollection;
    late MockFileService mockFileService;
    const String testFilePath = 'test_counter_app.dart';
    const String testFileExt = 'dart';

    /// Define setup actions to be run before each test in the group
    setUp(() {
      mockCodeRepository = MockCodeRepository();
      mockIsarCollection = MockIsarCollection();
      mockFileService = MockFileService();

      // Set up the mock repository to return the mock collection
      when(mockCodeRepository.getCodeTextCol()).thenReturn(mockIsarCollection);
      when(mockFileService.readFileContent()).thenAnswer((_) => Future.value(counterProviderMaterialApp));
      when(mockFileService.path).thenAnswer((_) => testFilePath);
      when(mockFileService.extension).thenAnswer((_) => testFileExt);

      // Create a new ProviderContainer, overriding the real CodeRepository with the mock
      container = ProviderContainer(
        overrides: [
          codeBufferRepoProvider.overrideWith((ref) => Future.value(mockCodeRepository)),
          fileServiceProvider(testFilePath).overrideWith((ref) => mockFileService),
        ]);
    });

    /// Define cleanup actions to be run after each test in the group
    tearDown(() {
      container.dispose();
    });

    test('source file fetches code', () async {
      // Define a filepath for testing

      // The first read if the loading state
      expect(
        container.read(sourceFileProvider(filePath: testFilePath)),
        const AsyncValue<CodeText>.loading(),
      );

      // Wait for the request to finish
      await container.read(sourceFileProvider(filePath: testFilePath).future);

      // Exposes the data fetched
      expect(container.read(sourceFileProvider(filePath: testFilePath)).value,
        isA<CodeText>()
          .having((code) => code.filePath, 'filePath', testFilePath)
          .having((code) => code.fullText.length, 'fullText', counterProviderMaterialApp.length)
          .having((code) => code.language, 'language', testFileExt)
      );
    });

    //Todo: Write more tests for bufferModifiedCode(), syncCode(), readBufferCode(), etc.
  });
}
