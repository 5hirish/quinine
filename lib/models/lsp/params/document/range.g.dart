// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Range _$$_RangeFromJson(Map<String, dynamic> json) => _$_Range(
      start: Position.fromJson(json['start'] as Map<String, dynamic>),
      end: Position.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RangeToJson(_$_Range instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$_Position _$$_PositionFromJson(Map<String, dynamic> json) => _$_Position(
      line: json['line'] as int,
      character: json['character'] as int,
    );

Map<String, dynamic> _$$_PositionToJson(_$_Position instance) =>
    <String, dynamic>{
      'line': instance.line,
      'character': instance.character,
    };
