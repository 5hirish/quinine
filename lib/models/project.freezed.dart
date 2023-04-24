// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectLocal {
  String get directoryPath => throw _privateConstructorUsedError;
  Directory? get directory => throw _privateConstructorUsedError;
  Map<String, List<FileSystemEntity>>? get projectFiles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectLocalCopyWith<ProjectLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectLocalCopyWith<$Res> {
  factory $ProjectLocalCopyWith(
          ProjectLocal value, $Res Function(ProjectLocal) then) =
      _$ProjectLocalCopyWithImpl<$Res, ProjectLocal>;
  @useResult
  $Res call(
      {String directoryPath,
      Directory? directory,
      Map<String, List<FileSystemEntity>>? projectFiles});
}

/// @nodoc
class _$ProjectLocalCopyWithImpl<$Res, $Val extends ProjectLocal>
    implements $ProjectLocalCopyWith<$Res> {
  _$ProjectLocalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directoryPath = null,
    Object? directory = freezed,
    Object? projectFiles = freezed,
  }) {
    return _then(_value.copyWith(
      directoryPath: null == directoryPath
          ? _value.directoryPath
          : directoryPath // ignore: cast_nullable_to_non_nullable
              as String,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory?,
      projectFiles: freezed == projectFiles
          ? _value.projectFiles
          : projectFiles // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FileSystemEntity>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectLocalCopyWith<$Res>
    implements $ProjectLocalCopyWith<$Res> {
  factory _$$_ProjectLocalCopyWith(
          _$_ProjectLocal value, $Res Function(_$_ProjectLocal) then) =
      __$$_ProjectLocalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String directoryPath,
      Directory? directory,
      Map<String, List<FileSystemEntity>>? projectFiles});
}

/// @nodoc
class __$$_ProjectLocalCopyWithImpl<$Res>
    extends _$ProjectLocalCopyWithImpl<$Res, _$_ProjectLocal>
    implements _$$_ProjectLocalCopyWith<$Res> {
  __$$_ProjectLocalCopyWithImpl(
      _$_ProjectLocal _value, $Res Function(_$_ProjectLocal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directoryPath = null,
    Object? directory = freezed,
    Object? projectFiles = freezed,
  }) {
    return _then(_$_ProjectLocal(
      directoryPath: null == directoryPath
          ? _value.directoryPath
          : directoryPath // ignore: cast_nullable_to_non_nullable
              as String,
      directory: freezed == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as Directory?,
      projectFiles: freezed == projectFiles
          ? _value._projectFiles
          : projectFiles // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FileSystemEntity>>?,
    ));
  }
}

/// @nodoc

class _$_ProjectLocal implements _ProjectLocal {
  const _$_ProjectLocal(
      {required this.directoryPath,
      this.directory,
      final Map<String, List<FileSystemEntity>>? projectFiles})
      : _projectFiles = projectFiles;

  @override
  final String directoryPath;
  @override
  final Directory? directory;
  final Map<String, List<FileSystemEntity>>? _projectFiles;
  @override
  Map<String, List<FileSystemEntity>>? get projectFiles {
    final value = _projectFiles;
    if (value == null) return null;
    if (_projectFiles is EqualUnmodifiableMapView) return _projectFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProjectLocal(directoryPath: $directoryPath, directory: $directory, projectFiles: $projectFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectLocal &&
            (identical(other.directoryPath, directoryPath) ||
                other.directoryPath == directoryPath) &&
            (identical(other.directory, directory) ||
                other.directory == directory) &&
            const DeepCollectionEquality()
                .equals(other._projectFiles, _projectFiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, directoryPath, directory,
      const DeepCollectionEquality().hash(_projectFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectLocalCopyWith<_$_ProjectLocal> get copyWith =>
      __$$_ProjectLocalCopyWithImpl<_$_ProjectLocal>(this, _$identity);
}

abstract class _ProjectLocal implements ProjectLocal {
  const factory _ProjectLocal(
          {required final String directoryPath,
          final Directory? directory,
          final Map<String, List<FileSystemEntity>>? projectFiles}) =
      _$_ProjectLocal;

  @override
  String get directoryPath;
  @override
  Directory? get directory;
  @override
  Map<String, List<FileSystemEntity>>? get projectFiles;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectLocalCopyWith<_$_ProjectLocal> get copyWith =>
      throw _privateConstructorUsedError;
}
