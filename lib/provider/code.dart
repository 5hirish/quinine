import 'package:clock/clock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../collections/buffer/code.dart';
import '../logger.dart';
import '../repository/buffer/code.dart';
import '../services/file.dart';
import 'file.dart';
import 'repository.dart';

part 'code.g.dart';

//Todo: To be re-engineered as the state management is incorrectly implemented
//Todo: Code type check ?!?
@Riverpod(keepAlive: true)
class SourceFile extends _$SourceFile {

  late CodeRepository codeBuffRepo;
  late FileService fileService;
  late Clock clock;

  final int maxBufferIntervalMS = 300;
  final int maxSyncIntervalMS = 3000;

  Future<CodeText> _fetchCode() async {

    /// In Dart and Flutter, you don't typically need to manually lock files
    /// before reading or writing to them. The reason for this is that Dart
    /// IO operations are single-threaded due to Dart's event loop model.
    /// As a result, read and write operations are executed sequentially,
    /// which naturally prevents simultaneous access and the potential
    /// data corruption that could occur from it.
    DateTime now = clock.now();
    String fullCodeContent = '';
    CodeText codeText = CodeText()
      ..fullText = fullCodeContent
      ..filePath = fileService.path
      ..language = fileService.extension
      ..baseOffset = 0
      ..extentOffset = 0
      ..updatedAt = now;

    CodeText? bufferedCodeText = await readBufferCode();
    if (bufferedCodeText != null && bufferedCodeText.fullText.isNotEmpty) {
      logger.d("Returning buffered code");
      return bufferedCodeText
        ..updatedAt = now;
    }

    fullCodeContent = await fileService.readFileContent();
    return codeText
      ..fullText = fullCodeContent;
  }

  @override
  Future<CodeText> build({required String filePath}) async {
    codeBuffRepo = await ref.watch(codeBufferRepoProvider.future);
    fileService = ref.watch(fileServiceProvider(filePath));
    clock = const Clock();

    return await _fetchCode();
  }

  void bufferModifiedCode(String codeContent, int baseOffset, int extentOffset,
      {bool updateState = true}) {

    DateTime now = clock.now();
    CodeText codeText = CodeText()
      ..fullText = codeContent
      ..filePath = state.value!.filePath
      ..language = state.value!.language
      ..baseOffset = baseOffset
      ..extentOffset = extentOffset
      ..bufferedAt = state.value!.bufferedAt
      ..updatedAt = now;

    if (state.value != null && state.value!.bufferedAt != null) {
      int msSinceBuffer = now.millisecondsSinceEpoch - state.value!.bufferedAt!.millisecondsSinceEpoch;
      if (msSinceBuffer < maxBufferIntervalMS) {
        if (updateState) {
          state = AsyncValue.data(codeText);
        }
        return;
      }
      logger.d("Buffering code after $msSinceBuffer ms");
    } else {
      logger.d("Buffering code since previous buffer time is null");
    }

    codeText = codeText
      ..bufferedAt = now;

    codeBuffRepo.updateBufferCodeByFilePath(codeText);

    if (updateState) {
      state = AsyncValue.data(codeText);
    }

  }

  Future<void> syncCode({
    String? codeContent, int baseOffset = 0, int extentOffset = 0,
    bool updateState = true}) async {

    state = const AsyncValue.loading();

    await AsyncValue.guard(() async {
      CodeText? bufferedCode;
      // If codeContent is not null, then we are syncing the code from the editor
      if (codeContent != null) {
        bufferedCode = CodeText()
          ..fullText = codeContent
          ..filePath = state.value!.filePath
          ..language = state.value!.language
          ..baseOffset = baseOffset
          ..extentOffset = extentOffset
          ..updatedAt = clock.now();
      } else {
        // If codeContent is null, then we are syncing the code from the buffer or state
        CodeText? bufferedCode = await codeBuffRepo.getBufferCodeByFilePath(filePath);
        if (bufferedCode == null) {
          // If there is no buffered code, then we are syncing the code from the state
          bufferedCode = state.value;
        } else if (bufferedCode.bufferedAt != null && state.value != null && state.value!.updatedAt != null) {
          // If the state code is newer than the buffered code, then we are syncing the code from the state
          Duration codeDuration = bufferedCode.bufferedAt!.difference(state.value!.updatedAt!);
          if (codeDuration.isNegative) {
            logger.d("Syncing state code");
            bufferedCode = state.value;
          } else {
            logger.d("Syncing buffered code");
          }
        }
      }

      if (bufferedCode != null) {
        //Todo: Write only if the code is modified ?!?
        await fileService.writeToFile(state.value!.fullText);
        await codeBuffRepo.deleteBufferCodeByFilePath(filePath);
        if (updateState) {
          state = AsyncValue.data(bufferedCode);
        }
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
