// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textDocContentChange.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextDocContentChange _$$_TextDocContentChangeFromJson(
        Map<String, dynamic> json) =>
    _$_TextDocContentChange(
      range: json['range'] == null
          ? null
          : Range.fromJson(json['range'] as Map<String, dynamic>),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_TextDocContentChangeToJson(
        _$_TextDocContentChange instance) =>
    <String, dynamic>{
      'range': instance.range,
      'text': instance.text,
    };
