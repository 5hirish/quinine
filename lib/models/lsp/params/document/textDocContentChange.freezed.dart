// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textDocContentChange.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextDocContentChange _$TextDocContentChangeFromJson(Map<String, dynamic> json) {
  return _TextDocContentChange.fromJson(json);
}

/// @nodoc
mixin _$TextDocContentChange {
  Range? get range => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDocContentChangeCopyWith<TextDocContentChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDocContentChangeCopyWith<$Res> {
  factory $TextDocContentChangeCopyWith(TextDocContentChange value,
          $Res Function(TextDocContentChange) then) =
      _$TextDocContentChangeCopyWithImpl<$Res, TextDocContentChange>;
  @useResult
  $Res call({Range? range, String text});

  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class _$TextDocContentChangeCopyWithImpl<$Res,
        $Val extends TextDocContentChange>
    implements $TextDocContentChangeCopyWith<$Res> {
  _$TextDocContentChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = freezed,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TextDocContentChangeCopyWith<$Res>
    implements $TextDocContentChangeCopyWith<$Res> {
  factory _$$_TextDocContentChangeCopyWith(_$_TextDocContentChange value,
          $Res Function(_$_TextDocContentChange) then) =
      __$$_TextDocContentChangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Range? range, String text});

  @override
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class __$$_TextDocContentChangeCopyWithImpl<$Res>
    extends _$TextDocContentChangeCopyWithImpl<$Res, _$_TextDocContentChange>
    implements _$$_TextDocContentChangeCopyWith<$Res> {
  __$$_TextDocContentChangeCopyWithImpl(_$_TextDocContentChange _value,
      $Res Function(_$_TextDocContentChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = freezed,
    Object? text = null,
  }) {
    return _then(_$_TextDocContentChange(
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextDocContentChange implements _TextDocContentChange {
  const _$_TextDocContentChange({this.range, required this.text});

  factory _$_TextDocContentChange.fromJson(Map<String, dynamic> json) =>
      _$$_TextDocContentChangeFromJson(json);

  @override
  final Range? range;
  @override
  final String text;

  @override
  String toString() {
    return 'TextDocContentChange(range: $range, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextDocContentChange &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, range, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextDocContentChangeCopyWith<_$_TextDocContentChange> get copyWith =>
      __$$_TextDocContentChangeCopyWithImpl<_$_TextDocContentChange>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextDocContentChangeToJson(
      this,
    );
  }
}

abstract class _TextDocContentChange implements TextDocContentChange {
  const factory _TextDocContentChange(
      {final Range? range,
      required final String text}) = _$_TextDocContentChange;

  factory _TextDocContentChange.fromJson(Map<String, dynamic> json) =
      _$_TextDocContentChange.fromJson;

  @override
  Range? get range;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_TextDocContentChangeCopyWith<_$_TextDocContentChange> get copyWith =>
      throw _privateConstructorUsedError;
}
