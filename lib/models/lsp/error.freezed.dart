// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LSPError _$LSPErrorFromJson(Map<String, dynamic> json) {
  return _LSPError.fromJson(json);
}

/// @nodoc
mixin _$LSPError {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LSPErrorCopyWith<LSPError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LSPErrorCopyWith<$Res> {
  factory $LSPErrorCopyWith(LSPError value, $Res Function(LSPError) then) =
      _$LSPErrorCopyWithImpl<$Res, LSPError>;
  @useResult
  $Res call({int code, String message, dynamic data});
}

/// @nodoc
class _$LSPErrorCopyWithImpl<$Res, $Val extends LSPError>
    implements $LSPErrorCopyWith<$Res> {
  _$LSPErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LSPErrorCopyWith<$Res> implements $LSPErrorCopyWith<$Res> {
  factory _$$_LSPErrorCopyWith(
          _$_LSPError value, $Res Function(_$_LSPError) then) =
      __$$_LSPErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, dynamic data});
}

/// @nodoc
class __$$_LSPErrorCopyWithImpl<$Res>
    extends _$LSPErrorCopyWithImpl<$Res, _$_LSPError>
    implements _$$_LSPErrorCopyWith<$Res> {
  __$$_LSPErrorCopyWithImpl(
      _$_LSPError _value, $Res Function(_$_LSPError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$_LSPError(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LSPError implements _LSPError {
  const _$_LSPError(
      {required this.code, required this.message, required this.data});

  factory _$_LSPError.fromJson(Map<String, dynamic> json) =>
      _$$_LSPErrorFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'LSPError(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LSPError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LSPErrorCopyWith<_$_LSPError> get copyWith =>
      __$$_LSPErrorCopyWithImpl<_$_LSPError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LSPErrorToJson(
      this,
    );
  }
}

abstract class _LSPError implements LSPError {
  const factory _LSPError(
      {required final int code,
      required final String message,
      required final dynamic data}) = _$_LSPError;

  factory _LSPError.fromJson(Map<String, dynamic> json) = _$_LSPError.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_LSPErrorCopyWith<_$_LSPError> get copyWith =>
      throw _privateConstructorUsedError;
}
