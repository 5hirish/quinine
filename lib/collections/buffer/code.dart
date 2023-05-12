import 'package:isar/isar.dart';

part 'code.g.dart';

@collection
class CodeText {
  Id id = Isar.autoIncrement;

  late String fullText;

  late String language;

  @Index(unique: true, replace: true, caseSensitive: false)
  late String filePath;

  late int baseOffset;

  late int extentOffset;

  DateTime createdAt = DateTime.now();

  @Ignore()
  DateTime? updatedAt;

  @Index()
  DateTime? bufferedAt;
}
