import 'package:freezed_annotation/freezed_annotation.dart';

import 'configurationItem.dart';

part 'configuration.g.dart';
part 'configuration.freezed.dart';

@freezed
class Configuration with _$Configuration {
  const factory Configuration({
    required List<ConfigurationItem> items,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);
}
