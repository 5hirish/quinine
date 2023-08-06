// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textDocItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextDocItem _$$_TextDocItemFromJson(Map<String, dynamic> json) =>
    _$_TextDocItem(
      uri: json['uri'] as String,
      languageId: json['languageId'] as String,
      version: json['version'] as int,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_TextDocItemToJson(_$_TextDocItem instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'languageId': instance.languageId,
      'version': instance.version,
      'text': instance.text,
    };
