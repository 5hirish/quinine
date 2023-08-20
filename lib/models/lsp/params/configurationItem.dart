import 'package:freezed_annotation/freezed_annotation.dart';

part 'configurationItem.g.dart';
part 'configurationItem.freezed.dart';

@freezed
class ConfigurationItem with _$ConfigurationItem {
  const factory ConfigurationItem({
    required String? scopeUri,
    required String? section,
  }) = _ConfigurationItem;

  factory ConfigurationItem.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationItemFromJson(json);
}
