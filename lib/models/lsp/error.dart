import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.g.dart';
part 'error.freezed.dart';

/// Error Codes: ref: https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#errorCodes

@freezed
class LSPError with _$LSPError {
  const factory LSPError({
    required int code,
    required String message,
    required dynamic data,
  }) = _LSPError;

  factory LSPError.fromJson(Map<String, dynamic> json) =>
      _$LSPErrorFromJson(json);
}
