import 'package:isar/isar.dart';

part 'code.g.dart';

@collection
class CodeText {
  Id id = Isar.autoIncrement;

  String? fullText;

  String? language;

  String? filePath;

  DateTime createdAt = DateTime.now();

  DateTime? synchronizedAt;
}
