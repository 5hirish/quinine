// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CodeText {
  String get fullText => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeTextCopyWith<CodeText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeTextCopyWith<$Res> {
  factory $CodeTextCopyWith(CodeText value, $Res Function(CodeText) then) =
      _$CodeTextCopyWithImpl<$Res, CodeText>;
  @useResult
  $Res call({String fullText, String language, String filePath});
}

/// @nodoc
class _$CodeTextCopyWithImpl<$Res, $Val extends CodeText>
    implements $CodeTextCopyWith<$Res> {
  _$CodeTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? language = null,
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeTextCopyWith<$Res> implements $CodeTextCopyWith<$Res> {
  factory _$$_CodeTextCopyWith(
          _$_CodeText value, $Res Function(_$_CodeText) then) =
      __$$_CodeTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullText, String language, String filePath});
}

/// @nodoc
class __$$_CodeTextCopyWithImpl<$Res>
    extends _$CodeTextCopyWithImpl<$Res, _$_CodeText>
    implements _$$_CodeTextCopyWith<$Res> {
  __$$_CodeTextCopyWithImpl(
      _$_CodeText _value, $Res Function(_$_CodeText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullText = null,
    Object? language = null,
    Object? filePath = null,
  }) {
    return _then(_$_CodeText(
      fullText: null == fullText
          ? _value.fullText
          : fullText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeText implements _CodeText {
  const _$_CodeText(
      {required this.fullText, required this.language, required this.filePath});

  @override
  final String fullText;
  @override
  final String language;
  @override
  final String filePath;

  @override
  String toString() {
    return 'CodeText(fullText: $fullText, language: $language, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeText &&
            (identical(other.fullText, fullText) ||
                other.fullText == fullText) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullText, language, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeTextCopyWith<_$_CodeText> get copyWith =>
      __$$_CodeTextCopyWithImpl<_$_CodeText>(this, _$identity);
}

abstract class _CodeText implements CodeText {
  const factory _CodeText(
      {required final String fullText,
      required final String language,
      required final String filePath}) = _$_CodeText;

  @override
  String get fullText;
  @override
  String get language;
  @override
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_CodeTextCopyWith<_$_CodeText> get copyWith =>
      throw _privateConstructorUsedError;
}
