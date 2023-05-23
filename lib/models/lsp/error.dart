import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.g.dart';
part 'error.freezed.dart';

@freezed
class Error with _$Error {
  const factory Error({
    required int code,
    required String message,
    required dynamic data,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
