// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textDocItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextDocItem _$TextDocItemFromJson(Map<String, dynamic> json) {
  return _TextDocItem.fromJson(json);
}

/// @nodoc
mixin _$TextDocItem {
  String get uri => throw _privateConstructorUsedError;
  String get languageId => throw _privateConstructorUsedError;
  int get version =>
      throw _privateConstructorUsedError; // The version number of this document
// (it will increase after each change, including undo/redo).
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextDocItemCopyWith<TextDocItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextDocItemCopyWith<$Res> {
  factory $TextDocItemCopyWith(
          TextDocItem value, $Res Function(TextDocItem) then) =
      _$TextDocItemCopyWithImpl<$Res, TextDocItem>;
  @useResult
  $Res call({String uri, String languageId, int version, String text});
}

/// @nodoc
class _$TextDocItemCopyWithImpl<$Res, $Val extends TextDocItem>
    implements $TextDocItemCopyWith<$Res> {
  _$TextDocItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? languageId = null,
    Object? version = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextDocItemCopyWith<$Res>
    implements $TextDocItemCopyWith<$Res> {
  factory _$$_TextDocItemCopyWith(
          _$_TextDocItem value, $Res Function(_$_TextDocItem) then) =
      __$$_TextDocItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, String languageId, int version, String text});
}

/// @nodoc
class __$$_TextDocItemCopyWithImpl<$Res>
    extends _$TextDocItemCopyWithImpl<$Res, _$_TextDocItem>
    implements _$$_TextDocItemCopyWith<$Res> {
  __$$_TextDocItemCopyWithImpl(
      _$_TextDocItem _value, $Res Function(_$_TextDocItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? languageId = null,
    Object? version = null,
    Object? text = null,
  }) {
    return _then(_$_TextDocItem(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextDocItem implements _TextDocItem {
  const _$_TextDocItem(
      {required this.uri,
      required this.languageId,
      required this.version,
      required this.text});

  factory _$_TextDocItem.fromJson(Map<String, dynamic> json) =>
      _$$_TextDocItemFromJson(json);

  @override
  final String uri;
  @override
  final String languageId;
  @override
  final int version;
// The version number of this document
// (it will increase after each change, including undo/redo).
  @override
  final String text;

  @override
  String toString() {
    return 'TextDocItem(uri: $uri, languageId: $languageId, version: $version, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextDocItem &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, languageId, version, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextDocItemCopyWith<_$_TextDocItem> get copyWith =>
      __$$_TextDocItemCopyWithImpl<_$_TextDocItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextDocItemToJson(
      this,
    );
  }
}

abstract class _TextDocItem implements TextDocItem {
  const factory _TextDocItem(
      {required final String uri,
      required final String languageId,
      required final int version,
      required final String text}) = _$_TextDocItem;

  factory _TextDocItem.fromJson(Map<String, dynamic> json) =
      _$_TextDocItem.fromJson;

  @override
  String get uri;
  @override
  String get languageId;
  @override
  int get version;
  @override // The version number of this document
// (it will increase after each change, including undo/redo).
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_TextDocItemCopyWith<_$_TextDocItem> get copyWith =>
      throw _privateConstructorUsedError;
}
