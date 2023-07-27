// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LSPError _$$_LSPErrorFromJson(Map<String, dynamic> json) => _$_LSPError(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$_LSPErrorToJson(_$_LSPError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
