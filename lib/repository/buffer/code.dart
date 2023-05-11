import 'package:isar/isar.dart';

import '../../collections/buffer/code.dart';

class CodeRepository {
  CodeRepository({required this.db});

  final Isar db;

  IsarCollection<CodeText> getCodeTextCol() {
    return db.codeTexts;
  }

  Future<CodeText?> getBufferCodeById(int objectId) async {
    return await getCodeTextCol().get(objectId);
  }

  Future<CodeText?> getBufferCodeByFilePath(String filePath) async {
    return await getCodeTextCol().getByFilePath(filePath);
  }

  Future<void> insertBufferCode(CodeText codeText) async {
    await getCodeTextCol().put(codeText);
  }

  Future<void> updateBufferCodeByFilePath(CodeText codeText) async {
    await getCodeTextCol().putByFilePath(codeText);
  }

  Future<bool> deleteBufferCodeByFilePath(String filePath) async {
    return await getCodeTextCol().deleteByFilePath(filePath);
  }

}