import 'package:freezed_annotation/freezed_annotation.dart';

part 'initializationOptions.g.dart';
part 'initializationOptions.freezed.dart';

@freezed
class InitializationOptions with _$InitializationOptions {
  const factory InitializationOptions({
    @Default(true) bool allowOpenUri,
    @Default("desktop") String appHost,
    @Default(true) bool closingLabels,
    @Default(true) bool flutterOutline,
    @Default(false) bool onlyAnalyzeProjectsWithOpenFiles,
    @Default(true) bool outline,
    @Default(true) bool suggestFromUnimportedLibraries,
  }) = _InitializationOptions;

  factory InitializationOptions.fromJson(Map<String, dynamic> json) =>
      _$InitializationOptionsFromJson(json);
}
