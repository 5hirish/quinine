// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Progress _$ProgressFromJson(Map<String, dynamic> json) {
  return _Progress.fromJson(json);
}

/// @nodoc
mixin _$Progress {
  String get kind => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool? get boolean => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressCopyWith<Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressCopyWith<$Res> {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) then) =
      _$ProgressCopyWithImpl<$Res, Progress>;
  @useResult
  $Res call(
      {String kind,
      String title,
      bool? boolean,
      String? message,
      int? percentage});
}

/// @nodoc
class _$ProgressCopyWithImpl<$Res, $Val extends Progress>
    implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? title = null,
    Object? boolean = freezed,
    Object? message = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      boolean: freezed == boolean
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgressCopyWith<$Res> implements $ProgressCopyWith<$Res> {
  factory _$$_ProgressCopyWith(
          _$_Progress value, $Res Function(_$_Progress) then) =
      __$$_ProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String title,
      bool? boolean,
      String? message,
      int? percentage});
}

/// @nodoc
class __$$_ProgressCopyWithImpl<$Res>
    extends _$ProgressCopyWithImpl<$Res, _$_Progress>
    implements _$$_ProgressCopyWith<$Res> {
  __$$_ProgressCopyWithImpl(
      _$_Progress _value, $Res Function(_$_Progress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? title = null,
    Object? boolean = freezed,
    Object? message = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$_Progress(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      boolean: freezed == boolean
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Progress implements _Progress {
  const _$_Progress(
      {required this.kind,
      required this.title,
      this.boolean,
      this.message,
      this.percentage});

  factory _$_Progress.fromJson(Map<String, dynamic> json) =>
      _$$_ProgressFromJson(json);

  @override
  final String kind;
  @override
  final String title;
  @override
  final bool? boolean;
  @override
  final String? message;
  @override
  final int? percentage;

  @override
  String toString() {
    return 'Progress(kind: $kind, title: $title, boolean: $boolean, message: $message, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Progress &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.boolean, boolean) || other.boolean == boolean) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kind, title, boolean, message, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressCopyWith<_$_Progress> get copyWith =>
      __$$_ProgressCopyWithImpl<_$_Progress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgressToJson(
      this,
    );
  }
}

abstract class _Progress implements Progress {
  const factory _Progress(
      {required final String kind,
      required final String title,
      final bool? boolean,
      final String? message,
      final int? percentage}) = _$_Progress;

  factory _Progress.fromJson(Map<String, dynamic> json) = _$_Progress.fromJson;

  @override
  String get kind;
  @override
  String get title;
  @override
  bool? get boolean;
  @override
  String? get message;
  @override
  int? get percentage;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressCopyWith<_$_Progress> get copyWith =>
      throw _privateConstructorUsedError;
}
