// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InAppNotification _$$_InAppNotificationFromJson(Map<String, dynamic> json) =>
    _$_InAppNotification(
      description: json['description'] as String,
      logLevel: $enumDecode(_$LogLevelEnumMap, json['logLevel']),
      code: json['code'] as int,
      title: json['title'] as String?,
      firedAt: json['firedAt'] == null
          ? null
          : DateTime.parse(json['firedAt'] as String),
    );

Map<String, dynamic> _$$_InAppNotificationToJson(
        _$_InAppNotification instance) =>
    <String, dynamic>{
      'description': instance.description,
      'logLevel': _$LogLevelEnumMap[instance.logLevel]!,
      'code': instance.code,
      'title': instance.title,
      'firedAt': instance.firedAt?.toIso8601String(),
    };

const _$LogLevelEnumMap = {
  LogLevel.none: 'none',
  LogLevel.fatal: 'fatal',
  LogLevel.error: 'error',
  LogLevel.warning: 'warning',
  LogLevel.info: 'info',
  LogLevel.debug: 'debug',
  LogLevel.trace: 'trace',
};
