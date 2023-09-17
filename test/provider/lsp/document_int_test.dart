import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:quinine/provider/file.dart';
import 'package:quinine/provider/lsp/document.dart';
import 'package:quinine/provider/project.dart';
import 'package:quinine/services/file.dart';
import 'package:quinine/services/lsp/document.dart';

import '../../snippets/basic.dart';
import '../../utils/utils.dart';
@GenerateNiceMocks([
  // Issue Mockito doesn't mock, auto dispose family providers, failing the test case
  // Skipping for now
  // ref: https://github.com/rrousselGit/riverpod/issues/2373
  MockSpec<ProjectDirectoryPath>(),
  MockSpec<FileService>(),
])
import 'document_int_test.mocks.dart';

void main() {
  group('LSP Document Synchronizer provider tests', () {
    late ProviderContainer container;
    late MockFileService mockFileService;
    late MockProjectDirectoryPath mockProjectDirectoryPath;

    const String testWorkspacePath = '/Users/test/StudioProjects/quinine';
    const String testFilePath = 'test_counter_app.dart';
    const String testFileExt = 'dart';

    setUp(() {
      setMockPackage();
      mockProjectDirectoryPath = MockProjectDirectoryPath();
      mockFileService = MockFileService();

      when(mockFileService.path).thenReturn(testFilePath);
      when(mockFileService.extension).thenReturn(testFileExt);
      when(mockProjectDirectoryPath.build()).thenReturn(testWorkspacePath);

      container = ProviderContainer(overrides: [
        projectDirectoryPathProvider
            .overrideWith(() => mockProjectDirectoryPath),
        fileServiceProvider(testFilePath)
            .overrideWith((ref) => mockFileService),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('lsp:document: didOpen', () async {
      // Set up the mock file service to return the test code
      when(mockFileService.readFileContent())
          .thenAnswer((_) => Future.value(counterProviderMaterialApp));

      // Wait for the document synchronizer to fetch the code
      await container.read(lSPDocumentProvider(testFilePath).future);

      expect(
          container.read(lSPDocumentProvider(testFilePath)).value,
          isA<DocumentSynchronization?>()
              .having((docSync) => docSync, 'docSync', isNotNull)
              .having(
                  (docSync) => docSync!.lspService, 'lspService', isNotNull));

      await container
          .read(lSPDocumentProvider(testFilePath).notifier)
          .textDocDidOpen();
    }, skip: true);
  });
}
