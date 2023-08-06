// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InAppNotification _$InAppNotificationFromJson(Map<String, dynamic> json) {
  return _InAppNotification.fromJson(json);
}

/// @nodoc
mixin _$InAppNotification {
  String get description => throw _privateConstructorUsedError;
  LogLevel get logLevel => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get firedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InAppNotificationCopyWith<InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppNotificationCopyWith<$Res> {
  factory $InAppNotificationCopyWith(
          InAppNotification value, $Res Function(InAppNotification) then) =
      _$InAppNotificationCopyWithImpl<$Res, InAppNotification>;
  @useResult
  $Res call(
      {String description,
      LogLevel logLevel,
      int code,
      String? title,
      DateTime? firedAt});
}

/// @nodoc
class _$InAppNotificationCopyWithImpl<$Res, $Val extends InAppNotification>
    implements $InAppNotificationCopyWith<$Res> {
  _$InAppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? logLevel = null,
    Object? code = null,
    Object? title = freezed,
    Object? firedAt = freezed,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logLevel: null == logLevel
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      firedAt: freezed == firedAt
          ? _value.firedAt
          : firedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InAppNotificationCopyWith<$Res>
    implements $InAppNotificationCopyWith<$Res> {
  factory _$$_InAppNotificationCopyWith(_$_InAppNotification value,
          $Res Function(_$_InAppNotification) then) =
      __$$_InAppNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      LogLevel logLevel,
      int code,
      String? title,
      DateTime? firedAt});
}

/// @nodoc
class __$$_InAppNotificationCopyWithImpl<$Res>
    extends _$InAppNotificationCopyWithImpl<$Res, _$_InAppNotification>
    implements _$$_InAppNotificationCopyWith<$Res> {
  __$$_InAppNotificationCopyWithImpl(
      _$_InAppNotification _value, $Res Function(_$_InAppNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? logLevel = null,
    Object? code = null,
    Object? title = freezed,
    Object? firedAt = freezed,
  }) {
    return _then(_$_InAppNotification(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logLevel: null == logLevel
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      firedAt: freezed == firedAt
          ? _value.firedAt
          : firedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InAppNotification implements _InAppNotification {
  const _$_InAppNotification(
      {required this.description,
      required this.logLevel,
      required this.code,
      this.title,
      this.firedAt});

  factory _$_InAppNotification.fromJson(Map<String, dynamic> json) =>
      _$$_InAppNotificationFromJson(json);

  @override
  final String description;
  @override
  final LogLevel logLevel;
  @override
  final int code;
  @override
  final String? title;
  @override
  final DateTime? firedAt;

  @override
  String toString() {
    return 'InAppNotification(description: $description, logLevel: $logLevel, code: $code, title: $title, firedAt: $firedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InAppNotification &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logLevel, logLevel) ||
                other.logLevel == logLevel) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firedAt, firedAt) || other.firedAt == firedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, logLevel, code, title, firedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InAppNotificationCopyWith<_$_InAppNotification> get copyWith =>
      __$$_InAppNotificationCopyWithImpl<_$_InAppNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InAppNotificationToJson(
      this,
    );
  }
}

abstract class _InAppNotification implements InAppNotification {
  const factory _InAppNotification(
      {required final String description,
      required final LogLevel logLevel,
      required final int code,
      final String? title,
      final DateTime? firedAt}) = _$_InAppNotification;

  factory _InAppNotification.fromJson(Map<String, dynamic> json) =
      _$_InAppNotification.fromJson;

  @override
  String get description;
  @override
  LogLevel get logLevel;
  @override
  int get code;
  @override
  String? get title;
  @override
  DateTime? get firedAt;
  @override
  @JsonKey(ignore: true)
  _$$_InAppNotificationCopyWith<_$_InAppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
