// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
