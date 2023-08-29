// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capabilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerCapabilities _$ServerCapabilitiesFromJson(Map<String, dynamic> json) {
  return _ServerCapabilities.fromJson(json);
}

/// @nodoc
mixin _$ServerCapabilities {
  ExecuteCommandProvider get executeCommandProvider =>
      throw _privateConstructorUsedError;
  Workspace get workspace => throw _privateConstructorUsedError;
  bool get workspaceSymbolProvider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCapabilitiesCopyWith<ServerCapabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCapabilitiesCopyWith<$Res> {
  factory $ServerCapabilitiesCopyWith(
          ServerCapabilities value, $Res Function(ServerCapabilities) then) =
      _$ServerCapabilitiesCopyWithImpl<$Res, ServerCapabilities>;
  @useResult
  $Res call(
      {ExecuteCommandProvider executeCommandProvider,
      Workspace workspace,
      bool workspaceSymbolProvider});

  $ExecuteCommandProviderCopyWith<$Res> get executeCommandProvider;
  $WorkspaceCopyWith<$Res> get workspace;
}

/// @nodoc
class _$ServerCapabilitiesCopyWithImpl<$Res, $Val extends ServerCapabilities>
    implements $ServerCapabilitiesCopyWith<$Res> {
  _$ServerCapabilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executeCommandProvider = null,
    Object? workspace = null,
    Object? workspaceSymbolProvider = null,
  }) {
    return _then(_value.copyWith(
      executeCommandProvider: null == executeCommandProvider
          ? _value.executeCommandProvider
          : executeCommandProvider // ignore: cast_nullable_to_non_nullable
              as ExecuteCommandProvider,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as Workspace,
      workspaceSymbolProvider: null == workspaceSymbolProvider
          ? _value.workspaceSymbolProvider
          : workspaceSymbolProvider // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExecuteCommandProviderCopyWith<$Res> get executeCommandProvider {
    return $ExecuteCommandProviderCopyWith<$Res>(_value.executeCommandProvider,
        (value) {
      return _then(_value.copyWith(executeCommandProvider: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkspaceCopyWith<$Res> get workspace {
    return $WorkspaceCopyWith<$Res>(_value.workspace, (value) {
      return _then(_value.copyWith(workspace: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServerCapabilitiesCopyWith<$Res>
    implements $ServerCapabilitiesCopyWith<$Res> {
  factory _$$_ServerCapabilitiesCopyWith(_$_ServerCapabilities value,
          $Res Function(_$_ServerCapabilities) then) =
      __$$_ServerCapabilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExecuteCommandProvider executeCommandProvider,
      Workspace workspace,
      bool workspaceSymbolProvider});

  @override
  $ExecuteCommandProviderCopyWith<$Res> get executeCommandProvider;
  @override
  $WorkspaceCopyWith<$Res> get workspace;
}

/// @nodoc
class __$$_ServerCapabilitiesCopyWithImpl<$Res>
    extends _$ServerCapabilitiesCopyWithImpl<$Res, _$_ServerCapabilities>
    implements _$$_ServerCapabilitiesCopyWith<$Res> {
  __$$_ServerCapabilitiesCopyWithImpl(
      _$_ServerCapabilities _value, $Res Function(_$_ServerCapabilities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executeCommandProvider = null,
    Object? workspace = null,
    Object? workspaceSymbolProvider = null,
  }) {
    return _then(_$_ServerCapabilities(
      executeCommandProvider: null == executeCommandProvider
          ? _value.executeCommandProvider
          : executeCommandProvider // ignore: cast_nullable_to_non_nullable
              as ExecuteCommandProvider,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as Workspace,
      workspaceSymbolProvider: null == workspaceSymbolProvider
          ? _value.workspaceSymbolProvider
          : workspaceSymbolProvider // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerCapabilities implements _ServerCapabilities {
  const _$_ServerCapabilities(
      {required this.executeCommandProvider,
      required this.workspace,
      required this.workspaceSymbolProvider});

  factory _$_ServerCapabilities.fromJson(Map<String, dynamic> json) =>
      _$$_ServerCapabilitiesFromJson(json);

  @override
  final ExecuteCommandProvider executeCommandProvider;
  @override
  final Workspace workspace;
  @override
  final bool workspaceSymbolProvider;

  @override
  String toString() {
    return 'ServerCapabilities(executeCommandProvider: $executeCommandProvider, workspace: $workspace, workspaceSymbolProvider: $workspaceSymbolProvider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerCapabilities &&
            (identical(other.executeCommandProvider, executeCommandProvider) ||
                other.executeCommandProvider == executeCommandProvider) &&
            (identical(other.workspace, workspace) ||
                other.workspace == workspace) &&
            (identical(
                    other.workspaceSymbolProvider, workspaceSymbolProvider) ||
                other.workspaceSymbolProvider == workspaceSymbolProvider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, executeCommandProvider, workspace, workspaceSymbolProvider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCapabilitiesCopyWith<_$_ServerCapabilities> get copyWith =>
      __$$_ServerCapabilitiesCopyWithImpl<_$_ServerCapabilities>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerCapabilitiesToJson(
      this,
    );
  }
}

abstract class _ServerCapabilities implements ServerCapabilities {
  const factory _ServerCapabilities(
      {required final ExecuteCommandProvider executeCommandProvider,
      required final Workspace workspace,
      required final bool workspaceSymbolProvider}) = _$_ServerCapabilities;

  factory _ServerCapabilities.fromJson(Map<String, dynamic> json) =
      _$_ServerCapabilities.fromJson;

  @override
  ExecuteCommandProvider get executeCommandProvider;
  @override
  Workspace get workspace;
  @override
  bool get workspaceSymbolProvider;
  @override
  @JsonKey(ignore: true)
  _$$_ServerCapabilitiesCopyWith<_$_ServerCapabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

ExecuteCommandProvider _$ExecuteCommandProviderFromJson(
    Map<String, dynamic> json) {
  return _ExecuteCommandProvider.fromJson(json);
}

/// @nodoc
mixin _$ExecuteCommandProvider {
  List<String> get commands => throw _privateConstructorUsedError;
  bool get workDoneProgress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExecuteCommandProviderCopyWith<ExecuteCommandProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecuteCommandProviderCopyWith<$Res> {
  factory $ExecuteCommandProviderCopyWith(ExecuteCommandProvider value,
          $Res Function(ExecuteCommandProvider) then) =
      _$ExecuteCommandProviderCopyWithImpl<$Res, ExecuteCommandProvider>;
  @useResult
  $Res call({List<String> commands, bool workDoneProgress});
}

/// @nodoc
class _$ExecuteCommandProviderCopyWithImpl<$Res,
        $Val extends ExecuteCommandProvider>
    implements $ExecuteCommandProviderCopyWith<$Res> {
  _$ExecuteCommandProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commands = null,
    Object? workDoneProgress = null,
  }) {
    return _then(_value.copyWith(
      commands: null == commands
          ? _value.commands
          : commands // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workDoneProgress: null == workDoneProgress
          ? _value.workDoneProgress
          : workDoneProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExecuteCommandProviderCopyWith<$Res>
    implements $ExecuteCommandProviderCopyWith<$Res> {
  factory _$$_ExecuteCommandProviderCopyWith(_$_ExecuteCommandProvider value,
          $Res Function(_$_ExecuteCommandProvider) then) =
      __$$_ExecuteCommandProviderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> commands, bool workDoneProgress});
}

/// @nodoc
class __$$_ExecuteCommandProviderCopyWithImpl<$Res>
    extends _$ExecuteCommandProviderCopyWithImpl<$Res,
        _$_ExecuteCommandProvider>
    implements _$$_ExecuteCommandProviderCopyWith<$Res> {
  __$$_ExecuteCommandProviderCopyWithImpl(_$_ExecuteCommandProvider _value,
      $Res Function(_$_ExecuteCommandProvider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commands = null,
    Object? workDoneProgress = null,
  }) {
    return _then(_$_ExecuteCommandProvider(
      commands: null == commands
          ? _value._commands
          : commands // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workDoneProgress: null == workDoneProgress
          ? _value.workDoneProgress
          : workDoneProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExecuteCommandProvider implements _ExecuteCommandProvider {
  const _$_ExecuteCommandProvider(
      {required final List<String> commands, required this.workDoneProgress})
      : _commands = commands;

  factory _$_ExecuteCommandProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ExecuteCommandProviderFromJson(json);

  final List<String> _commands;
  @override
  List<String> get commands {
    if (_commands is EqualUnmodifiableListView) return _commands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commands);
  }

  @override
  final bool workDoneProgress;

  @override
  String toString() {
    return 'ExecuteCommandProvider(commands: $commands, workDoneProgress: $workDoneProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExecuteCommandProvider &&
            const DeepCollectionEquality().equals(other._commands, _commands) &&
            (identical(other.workDoneProgress, workDoneProgress) ||
                other.workDoneProgress == workDoneProgress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_commands), workDoneProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExecuteCommandProviderCopyWith<_$_ExecuteCommandProvider> get copyWith =>
      __$$_ExecuteCommandProviderCopyWithImpl<_$_ExecuteCommandProvider>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExecuteCommandProviderToJson(
      this,
    );
  }
}

abstract class _ExecuteCommandProvider implements ExecuteCommandProvider {
  const factory _ExecuteCommandProvider(
      {required final List<String> commands,
      required final bool workDoneProgress}) = _$_ExecuteCommandProvider;

  factory _ExecuteCommandProvider.fromJson(Map<String, dynamic> json) =
      _$_ExecuteCommandProvider.fromJson;

  @override
  List<String> get commands;
  @override
  bool get workDoneProgress;
  @override
  @JsonKey(ignore: true)
  _$$_ExecuteCommandProviderCopyWith<_$_ExecuteCommandProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) {
  return _Workspace.fromJson(json);
}

/// @nodoc
mixin _$Workspace {
  WorkspaceFolders get workspaceFolders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkspaceCopyWith<Workspace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkspaceCopyWith<$Res> {
  factory $WorkspaceCopyWith(Workspace value, $Res Function(Workspace) then) =
      _$WorkspaceCopyWithImpl<$Res, Workspace>;
  @useResult
  $Res call({WorkspaceFolders workspaceFolders});

  $WorkspaceFoldersCopyWith<$Res> get workspaceFolders;
}

/// @nodoc
class _$WorkspaceCopyWithImpl<$Res, $Val extends Workspace>
    implements $WorkspaceCopyWith<$Res> {
  _$WorkspaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workspaceFolders = null,
  }) {
    return _then(_value.copyWith(
      workspaceFolders: null == workspaceFolders
          ? _value.workspaceFolders
          : workspaceFolders // ignore: cast_nullable_to_non_nullable
              as WorkspaceFolders,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkspaceFoldersCopyWith<$Res> get workspaceFolders {
    return $WorkspaceFoldersCopyWith<$Res>(_value.workspaceFolders, (value) {
      return _then(_value.copyWith(workspaceFolders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WorkspaceCopyWith<$Res> implements $WorkspaceCopyWith<$Res> {
  factory _$$_WorkspaceCopyWith(
          _$_Workspace value, $Res Function(_$_Workspace) then) =
      __$$_WorkspaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WorkspaceFolders workspaceFolders});

  @override
  $WorkspaceFoldersCopyWith<$Res> get workspaceFolders;
}

/// @nodoc
class __$$_WorkspaceCopyWithImpl<$Res>
    extends _$WorkspaceCopyWithImpl<$Res, _$_Workspace>
    implements _$$_WorkspaceCopyWith<$Res> {
  __$$_WorkspaceCopyWithImpl(
      _$_Workspace _value, $Res Function(_$_Workspace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workspaceFolders = null,
  }) {
    return _then(_$_Workspace(
      workspaceFolders: null == workspaceFolders
          ? _value.workspaceFolders
          : workspaceFolders // ignore: cast_nullable_to_non_nullable
              as WorkspaceFolders,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Workspace implements _Workspace {
  const _$_Workspace({required this.workspaceFolders});

  factory _$_Workspace.fromJson(Map<String, dynamic> json) =>
      _$$_WorkspaceFromJson(json);

  @override
  final WorkspaceFolders workspaceFolders;

  @override
  String toString() {
    return 'Workspace(workspaceFolders: $workspaceFolders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workspace &&
            (identical(other.workspaceFolders, workspaceFolders) ||
                other.workspaceFolders == workspaceFolders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workspaceFolders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkspaceCopyWith<_$_Workspace> get copyWith =>
      __$$_WorkspaceCopyWithImpl<_$_Workspace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkspaceToJson(
      this,
    );
  }
}

abstract class _Workspace implements Workspace {
  const factory _Workspace({required final WorkspaceFolders workspaceFolders}) =
      _$_Workspace;

  factory _Workspace.fromJson(Map<String, dynamic> json) =
      _$_Workspace.fromJson;

  @override
  WorkspaceFolders get workspaceFolders;
  @override
  @JsonKey(ignore: true)
  _$$_WorkspaceCopyWith<_$_Workspace> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkspaceFolders _$WorkspaceFoldersFromJson(Map<String, dynamic> json) {
  return _WorkspaceFolders.fromJson(json);
}

/// @nodoc
mixin _$WorkspaceFolders {
  bool get changeNotifications => throw _privateConstructorUsedError;
  bool get supported => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkspaceFoldersCopyWith<WorkspaceFolders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkspaceFoldersCopyWith<$Res> {
  factory $WorkspaceFoldersCopyWith(
          WorkspaceFolders value, $Res Function(WorkspaceFolders) then) =
      _$WorkspaceFoldersCopyWithImpl<$Res, WorkspaceFolders>;
  @useResult
  $Res call({bool changeNotifications, bool supported});
}

/// @nodoc
class _$WorkspaceFoldersCopyWithImpl<$Res, $Val extends WorkspaceFolders>
    implements $WorkspaceFoldersCopyWith<$Res> {
  _$WorkspaceFoldersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeNotifications = null,
    Object? supported = null,
  }) {
    return _then(_value.copyWith(
      changeNotifications: null == changeNotifications
          ? _value.changeNotifications
          : changeNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      supported: null == supported
          ? _value.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkspaceFoldersCopyWith<$Res>
    implements $WorkspaceFoldersCopyWith<$Res> {
  factory _$$_WorkspaceFoldersCopyWith(
          _$_WorkspaceFolders value, $Res Function(_$_WorkspaceFolders) then) =
      __$$_WorkspaceFoldersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool changeNotifications, bool supported});
}

/// @nodoc
class __$$_WorkspaceFoldersCopyWithImpl<$Res>
    extends _$WorkspaceFoldersCopyWithImpl<$Res, _$_WorkspaceFolders>
    implements _$$_WorkspaceFoldersCopyWith<$Res> {
  __$$_WorkspaceFoldersCopyWithImpl(
      _$_WorkspaceFolders _value, $Res Function(_$_WorkspaceFolders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeNotifications = null,
    Object? supported = null,
  }) {
    return _then(_$_WorkspaceFolders(
      changeNotifications: null == changeNotifications
          ? _value.changeNotifications
          : changeNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      supported: null == supported
          ? _value.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkspaceFolders implements _WorkspaceFolders {
  const _$_WorkspaceFolders(
      {required this.changeNotifications, required this.supported});

  factory _$_WorkspaceFolders.fromJson(Map<String, dynamic> json) =>
      _$$_WorkspaceFoldersFromJson(json);

  @override
  final bool changeNotifications;
  @override
  final bool supported;

  @override
  String toString() {
    return 'WorkspaceFolders(changeNotifications: $changeNotifications, supported: $supported)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkspaceFolders &&
            (identical(other.changeNotifications, changeNotifications) ||
                other.changeNotifications == changeNotifications) &&
            (identical(other.supported, supported) ||
                other.supported == supported));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, changeNotifications, supported);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkspaceFoldersCopyWith<_$_WorkspaceFolders> get copyWith =>
      __$$_WorkspaceFoldersCopyWithImpl<_$_WorkspaceFolders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkspaceFoldersToJson(
      this,
    );
  }
}

abstract class _WorkspaceFolders implements WorkspaceFolders {
  const factory _WorkspaceFolders(
      {required final bool changeNotifications,
      required final bool supported}) = _$_WorkspaceFolders;

  factory _WorkspaceFolders.fromJson(Map<String, dynamic> json) =
      _$_WorkspaceFolders.fromJson;

  @override
  bool get changeNotifications;
  @override
  bool get supported;
  @override
  @JsonKey(ignore: true)
  _$$_WorkspaceFoldersCopyWith<_$_WorkspaceFolders> get copyWith =>
      throw _privateConstructorUsedError;
}
