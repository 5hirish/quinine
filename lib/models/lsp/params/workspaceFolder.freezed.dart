// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workspaceFolder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkspaceFolder _$WorkspaceFolderFromJson(Map<String, dynamic> json) {
  return _WorkspaceFolder.fromJson(json);
}

/// @nodoc
mixin _$WorkspaceFolder {
  Uri get uri => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkspaceFolderCopyWith<WorkspaceFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkspaceFolderCopyWith<$Res> {
  factory $WorkspaceFolderCopyWith(
          WorkspaceFolder value, $Res Function(WorkspaceFolder) then) =
      _$WorkspaceFolderCopyWithImpl<$Res, WorkspaceFolder>;
  @useResult
  $Res call({Uri uri, String name});
}

/// @nodoc
class _$WorkspaceFolderCopyWithImpl<$Res, $Val extends WorkspaceFolder>
    implements $WorkspaceFolderCopyWith<$Res> {
  _$WorkspaceFolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkspaceFolderCopyWith<$Res>
    implements $WorkspaceFolderCopyWith<$Res> {
  factory _$$_WorkspaceFolderCopyWith(
          _$_WorkspaceFolder value, $Res Function(_$_WorkspaceFolder) then) =
      __$$_WorkspaceFolderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri uri, String name});
}

/// @nodoc
class __$$_WorkspaceFolderCopyWithImpl<$Res>
    extends _$WorkspaceFolderCopyWithImpl<$Res, _$_WorkspaceFolder>
    implements _$$_WorkspaceFolderCopyWith<$Res> {
  __$$_WorkspaceFolderCopyWithImpl(
      _$_WorkspaceFolder _value, $Res Function(_$_WorkspaceFolder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? name = null,
  }) {
    return _then(_$_WorkspaceFolder(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkspaceFolder implements _WorkspaceFolder {
  const _$_WorkspaceFolder({required this.uri, required this.name});

  factory _$_WorkspaceFolder.fromJson(Map<String, dynamic> json) =>
      _$$_WorkspaceFolderFromJson(json);

  @override
  final Uri uri;
  @override
  final String name;

  @override
  String toString() {
    return 'WorkspaceFolder(uri: $uri, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkspaceFolder &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkspaceFolderCopyWith<_$_WorkspaceFolder> get copyWith =>
      __$$_WorkspaceFolderCopyWithImpl<_$_WorkspaceFolder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkspaceFolderToJson(
      this,
    );
  }
}

abstract class _WorkspaceFolder implements WorkspaceFolder {
  const factory _WorkspaceFolder(
      {required final Uri uri,
      required final String name}) = _$_WorkspaceFolder;

  factory _WorkspaceFolder.fromJson(Map<String, dynamic> json) =
      _$_WorkspaceFolder.fromJson;

  @override
  Uri get uri;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_WorkspaceFolderCopyWith<_$_WorkspaceFolder> get copyWith =>
      throw _privateConstructorUsedError;
}
