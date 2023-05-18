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

  Future<Id> insertBufferCode(CodeText codeText) async {
    return await db.writeTxn(() async {
      return await getCodeTextCol().put(codeText);
    });
  }

  Future<Id> updateBufferCodeByFilePath(CodeText codeText) async {
    return await db.writeTxn(() async {
      return await getCodeTextCol().putByFilePath(codeText);
    });
  }

  Future<bool> deleteBufferCodeByFilePath(String filePath) async {
    return await db.writeTxn(() async {
      return await getCodeTextCol().deleteByFilePath(filePath);
    });
  }
}
