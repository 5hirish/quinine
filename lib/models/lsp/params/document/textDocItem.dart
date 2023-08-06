import 'package:freezed_annotation/freezed_annotation.dart';

part 'textDocItem.g.dart';
part 'textDocItem.freezed.dart';

@freezed
class TextDocItem with _$TextDocItem {
  const factory TextDocItem({
    required String uri,
    required String languageId,
    required int version, // The version number of this document
    // (it will increase after each change, including undo/redo).

    required String text, // content of the opened text document
  }) = _TextDocItem;

  factory TextDocItem.fromJson(Map<String, dynamic> json) =>
      _$TextDocItemFromJson(json);
}
