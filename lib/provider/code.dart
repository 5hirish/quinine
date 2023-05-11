import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/code.dart';
import '../utils.dart';

part 'code.g.dart';

@Riverpod(keepAlive: true)
class FileCode extends _$FileCode {

  Future<String> _fetchCode(String filePath) async {

    /// In Dart and Flutter, you don't typically need to manually lock files
    /// before reading or writing to them. The reason for this is that Dart
    /// IO operations are single-threaded due to Dart's event loop model.
    /// As a result, read and write operations are executed sequentially,
    /// which naturally prevents simultaneous access and the potential
    /// data corruption that could occur from it.

    return await readFileContent(filePath);
  }

  @override
  Future<CodeText> build({
    required String filePath,
    required String language,
    String codeContent = ''}
  ) async {

    String codeContent = await _fetchCode(filePath);

    return CodeText(
      fullText: codeContent,
      language: language,
      filePath: filePath,
    );
  }

  void bufferModifiedCode(String codeContent) async {
    // Set the state to loading
    state = const AsyncValue.loading();

    // state = await AsyncValue.guard(() async {
    //   await writeToFile(state.value!.filePath, codeContent);
    //   return codeContent;
    // });
  }
}
