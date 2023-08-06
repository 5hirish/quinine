import 'package:freezed_annotation/freezed_annotation.dart';

import 'range.dart';

part 'textDocContentChange.g.dart';
part 'textDocContentChange.freezed.dart';

@freezed
class TextDocContentChange with _$TextDocContentChange {
  const factory TextDocContentChange({
    Range? range,
    required String text,
  }) = _TextDocContentChange;

  factory TextDocContentChange.fromJson(Map<String, dynamic> json) =>
      _$TextDocContentChangeFromJson(json);
}
