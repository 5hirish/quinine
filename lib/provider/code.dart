import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../collections/buffer/code.dart';
import '../repository/buffer/code.dart';
import '../utils.dart';
import 'repository.dart';

part 'code.g.dart';

@Riverpod(keepAlive: true)
class FileCode extends _$FileCode {

  late CodeRepository codeBuffRepo;

  Future<String> _fetchCode(String filePath) async {

    /// In Dart and Flutter, you don't typically need to manually lock files
    /// before reading or writing to them. The reason for this is that Dart
    /// IO operations are single-threaded due to Dart's event loop model.
    /// As a result, read and write operations are executed sequentially,
    /// which naturally prevents simultaneous access and the potential
    /// data corruption that could occur from it.

    CodeText? bufferedCodeText = await readBufferCode();

    if (bufferedCodeText == null || bufferedCodeText.fullText.isEmpty) {
      return await readFileContent(filePath);
    }

    return bufferedCodeText.fullText;
  }

  @override
  Future<CodeText> build({required String filePath}) async {
    codeBuffRepo = await ref.watch(codeBufferRepoProvider.future);
    String fileExtension = getFilePathExtension(filePath);

    CodeText codeText = CodeText()
      ..fullText = ''
      ..filePath = filePath
      ..language = fileExtension;

    String codeContent = await _fetchCode(filePath);

    return codeText
      ..fullText = codeContent;
  }

  void bufferModifiedCode(String codeContent) async {

    state = const AsyncValue.loading();

    await AsyncValue.guard(() async {
      codeBuffRepo.updateBufferCodeByFilePath(
        CodeText()
          ..fullText = codeContent
          ..filePath = state.value!.filePath
          ..language = state.value!.language
      );
      return codeContent;
    });

    state = AsyncValue.data(
        CodeText()
          ..fullText = codeContent
          ..filePath = state.value!.filePath
          ..language = state.value!.language
    );
  }

  void syncCode() async {

    state = const AsyncValue.loading();

    await AsyncValue.guard(() async {
      CodeText? syncCode = await codeBuffRepo.getBufferCodeByFilePath(filePath);
      if (syncCode != null) {
        state = AsyncValue.data(syncCode);
        await writeToFile(state.value!.filePath, state.value!.fullText);
        await codeBuffRepo.deleteBufferCodeByFilePath(filePath);
      }
    });
  }

  Future<CodeText?> readBufferCode() async {

      state = const AsyncValue.loading();

      await AsyncValue.guard(() async {
        CodeText? bufferCode = await codeBuffRepo.getBufferCodeByFilePath(filePath);
        if (bufferCode != null) {
          state = AsyncValue.data(bufferCode);
        }
      });

      return state.value;
  }
}
