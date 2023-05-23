// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initialize.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Initialize _$InitializeFromJson(Map<String, dynamic> json) {
  return _Initialize.fromJson(json);
}

/// @nodoc
mixin _$Initialize {
  int get processId =>
      throw _privateConstructorUsedError; // process Id of parent process that started the server
  ClientInfo? get clientInfo =>
      throw _privateConstructorUsedError; // Information about the client
  String? get locale =>
      throw _privateConstructorUsedError; // Uses IETF language tags as the value's syntax
  String? get trace =>
      throw _privateConstructorUsedError; // The initial trace setting
  Map<String, dynamic> get capabilities => throw _privateConstructorUsedError;
  InitializationOptions? get initializationOptions =>
      throw _privateConstructorUsedError;
  List<WorkspaceFolder>? get workspaceFolder =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializeCopyWith<Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res, Initialize>;
  @useResult
  $Res call(
      {int processId,
      ClientInfo? clientInfo,
      String? locale,
      String? trace,
      Map<String, dynamic> capabilities,
      InitializationOptions? initializationOptions,
      List<WorkspaceFolder>? workspaceFolder});

  $ClientInfoCopyWith<$Res>? get clientInfo;
  $InitializationOptionsCopyWith<$Res>? get initializationOptions;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res, $Val extends Initialize>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processId = null,
    Object? clientInfo = freezed,
    Object? locale = freezed,
    Object? trace = freezed,
    Object? capabilities = null,
    Object? initializationOptions = freezed,
    Object? workspaceFolder = freezed,
  }) {
    return _then(_value.copyWith(
      processId: null == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as int,
      clientInfo: freezed == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as ClientInfo?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      trace: freezed == trace
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: null == capabilities
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      initializationOptions: freezed == initializationOptions
          ? _value.initializationOptions
          : initializationOptions // ignore: cast_nullable_to_non_nullable
              as InitializationOptions?,
      workspaceFolder: freezed == workspaceFolder
          ? _value.workspaceFolder
          : workspaceFolder // ignore: cast_nullable_to_non_nullable
              as List<WorkspaceFolder>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientInfoCopyWith<$Res>? get clientInfo {
    if (_value.clientInfo == null) {
      return null;
    }

    return $ClientInfoCopyWith<$Res>(_value.clientInfo!, (value) {
      return _then(_value.copyWith(clientInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InitializationOptionsCopyWith<$Res>? get initializationOptions {
    if (_value.initializationOptions == null) {
      return null;
    }

    return $InitializationOptionsCopyWith<$Res>(_value.initializationOptions!,
        (value) {
      return _then(_value.copyWith(initializationOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res>
    implements $InitializeCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int processId,
      ClientInfo? clientInfo,
      String? locale,
      String? trace,
      Map<String, dynamic> capabilities,
      InitializationOptions? initializationOptions,
      List<WorkspaceFolder>? workspaceFolder});

  @override
  $ClientInfoCopyWith<$Res>? get clientInfo;
  @override
  $InitializationOptionsCopyWith<$Res>? get initializationOptions;
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$InitializeCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processId = null,
    Object? clientInfo = freezed,
    Object? locale = freezed,
    Object? trace = freezed,
    Object? capabilities = null,
    Object? initializationOptions = freezed,
    Object? workspaceFolder = freezed,
  }) {
    return _then(_$_Initialize(
      processId: null == processId
          ? _value.processId
          : processId // ignore: cast_nullable_to_non_nullable
              as int,
      clientInfo: freezed == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as ClientInfo?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      trace: freezed == trace
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: null == capabilities
          ? _value._capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      initializationOptions: freezed == initializationOptions
          ? _value.initializationOptions
          : initializationOptions // ignore: cast_nullable_to_non_nullable
              as InitializationOptions?,
      workspaceFolder: freezed == workspaceFolder
          ? _value._workspaceFolder
          : workspaceFolder // ignore: cast_nullable_to_non_nullable
              as List<WorkspaceFolder>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Initialize implements _Initialize {
  const _$_Initialize(
      {required this.processId,
      required this.clientInfo,
      required this.locale,
      required this.trace,
      required final Map<String, dynamic> capabilities,
      this.initializationOptions,
      final List<WorkspaceFolder>? workspaceFolder})
      : _capabilities = capabilities,
        _workspaceFolder = workspaceFolder;

  factory _$_Initialize.fromJson(Map<String, dynamic> json) =>
      _$$_InitializeFromJson(json);

  @override
  final int processId;
// process Id of parent process that started the server
  @override
  final ClientInfo? clientInfo;
// Information about the client
  @override
  final String? locale;
// Uses IETF language tags as the value's syntax
  @override
  final String? trace;
// The initial trace setting
  final Map<String, dynamic> _capabilities;
// The initial trace setting
  @override
  Map<String, dynamic> get capabilities {
    if (_capabilities is EqualUnmodifiableMapView) return _capabilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_capabilities);
  }

  @override
  final InitializationOptions? initializationOptions;
  final List<WorkspaceFolder>? _workspaceFolder;
  @override
  List<WorkspaceFolder>? get workspaceFolder {
    final value = _workspaceFolder;
    if (value == null) return null;
    if (_workspaceFolder is EqualUnmodifiableListView) return _workspaceFolder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Initialize(processId: $processId, clientInfo: $clientInfo, locale: $locale, trace: $trace, capabilities: $capabilities, initializationOptions: $initializationOptions, workspaceFolder: $workspaceFolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialize &&
            (identical(other.processId, processId) ||
                other.processId == processId) &&
            (identical(other.clientInfo, clientInfo) ||
                other.clientInfo == clientInfo) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.trace, trace) || other.trace == trace) &&
            const DeepCollectionEquality()
                .equals(other._capabilities, _capabilities) &&
            (identical(other.initializationOptions, initializationOptions) ||
                other.initializationOptions == initializationOptions) &&
            const DeepCollectionEquality()
                .equals(other._workspaceFolder, _workspaceFolder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      processId,
      clientInfo,
      locale,
      trace,
      const DeepCollectionEquality().hash(_capabilities),
      initializationOptions,
      const DeepCollectionEquality().hash(_workspaceFolder));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      __$$_InitializeCopyWithImpl<_$_Initialize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitializeToJson(
      this,
    );
  }
}

abstract class _Initialize implements Initialize {
  const factory _Initialize(
      {required final int processId,
      required final ClientInfo? clientInfo,
      required final String? locale,
      required final String? trace,
      required final Map<String, dynamic> capabilities,
      final InitializationOptions? initializationOptions,
      final List<WorkspaceFolder>? workspaceFolder}) = _$_Initialize;

  factory _Initialize.fromJson(Map<String, dynamic> json) =
      _$_Initialize.fromJson;

  @override
  int get processId;
  @override // process Id of parent process that started the server
  ClientInfo? get clientInfo;
  @override // Information about the client
  String? get locale;
  @override // Uses IETF language tags as the value's syntax
  String? get trace;
  @override // The initial trace setting
  Map<String, dynamic> get capabilities;
  @override
  InitializationOptions? get initializationOptions;
  @override
  List<WorkspaceFolder>? get workspaceFolder;
  @override
  @JsonKey(ignore: true)
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}
