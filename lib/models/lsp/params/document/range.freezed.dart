// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Range _$RangeFromJson(Map<String, dynamic> json) {
  return _Range.fromJson(json);
}

/// @nodoc
mixin _$Range {
  Position get start => throw _privateConstructorUsedError;
  Position get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RangeCopyWith<Range> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) then) =
      _$RangeCopyWithImpl<$Res, Range>;
  @useResult
  $Res call({Position start, Position end});

  $PositionCopyWith<$Res> get start;
  $PositionCopyWith<$Res> get end;
}

/// @nodoc
class _$RangeCopyWithImpl<$Res, $Val extends Range>
    implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Position,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Position,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get start {
    return $PositionCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res> get end {
    return $PositionCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RangeCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$$_RangeCopyWith(_$_Range value, $Res Function(_$_Range) then) =
      __$$_RangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position start, Position end});

  @override
  $PositionCopyWith<$Res> get start;
  @override
  $PositionCopyWith<$Res> get end;
}

/// @nodoc
class __$$_RangeCopyWithImpl<$Res> extends _$RangeCopyWithImpl<$Res, _$_Range>
    implements _$$_RangeCopyWith<$Res> {
  __$$_RangeCopyWithImpl(_$_Range _value, $Res Function(_$_Range) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_Range(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Position,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Range implements _Range {
  const _$_Range({required this.start, required this.end});

  factory _$_Range.fromJson(Map<String, dynamic> json) =>
      _$$_RangeFromJson(json);

  @override
  final Position start;
  @override
  final Position end;

  @override
  String toString() {
    return 'Range(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Range &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RangeCopyWith<_$_Range> get copyWith =>
      __$$_RangeCopyWithImpl<_$_Range>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RangeToJson(
      this,
    );
  }
}

abstract class _Range implements Range {
  const factory _Range(
      {required final Position start, required final Position end}) = _$_Range;

  factory _Range.fromJson(Map<String, dynamic> json) = _$_Range.fromJson;

  @override
  Position get start;
  @override
  Position get end;
  @override
  @JsonKey(ignore: true)
  _$$_RangeCopyWith<_$_Range> get copyWith =>
      throw _privateConstructorUsedError;
}

Position _$PositionFromJson(Map<String, dynamic> json) {
  return _Position.fromJson(json);
}

/// @nodoc
mixin _$Position {
  int get line =>
      throw _privateConstructorUsedError; // Line position in a document (zero-based).
  int get character => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({int line, int character});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? character = null,
  }) {
    return _then(_value.copyWith(
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$$_PositionCopyWith(
          _$_Position value, $Res Function(_$_Position) then) =
      __$$_PositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int line, int character});
}

/// @nodoc
class __$$_PositionCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$_Position>
    implements _$$_PositionCopyWith<$Res> {
  __$$_PositionCopyWithImpl(
      _$_Position _value, $Res Function(_$_Position) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? line = null,
    Object? character = null,
  }) {
    return _then(_$_Position(
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Position implements _Position {
  const _$_Position({required this.line, required this.character});

  factory _$_Position.fromJson(Map<String, dynamic> json) =>
      _$$_PositionFromJson(json);

  @override
  final int line;
// Line position in a document (zero-based).
  @override
  final int character;

  @override
  String toString() {
    return 'Position(line: $line, character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Position &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, line, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      __$$_PositionCopyWithImpl<_$_Position>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionToJson(
      this,
    );
  }
}

abstract class _Position implements Position {
  const factory _Position(
      {required final int line, required final int character}) = _$_Position;

  factory _Position.fromJson(Map<String, dynamic> json) = _$_Position.fromJson;

  @override
  int get line;
  @override // Line position in a document (zero-based).
  int get character;
  @override
  @JsonKey(ignore: true)
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      throw _privateConstructorUsedError;
}
