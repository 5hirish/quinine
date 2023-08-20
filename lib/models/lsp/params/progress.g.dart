// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Progress _$$_ProgressFromJson(Map<String, dynamic> json) => _$_Progress(
      kind: json['kind'] as String,
      title: json['title'] as String,
      boolean: json['boolean'] as bool?,
      message: json['message'] as String?,
      percentage: json['percentage'] as int?,
    );

Map<String, dynamic> _$$_ProgressToJson(_$_Progress instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'title': instance.title,
      'boolean': instance.boolean,
      'message': instance.message,
      'percentage': instance.percentage,
    };
