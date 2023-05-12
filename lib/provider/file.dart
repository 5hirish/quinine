import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/file.dart';

part 'file.g.dart';

final openFilesPathProvider = StateProvider<List<String>>((ref) => []);

@Riverpod(keepAlive: true)
FileService fileService(FileServiceRef ref, String filePath) {
  return FileService(filePath);
}