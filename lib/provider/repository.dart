import 'package:quinine/repository/buffer/code.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'datastore.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
Future<CodeRepository> codeBufferRepo(CodeBufferRepoRef ref) async {
  final dbStore = await ref.watch(datastoreProvider.future);
  return CodeRepository(db: dbStore);
}