// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'versionedTextDocId.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionedTextDocId _$VersionedTextDocIdFromJson(Map<String, dynamic> json) {
  return _VersionedTextDocId.fromJson(json);
}

/// @nodoc
mixin _$VersionedTextDocId {
  String get uri => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionedTextDocIdCopyWith<VersionedTextDocId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionedTextDocIdCopyWith<$Res> {
  factory $VersionedTextDocIdCopyWith(
          VersionedTextDocId value, $Res Function(VersionedTextDocId) then) =
      _$VersionedTextDocIdCopyWithImpl<$Res, VersionedTextDocId>;
  @useResult
  $Res call({String uri, int version});
}

/// @nodoc
class _$VersionedTextDocIdCopyWithImpl<$Res, $Val extends VersionedTextDocId>
    implements $VersionedTextDocIdCopyWith<$Res> {
  _$VersionedTextDocIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionedTextDocIdCopyWith<$Res>
    implements $VersionedTextDocIdCopyWith<$Res> {
  factory _$$_VersionedTextDocIdCopyWith(_$_VersionedTextDocId value,
          $Res Function(_$_VersionedTextDocId) then) =
      __$$_VersionedTextDocIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, int version});
}

/// @nodoc
class __$$_VersionedTextDocIdCopyWithImpl<$Res>
    extends _$VersionedTextDocIdCopyWithImpl<$Res, _$_VersionedTextDocId>
    implements _$$_VersionedTextDocIdCopyWith<$Res> {
  __$$_VersionedTextDocIdCopyWithImpl(
      _$_VersionedTextDocId _value, $Res Function(_$_VersionedTextDocId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? version = null,
  }) {
    return _then(_$_VersionedTextDocId(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionedTextDocId implements _VersionedTextDocId {
  const _$_VersionedTextDocId({required this.uri, required this.version});

  factory _$_VersionedTextDocId.fromJson(Map<String, dynamic> json) =>
      _$$_VersionedTextDocIdFromJson(json);

  @override
  final String uri;
  @override
  final int version;

  @override
  String toString() {
    return 'VersionedTextDocId(uri: $uri, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionedTextDocId &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionedTextDocIdCopyWith<_$_VersionedTextDocId> get copyWith =>
      __$$_VersionedTextDocIdCopyWithImpl<_$_VersionedTextDocId>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionedTextDocIdToJson(
      this,
    );
  }
}

abstract class _VersionedTextDocId implements VersionedTextDocId {
  const factory _VersionedTextDocId(
      {required final String uri,
      required final int version}) = _$_VersionedTextDocId;

  factory _VersionedTextDocId.fromJson(Map<String, dynamic> json) =
      _$_VersionedTextDocId.fromJson;

  @override
  String get uri;
  @override
  int get version;
  @override
  @JsonKey(ignore: true)
  _$$_VersionedTextDocIdCopyWith<_$_VersionedTextDocId> get copyWith =>
      throw _privateConstructorUsedError;
}
