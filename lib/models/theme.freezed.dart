// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoreTheme {
  ThemeMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreThemeCopyWith<CoreTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreThemeCopyWith<$Res> {
  factory $CoreThemeCopyWith(CoreTheme value, $Res Function(CoreTheme) then) =
      _$CoreThemeCopyWithImpl<$Res, CoreTheme>;
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class _$CoreThemeCopyWithImpl<$Res, $Val extends CoreTheme>
    implements $CoreThemeCopyWith<$Res> {
  _$CoreThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoreThemeCopyWith<$Res> implements $CoreThemeCopyWith<$Res> {
  factory _$$_CoreThemeCopyWith(
          _$_CoreTheme value, $Res Function(_$_CoreTheme) then) =
      __$$_CoreThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$$_CoreThemeCopyWithImpl<$Res>
    extends _$CoreThemeCopyWithImpl<$Res, _$_CoreTheme>
    implements _$$_CoreThemeCopyWith<$Res> {
  __$$_CoreThemeCopyWithImpl(
      _$_CoreTheme _value, $Res Function(_$_CoreTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$_CoreTheme(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_CoreTheme implements _CoreTheme {
  const _$_CoreTheme({required this.mode});

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'CoreTheme(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreTheme &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoreThemeCopyWith<_$_CoreTheme> get copyWith =>
      __$$_CoreThemeCopyWithImpl<_$_CoreTheme>(this, _$identity);
}

abstract class _CoreTheme implements CoreTheme {
  const factory _CoreTheme({required final ThemeMode mode}) = _$_CoreTheme;

  @override
  ThemeMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$_CoreThemeCopyWith<_$_CoreTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoreCodeTheme {
  Map<String, TextStyle> get style => throw _privateConstructorUsedError;
  String? get fontFamily => throw _privateConstructorUsedError;
  double? get fontSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreCodeThemeCopyWith<CoreCodeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreCodeThemeCopyWith<$Res> {
  factory $CoreCodeThemeCopyWith(
          CoreCodeTheme value, $Res Function(CoreCodeTheme) then) =
      _$CoreCodeThemeCopyWithImpl<$Res, CoreCodeTheme>;
  @useResult
  $Res call(
      {Map<String, TextStyle> style, String? fontFamily, double? fontSize});
}

/// @nodoc
class _$CoreCodeThemeCopyWithImpl<$Res, $Val extends CoreCodeTheme>
    implements $CoreCodeThemeCopyWith<$Res> {
  _$CoreCodeThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? fontFamily = freezed,
    Object? fontSize = freezed,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as Map<String, TextStyle>,
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoreCodeThemeCopyWith<$Res>
    implements $CoreCodeThemeCopyWith<$Res> {
  factory _$$_CoreCodeThemeCopyWith(
          _$_CoreCodeTheme value, $Res Function(_$_CoreCodeTheme) then) =
      __$$_CoreCodeThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, TextStyle> style, String? fontFamily, double? fontSize});
}

/// @nodoc
class __$$_CoreCodeThemeCopyWithImpl<$Res>
    extends _$CoreCodeThemeCopyWithImpl<$Res, _$_CoreCodeTheme>
    implements _$$_CoreCodeThemeCopyWith<$Res> {
  __$$_CoreCodeThemeCopyWithImpl(
      _$_CoreCodeTheme _value, $Res Function(_$_CoreCodeTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? fontFamily = freezed,
    Object? fontSize = freezed,
  }) {
    return _then(_$_CoreCodeTheme(
      style: null == style
          ? _value._style
          : style // ignore: cast_nullable_to_non_nullable
              as Map<String, TextStyle>,
      fontFamily: freezed == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_CoreCodeTheme implements _CoreCodeTheme {
  const _$_CoreCodeTheme(
      {required final Map<String, TextStyle> style,
      required this.fontFamily,
      required this.fontSize})
      : _style = style;

  final Map<String, TextStyle> _style;
  @override
  Map<String, TextStyle> get style {
    if (_style is EqualUnmodifiableMapView) return _style;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_style);
  }

  @override
  final String? fontFamily;
  @override
  final double? fontSize;

  @override
  String toString() {
    return 'CoreCodeTheme(style: $style, fontFamily: $fontFamily, fontSize: $fontSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreCodeTheme &&
            const DeepCollectionEquality().equals(other._style, _style) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_style), fontFamily, fontSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoreCodeThemeCopyWith<_$_CoreCodeTheme> get copyWith =>
      __$$_CoreCodeThemeCopyWithImpl<_$_CoreCodeTheme>(this, _$identity);
}

abstract class _CoreCodeTheme implements CoreCodeTheme {
  const factory _CoreCodeTheme(
      {required final Map<String, TextStyle> style,
      required final String? fontFamily,
      required final double? fontSize}) = _$_CoreCodeTheme;

  @override
  Map<String, TextStyle> get style;
  @override
  String? get fontFamily;
  @override
  double? get fontSize;
  @override
  @JsonKey(ignore: true)
  _$$_CoreCodeThemeCopyWith<_$_CoreCodeTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
