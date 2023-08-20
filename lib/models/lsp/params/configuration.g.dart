// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Configuration _$$_ConfigurationFromJson(Map<String, dynamic> json) =>
    _$_Configuration(
      items: (json['items'] as List<dynamic>)
          .map((e) => ConfigurationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConfigurationToJson(_$_Configuration instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
