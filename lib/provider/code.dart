import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../collections/buffer/code.dart';
import '../logger.dart';
import '../repository/buffer/code.dart';
import '../utils.dart';
import 'repository.dart';

part 'code.g.dart';

@Riverpod(keepAlive: true)
class SourceFile extends _$SourceFile {

  late CodeRepository codeBuffRepo;
  final int maxBufferIntervalMS = 300;
  final int maxSyncIntervalMS = 3000;

  Future<CodeText> _fetchCode(String filePath) async {

    /// In Dart and Flutter, you don't typically need to manually lock files
    /// before reading or writing to them. The reason for this is that Dart
    /// IO operations are single-threaded due to Dart's event loop model.
    /// As a result, read and write operations are executed sequentially,
    /// which naturally prevents simultaneous access and the potential
    /// data corruption that could occur from it.

    String fullCodeContent = '';
    CodeText codeText = CodeText()
      ..fullText = fullCodeContent
      ..filePath = filePath
      ..language = getFilePathExtension(filePath)
      ..baseOffset = 0
      ..extentOffset = 0;

    CodeText? bufferedCodeText = await readBufferCode();
    if (bufferedCodeText != null && bufferedCodeText.fullText.isNotEmpty) {
      logger.d("Returning buffered code");
      return bufferedCodeText;
    }

    fullCodeContent = await readFileContent(filePath);
    return codeText
      ..fullText = fullCodeContent;
  }

  @override
  Future<CodeText> build({required String filePath}) async {
    codeBuffRepo = await ref.watch(codeBufferRepoProvider.future);
    return await _fetchCode(filePath);
  }

  void bufferModifiedCode(String codeContent, int baseOffset, int extentOffset, {bool updateState = true}) async {

    CodeText codeText = CodeText()
      ..fullText = codeContent
      ..filePath = state.value!.filePath
      ..language = state.value!.language
      ..baseOffset = baseOffset
      ..extentOffset = extentOffset
      ..synchronizedAt = state.value!.synchronizedAt;

    if (state.value != null && state.value!.synchronizedAt != null) {
      int msSinceSync = DateTime.now().millisecondsSinceEpoch - state.value!.synchronizedAt!.millisecondsSinceEpoch;
      if (msSinceSync < maxBufferIntervalMS) {
        if (updateState) {
          state = AsyncValue.data(codeText);
        }
        return;
      }
      logger.d("Buffering code after $msSinceSync ms");
    }

    codeText = codeText
      ..synchronizedAt = DateTime.now();

    codeBuffRepo.updateBufferCodeByFilePath(codeText);

    if (updateState) {
      state = AsyncValue.data(codeText);
    }

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
