import 'package:freezed_annotation/freezed_annotation.dart';

part 'code.freezed.dart';

@freezed
class CodeText with _$CodeText {

  const factory CodeText({
    required String fullText,
    required String language,
    required String filePath,
  }) = _CodeText;
}