import 'package:freezed_annotation/freezed_annotation.dart';

part 'clientInfo.g.dart';
part 'clientInfo.freezed.dart';

@freezed
class ClientInfo with _$ClientInfo {
  const factory ClientInfo({
    required String name,
    required String? version,
  }) = _ClientInfo;

  factory ClientInfo.fromJson(Map<String, dynamic> json) =>
      _$ClientInfoFromJson(json);
}
