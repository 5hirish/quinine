// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registrations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientRegistrations _$ClientRegistrationsFromJson(Map<String, dynamic> json) {
  return _ClientRegistrations.fromJson(json);
}

/// @nodoc
mixin _$ClientRegistrations {
  String get id => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  RegisterOptions? get registerOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientRegistrationsCopyWith<ClientRegistrations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientRegistrationsCopyWith<$Res> {
  factory $ClientRegistrationsCopyWith(
          ClientRegistrations value, $Res Function(ClientRegistrations) then) =
      _$ClientRegistrationsCopyWithImpl<$Res, ClientRegistrations>;
  @useResult
  $Res call({String id, String method, RegisterOptions? registerOptions});

  $RegisterOptionsCopyWith<$Res>? get registerOptions;
}

/// @nodoc
class _$ClientRegistrationsCopyWithImpl<$Res, $Val extends ClientRegistrations>
    implements $ClientRegistrationsCopyWith<$Res> {
  _$ClientRegistrationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? method = null,
    Object? registerOptions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      registerOptions: freezed == registerOptions
          ? _value.registerOptions
          : registerOptions // ignore: cast_nullable_to_non_nullable
              as RegisterOptions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterOptionsCopyWith<$Res>? get registerOptions {
    if (_value.registerOptions == null) {
      return null;
    }

    return $RegisterOptionsCopyWith<$Res>(_value.registerOptions!, (value) {
      return _then(_value.copyWith(registerOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClientRegistrationsCopyWith<$Res>
    implements $ClientRegistrationsCopyWith<$Res> {
  factory _$$_ClientRegistrationsCopyWith(_$_ClientRegistrations value,
          $Res Function(_$_ClientRegistrations) then) =
      __$$_ClientRegistrationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String method, RegisterOptions? registerOptions});

  @override
  $RegisterOptionsCopyWith<$Res>? get registerOptions;
}

/// @nodoc
class __$$_ClientRegistrationsCopyWithImpl<$Res>
    extends _$ClientRegistrationsCopyWithImpl<$Res, _$_ClientRegistrations>
    implements _$$_ClientRegistrationsCopyWith<$Res> {
  __$$_ClientRegistrationsCopyWithImpl(_$_ClientRegistrations _value,
      $Res Function(_$_ClientRegistrations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? method = null,
    Object? registerOptions = freezed,
  }) {
    return _then(_$_ClientRegistrations(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      registerOptions: freezed == registerOptions
          ? _value.registerOptions
          : registerOptions // ignore: cast_nullable_to_non_nullable
              as RegisterOptions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientRegistrations implements _ClientRegistrations {
  const _$_ClientRegistrations(
      {required this.id, required this.method, required this.registerOptions});

  factory _$_ClientRegistrations.fromJson(Map<String, dynamic> json) =>
      _$$_ClientRegistrationsFromJson(json);

  @override
  final String id;
  @override
  final String method;
  @override
  final RegisterOptions? registerOptions;

  @override
  String toString() {
    return 'ClientRegistrations(id: $id, method: $method, registerOptions: $registerOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientRegistrations &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.registerOptions, registerOptions) ||
                other.registerOptions == registerOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, method, registerOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientRegistrationsCopyWith<_$_ClientRegistrations> get copyWith =>
      __$$_ClientRegistrationsCopyWithImpl<_$_ClientRegistrations>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientRegistrationsToJson(
      this,
    );
  }
}

abstract class _ClientRegistrations implements ClientRegistrations {
  const factory _ClientRegistrations(
          {required final String id,
          required final String method,
          required final RegisterOptions? registerOptions}) =
      _$_ClientRegistrations;

  factory _ClientRegistrations.fromJson(Map<String, dynamic> json) =
      _$_ClientRegistrations.fromJson;

  @override
  String get id;
  @override
  String get method;
  @override
  RegisterOptions? get registerOptions;
  @override
  @JsonKey(ignore: true)
  _$$_ClientRegistrationsCopyWith<_$_ClientRegistrations> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterOptions _$RegisterOptionsFromJson(Map<String, dynamic> json) {
  return _RegisterOptions.fromJson(json);
}

/// @nodoc
mixin _$RegisterOptions {
  List<DocumentSelector> get documentSelector =>
      throw _privateConstructorUsedError;
  List<String> get codeActionKinds => throw _privateConstructorUsedError;
  int get syncKind => throw _privateConstructorUsedError;
  bool get resolveProvider => throw _privateConstructorUsedError;
  bool get prepareProvider => throw _privateConstructorUsedError;
  List<String> get triggerCharacters => throw _privateConstructorUsedError;
  List<String> get retriggerCharacters => throw _privateConstructorUsedError;
  String get firstTriggerCharacter => throw _privateConstructorUsedError;
  List<String> get moreTriggerCharacter => throw _privateConstructorUsedError;
  List<Filter> get filters => throw _privateConstructorUsedError;
  Full get full => throw _privateConstructorUsedError;
  Legend get legend => throw _privateConstructorUsedError;
  bool get range => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterOptionsCopyWith<RegisterOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterOptionsCopyWith<$Res> {
  factory $RegisterOptionsCopyWith(
          RegisterOptions value, $Res Function(RegisterOptions) then) =
      _$RegisterOptionsCopyWithImpl<$Res, RegisterOptions>;
  @useResult
  $Res call(
      {List<DocumentSelector> documentSelector,
      List<String> codeActionKinds,
      int syncKind,
      bool resolveProvider,
      bool prepareProvider,
      List<String> triggerCharacters,
      List<String> retriggerCharacters,
      String firstTriggerCharacter,
      List<String> moreTriggerCharacter,
      List<Filter> filters,
      Full full,
      Legend legend,
      bool range});

  $FullCopyWith<$Res> get full;
  $LegendCopyWith<$Res> get legend;
}

/// @nodoc
class _$RegisterOptionsCopyWithImpl<$Res, $Val extends RegisterOptions>
    implements $RegisterOptionsCopyWith<$Res> {
  _$RegisterOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentSelector = null,
    Object? codeActionKinds = null,
    Object? syncKind = null,
    Object? resolveProvider = null,
    Object? prepareProvider = null,
    Object? triggerCharacters = null,
    Object? retriggerCharacters = null,
    Object? firstTriggerCharacter = null,
    Object? moreTriggerCharacter = null,
    Object? filters = null,
    Object? full = null,
    Object? legend = null,
    Object? range = null,
  }) {
    return _then(_value.copyWith(
      documentSelector: null == documentSelector
          ? _value.documentSelector
          : documentSelector // ignore: cast_nullable_to_non_nullable
              as List<DocumentSelector>,
      codeActionKinds: null == codeActionKinds
          ? _value.codeActionKinds
          : codeActionKinds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      syncKind: null == syncKind
          ? _value.syncKind
          : syncKind // ignore: cast_nullable_to_non_nullable
              as int,
      resolveProvider: null == resolveProvider
          ? _value.resolveProvider
          : resolveProvider // ignore: cast_nullable_to_non_nullable
              as bool,
      prepareProvider: null == prepareProvider
          ? _value.prepareProvider
          : prepareProvider // ignore: cast_nullable_to_non_nullable
              as bool,
      triggerCharacters: null == triggerCharacters
          ? _value.triggerCharacters
          : triggerCharacters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      retriggerCharacters: null == retriggerCharacters
          ? _value.retriggerCharacters
          : retriggerCharacters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firstTriggerCharacter: null == firstTriggerCharacter
          ? _value.firstTriggerCharacter
          : firstTriggerCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      moreTriggerCharacter: null == moreTriggerCharacter
          ? _value.moreTriggerCharacter
          : moreTriggerCharacter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as Full,
      legend: null == legend
          ? _value.legend
          : legend // ignore: cast_nullable_to_non_nullable
              as Legend,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FullCopyWith<$Res> get full {
    return $FullCopyWith<$Res>(_value.full, (value) {
      return _then(_value.copyWith(full: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LegendCopyWith<$Res> get legend {
    return $LegendCopyWith<$Res>(_value.legend, (value) {
      return _then(_value.copyWith(legend: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterOptionsCopyWith<$Res>
    implements $RegisterOptionsCopyWith<$Res> {
  factory _$$_RegisterOptionsCopyWith(
          _$_RegisterOptions value, $Res Function(_$_RegisterOptions) then) =
      __$$_RegisterOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DocumentSelector> documentSelector,
      List<String> codeActionKinds,
      int syncKind,
      bool resolveProvider,
      bool prepareProvider,
      List<String> triggerCharacters,
      List<String> retriggerCharacters,
      String firstTriggerCharacter,
      List<String> moreTriggerCharacter,
      List<Filter> filters,
      Full full,
      Legend legend,
      bool range});

  @override
  $FullCopyWith<$Res> get full;
  @override
  $LegendCopyWith<$Res> get legend;
}

/// @nodoc
class __$$_RegisterOptionsCopyWithImpl<$Res>
    extends _$RegisterOptionsCopyWithImpl<$Res, _$_RegisterOptions>
    implements _$$_RegisterOptionsCopyWith<$Res> {
  __$$_RegisterOptionsCopyWithImpl(
      _$_RegisterOptions _value, $Res Function(_$_RegisterOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentSelector = null,
    Object? codeActionKinds = null,
    Object? syncKind = null,
    Object? resolveProvider = null,
    Object? prepareProvider = null,
    Object? triggerCharacters = null,
    Object? retriggerCharacters = null,
    Object? firstTriggerCharacter = null,
    Object? moreTriggerCharacter = null,
    Object? filters = null,
    Object? full = null,
    Object? legend = null,
    Object? range = null,
  }) {
    return _then(_$_RegisterOptions(
      documentSelector: null == documentSelector
          ? _value._documentSelector
          : documentSelector // ignore: cast_nullable_to_non_nullable
              as List<DocumentSelector>,
      codeActionKinds: null == codeActionKinds
          ? _value._codeActionKinds
          : codeActionKinds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      syncKind: null == syncKind
          ? _value.syncKind
          : syncKind // ignore: cast_nullable_to_non_nullable
              as int,
      resolveProvider: null == resolveProvider
          ? _value.resolveProvider
          : resolveProvider // ignore: cast_nullable_to_non_nullable
              as bool,
      prepareProvider: null == prepareProvider
          ? _value.prepareProvider
          : prepareProvider // ignore: cast_nullable_to_non_nullable
              as bool,
      triggerCharacters: null == triggerCharacters
          ? _value._triggerCharacters
          : triggerCharacters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      retriggerCharacters: null == retriggerCharacters
          ? _value._retriggerCharacters
          : retriggerCharacters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firstTriggerCharacter: null == firstTriggerCharacter
          ? _value.firstTriggerCharacter
          : firstTriggerCharacter // ignore: cast_nullable_to_non_nullable
              as String,
      moreTriggerCharacter: null == moreTriggerCharacter
          ? _value._moreTriggerCharacter
          : moreTriggerCharacter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as Full,
      legend: null == legend
          ? _value.legend
          : legend // ignore: cast_nullable_to_non_nullable
              as Legend,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterOptions implements _RegisterOptions {
  const _$_RegisterOptions(
      {required final List<DocumentSelector> documentSelector,
      required final List<String> codeActionKinds,
      required this.syncKind,
      required this.resolveProvider,
      required this.prepareProvider,
      required final List<String> triggerCharacters,
      required final List<String> retriggerCharacters,
      required this.firstTriggerCharacter,
      required final List<String> moreTriggerCharacter,
      required final List<Filter> filters,
      required this.full,
      required this.legend,
      required this.range})
      : _documentSelector = documentSelector,
        _codeActionKinds = codeActionKinds,
        _triggerCharacters = triggerCharacters,
        _retriggerCharacters = retriggerCharacters,
        _moreTriggerCharacter = moreTriggerCharacter,
        _filters = filters;

  factory _$_RegisterOptions.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterOptionsFromJson(json);

  final List<DocumentSelector> _documentSelector;
  @override
  List<DocumentSelector> get documentSelector {
    if (_documentSelector is EqualUnmodifiableListView)
      return _documentSelector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentSelector);
  }

  final List<String> _codeActionKinds;
  @override
  List<String> get codeActionKinds {
    if (_codeActionKinds is EqualUnmodifiableListView) return _codeActionKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codeActionKinds);
  }

  @override
  final int syncKind;
  @override
  final bool resolveProvider;
  @override
  final bool prepareProvider;
  final List<String> _triggerCharacters;
  @override
  List<String> get triggerCharacters {
    if (_triggerCharacters is EqualUnmodifiableListView)
      return _triggerCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_triggerCharacters);
  }

  final List<String> _retriggerCharacters;
  @override
  List<String> get retriggerCharacters {
    if (_retriggerCharacters is EqualUnmodifiableListView)
      return _retriggerCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_retriggerCharacters);
  }

  @override
  final String firstTriggerCharacter;
  final List<String> _moreTriggerCharacter;
  @override
  List<String> get moreTriggerCharacter {
    if (_moreTriggerCharacter is EqualUnmodifiableListView)
      return _moreTriggerCharacter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moreTriggerCharacter);
  }

  final List<Filter> _filters;
  @override
  List<Filter> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  final Full full;
  @override
  final Legend legend;
  @override
  final bool range;

  @override
  String toString() {
    return 'RegisterOptions(documentSelector: $documentSelector, codeActionKinds: $codeActionKinds, syncKind: $syncKind, resolveProvider: $resolveProvider, prepareProvider: $prepareProvider, triggerCharacters: $triggerCharacters, retriggerCharacters: $retriggerCharacters, firstTriggerCharacter: $firstTriggerCharacter, moreTriggerCharacter: $moreTriggerCharacter, filters: $filters, full: $full, legend: $legend, range: $range)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterOptions &&
            const DeepCollectionEquality()
                .equals(other._documentSelector, _documentSelector) &&
            const DeepCollectionEquality()
                .equals(other._codeActionKinds, _codeActionKinds) &&
            (identical(other.syncKind, syncKind) ||
                other.syncKind == syncKind) &&
            (identical(other.resolveProvider, resolveProvider) ||
                other.resolveProvider == resolveProvider) &&
            (identical(other.prepareProvider, prepareProvider) ||
                other.prepareProvider == prepareProvider) &&
            const DeepCollectionEquality()
                .equals(other._triggerCharacters, _triggerCharacters) &&
            const DeepCollectionEquality()
                .equals(other._retriggerCharacters, _retriggerCharacters) &&
            (identical(other.firstTriggerCharacter, firstTriggerCharacter) ||
                other.firstTriggerCharacter == firstTriggerCharacter) &&
            const DeepCollectionEquality()
                .equals(other._moreTriggerCharacter, _moreTriggerCharacter) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.legend, legend) || other.legend == legend) &&
            (identical(other.range, range) || other.range == range));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_documentSelector),
      const DeepCollectionEquality().hash(_codeActionKinds),
      syncKind,
      resolveProvider,
      prepareProvider,
      const DeepCollectionEquality().hash(_triggerCharacters),
      const DeepCollectionEquality().hash(_retriggerCharacters),
      firstTriggerCharacter,
      const DeepCollectionEquality().hash(_moreTriggerCharacter),
      const DeepCollectionEquality().hash(_filters),
      full,
      legend,
      range);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterOptionsCopyWith<_$_RegisterOptions> get copyWith =>
      __$$_RegisterOptionsCopyWithImpl<_$_RegisterOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterOptionsToJson(
      this,
    );
  }
}

abstract class _RegisterOptions implements RegisterOptions {
  const factory _RegisterOptions(
      {required final List<DocumentSelector> documentSelector,
      required final List<String> codeActionKinds,
      required final int syncKind,
      required final bool resolveProvider,
      required final bool prepareProvider,
      required final List<String> triggerCharacters,
      required final List<String> retriggerCharacters,
      required final String firstTriggerCharacter,
      required final List<String> moreTriggerCharacter,
      required final List<Filter> filters,
      required final Full full,
      required final Legend legend,
      required final bool range}) = _$_RegisterOptions;

  factory _RegisterOptions.fromJson(Map<String, dynamic> json) =
      _$_RegisterOptions.fromJson;

  @override
  List<DocumentSelector> get documentSelector;
  @override
  List<String> get codeActionKinds;
  @override
  int get syncKind;
  @override
  bool get resolveProvider;
  @override
  bool get prepareProvider;
  @override
  List<String> get triggerCharacters;
  @override
  List<String> get retriggerCharacters;
  @override
  String get firstTriggerCharacter;
  @override
  List<String> get moreTriggerCharacter;
  @override
  List<Filter> get filters;
  @override
  Full get full;
  @override
  Legend get legend;
  @override
  bool get range;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterOptionsCopyWith<_$_RegisterOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentSelector _$DocumentSelectorFromJson(Map<String, dynamic> json) {
  return _DocumentSelector.fromJson(json);
}

/// @nodoc
mixin _$DocumentSelector {
  String get language => throw _privateConstructorUsedError;
  String get scheme => throw _privateConstructorUsedError;
  String? get pattern => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentSelectorCopyWith<DocumentSelector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentSelectorCopyWith<$Res> {
  factory $DocumentSelectorCopyWith(
          DocumentSelector value, $Res Function(DocumentSelector) then) =
      _$DocumentSelectorCopyWithImpl<$Res, DocumentSelector>;
  @useResult
  $Res call({String language, String scheme, String? pattern});
}

/// @nodoc
class _$DocumentSelectorCopyWithImpl<$Res, $Val extends DocumentSelector>
    implements $DocumentSelectorCopyWith<$Res> {
  _$DocumentSelectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? scheme = null,
    Object? pattern = freezed,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentSelectorCopyWith<$Res>
    implements $DocumentSelectorCopyWith<$Res> {
  factory _$$_DocumentSelectorCopyWith(
          _$_DocumentSelector value, $Res Function(_$_DocumentSelector) then) =
      __$$_DocumentSelectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, String scheme, String? pattern});
}

/// @nodoc
class __$$_DocumentSelectorCopyWithImpl<$Res>
    extends _$DocumentSelectorCopyWithImpl<$Res, _$_DocumentSelector>
    implements _$$_DocumentSelectorCopyWith<$Res> {
  __$$_DocumentSelectorCopyWithImpl(
      _$_DocumentSelector _value, $Res Function(_$_DocumentSelector) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? scheme = null,
    Object? pattern = freezed,
  }) {
    return _then(_$_DocumentSelector(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: freezed == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentSelector implements _DocumentSelector {
  const _$_DocumentSelector(
      {required this.language, required this.scheme, this.pattern});

  factory _$_DocumentSelector.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentSelectorFromJson(json);

  @override
  final String language;
  @override
  final String scheme;
  @override
  final String? pattern;

  @override
  String toString() {
    return 'DocumentSelector(language: $language, scheme: $scheme, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentSelector &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, scheme, pattern);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentSelectorCopyWith<_$_DocumentSelector> get copyWith =>
      __$$_DocumentSelectorCopyWithImpl<_$_DocumentSelector>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentSelectorToJson(
      this,
    );
  }
}

abstract class _DocumentSelector implements DocumentSelector {
  const factory _DocumentSelector(
      {required final String language,
      required final String scheme,
      final String? pattern}) = _$_DocumentSelector;

  factory _DocumentSelector.fromJson(Map<String, dynamic> json) =
      _$_DocumentSelector.fromJson;

  @override
  String get language;
  @override
  String get scheme;
  @override
  String? get pattern;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentSelectorCopyWith<_$_DocumentSelector> get copyWith =>
      throw _privateConstructorUsedError;
}

Filter _$FilterFromJson(Map<String, dynamic> json) {
  return _Filter.fromJson(json);
}

/// @nodoc
mixin _$Filter {
  Pattern get pattern => throw _privateConstructorUsedError;
  String get scheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res, Filter>;
  @useResult
  $Res call({Pattern pattern, String scheme});

  $PatternCopyWith<$Res> get pattern;
}

/// @nodoc
class _$FilterCopyWithImpl<$Res, $Val extends Filter>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = null,
    Object? scheme = null,
  }) {
    return _then(_value.copyWith(
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as Pattern,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatternCopyWith<$Res> get pattern {
    return $PatternCopyWith<$Res>(_value.pattern, (value) {
      return _then(_value.copyWith(pattern: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$_FilterCopyWith(_$_Filter value, $Res Function(_$_Filter) then) =
      __$$_FilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pattern pattern, String scheme});

  @override
  $PatternCopyWith<$Res> get pattern;
}

/// @nodoc
class __$$_FilterCopyWithImpl<$Res>
    extends _$FilterCopyWithImpl<$Res, _$_Filter>
    implements _$$_FilterCopyWith<$Res> {
  __$$_FilterCopyWithImpl(_$_Filter _value, $Res Function(_$_Filter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pattern = null,
    Object? scheme = null,
  }) {
    return _then(_$_Filter(
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as Pattern,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Filter implements _Filter {
  const _$_Filter({required this.pattern, required this.scheme});

  factory _$_Filter.fromJson(Map<String, dynamic> json) =>
      _$$_FilterFromJson(json);

  @override
  final Pattern pattern;
  @override
  final String scheme;

  @override
  String toString() {
    return 'Filter(pattern: $pattern, scheme: $scheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filter &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.scheme, scheme) || other.scheme == scheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pattern, scheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      __$$_FilterCopyWithImpl<_$_Filter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterToJson(
      this,
    );
  }
}

abstract class _Filter implements Filter {
  const factory _Filter(
      {required final Pattern pattern,
      required final String scheme}) = _$_Filter;

  factory _Filter.fromJson(Map<String, dynamic> json) = _$_Filter.fromJson;

  @override
  Pattern get pattern;
  @override
  String get scheme;
  @override
  @JsonKey(ignore: true)
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      throw _privateConstructorUsedError;
}

Pattern _$PatternFromJson(Map<String, dynamic> json) {
  return _Pattern.fromJson(json);
}

/// @nodoc
mixin _$Pattern {
  String get glob => throw _privateConstructorUsedError;
  String get matches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatternCopyWith<Pattern> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatternCopyWith<$Res> {
  factory $PatternCopyWith(Pattern value, $Res Function(Pattern) then) =
      _$PatternCopyWithImpl<$Res, Pattern>;
  @useResult
  $Res call({String glob, String matches});
}

/// @nodoc
class _$PatternCopyWithImpl<$Res, $Val extends Pattern>
    implements $PatternCopyWith<$Res> {
  _$PatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? glob = null,
    Object? matches = null,
  }) {
    return _then(_value.copyWith(
      glob: null == glob
          ? _value.glob
          : glob // ignore: cast_nullable_to_non_nullable
              as String,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatternCopyWith<$Res> implements $PatternCopyWith<$Res> {
  factory _$$_PatternCopyWith(
          _$_Pattern value, $Res Function(_$_Pattern) then) =
      __$$_PatternCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String glob, String matches});
}

/// @nodoc
class __$$_PatternCopyWithImpl<$Res>
    extends _$PatternCopyWithImpl<$Res, _$_Pattern>
    implements _$$_PatternCopyWith<$Res> {
  __$$_PatternCopyWithImpl(_$_Pattern _value, $Res Function(_$_Pattern) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? glob = null,
    Object? matches = null,
  }) {
    return _then(_$_Pattern(
      glob: null == glob
          ? _value.glob
          : glob // ignore: cast_nullable_to_non_nullable
              as String,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pattern implements _Pattern {
  const _$_Pattern({required this.glob, required this.matches});

  factory _$_Pattern.fromJson(Map<String, dynamic> json) =>
      _$$_PatternFromJson(json);

  @override
  final String glob;
  @override
  final String matches;

  @override
  String toString() {
    return 'Pattern(glob: $glob, matches: $matches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pattern &&
            (identical(other.glob, glob) || other.glob == glob) &&
            (identical(other.matches, matches) || other.matches == matches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, glob, matches);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatternCopyWith<_$_Pattern> get copyWith =>
      __$$_PatternCopyWithImpl<_$_Pattern>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatternToJson(
      this,
    );
  }
}

abstract class _Pattern implements Pattern {
  const factory _Pattern(
      {required final String glob, required final String matches}) = _$_Pattern;

  factory _Pattern.fromJson(Map<String, dynamic> json) = _$_Pattern.fromJson;

  @override
  String get glob;
  @override
  String get matches;
  @override
  @JsonKey(ignore: true)
  _$$_PatternCopyWith<_$_Pattern> get copyWith =>
      throw _privateConstructorUsedError;
}

Full _$FullFromJson(Map<String, dynamic> json) {
  return _Full.fromJson(json);
}

/// @nodoc
mixin _$Full {
  bool get delta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullCopyWith<Full> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullCopyWith<$Res> {
  factory $FullCopyWith(Full value, $Res Function(Full) then) =
      _$FullCopyWithImpl<$Res, Full>;
  @useResult
  $Res call({bool delta});
}

/// @nodoc
class _$FullCopyWithImpl<$Res, $Val extends Full>
    implements $FullCopyWith<$Res> {
  _$FullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delta = null,
  }) {
    return _then(_value.copyWith(
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FullCopyWith<$Res> implements $FullCopyWith<$Res> {
  factory _$$_FullCopyWith(_$_Full value, $Res Function(_$_Full) then) =
      __$$_FullCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool delta});
}

/// @nodoc
class __$$_FullCopyWithImpl<$Res> extends _$FullCopyWithImpl<$Res, _$_Full>
    implements _$$_FullCopyWith<$Res> {
  __$$_FullCopyWithImpl(_$_Full _value, $Res Function(_$_Full) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delta = null,
  }) {
    return _then(_$_Full(
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Full implements _Full {
  const _$_Full({required this.delta});

  factory _$_Full.fromJson(Map<String, dynamic> json) => _$$_FullFromJson(json);

  @override
  final bool delta;

  @override
  String toString() {
    return 'Full(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Full &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, delta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullCopyWith<_$_Full> get copyWith =>
      __$$_FullCopyWithImpl<_$_Full>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FullToJson(
      this,
    );
  }
}

abstract class _Full implements Full {
  const factory _Full({required final bool delta}) = _$_Full;

  factory _Full.fromJson(Map<String, dynamic> json) = _$_Full.fromJson;

  @override
  bool get delta;
  @override
  @JsonKey(ignore: true)
  _$$_FullCopyWith<_$_Full> get copyWith => throw _privateConstructorUsedError;
}

Legend _$LegendFromJson(Map<String, dynamic> json) {
  return _Legend.fromJson(json);
}

/// @nodoc
mixin _$Legend {
  List<String> get tokenModifiers => throw _privateConstructorUsedError;
  List<String> get tokenTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegendCopyWith<Legend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegendCopyWith<$Res> {
  factory $LegendCopyWith(Legend value, $Res Function(Legend) then) =
      _$LegendCopyWithImpl<$Res, Legend>;
  @useResult
  $Res call({List<String> tokenModifiers, List<String> tokenTypes});
}

/// @nodoc
class _$LegendCopyWithImpl<$Res, $Val extends Legend>
    implements $LegendCopyWith<$Res> {
  _$LegendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenModifiers = null,
    Object? tokenTypes = null,
  }) {
    return _then(_value.copyWith(
      tokenModifiers: null == tokenModifiers
          ? _value.tokenModifiers
          : tokenModifiers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tokenTypes: null == tokenTypes
          ? _value.tokenTypes
          : tokenTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LegendCopyWith<$Res> implements $LegendCopyWith<$Res> {
  factory _$$_LegendCopyWith(_$_Legend value, $Res Function(_$_Legend) then) =
      __$$_LegendCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tokenModifiers, List<String> tokenTypes});
}

/// @nodoc
class __$$_LegendCopyWithImpl<$Res>
    extends _$LegendCopyWithImpl<$Res, _$_Legend>
    implements _$$_LegendCopyWith<$Res> {
  __$$_LegendCopyWithImpl(_$_Legend _value, $Res Function(_$_Legend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenModifiers = null,
    Object? tokenTypes = null,
  }) {
    return _then(_$_Legend(
      tokenModifiers: null == tokenModifiers
          ? _value._tokenModifiers
          : tokenModifiers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tokenTypes: null == tokenTypes
          ? _value._tokenTypes
          : tokenTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Legend implements _Legend {
  const _$_Legend(
      {required final List<String> tokenModifiers,
      required final List<String> tokenTypes})
      : _tokenModifiers = tokenModifiers,
        _tokenTypes = tokenTypes;

  factory _$_Legend.fromJson(Map<String, dynamic> json) =>
      _$$_LegendFromJson(json);

  final List<String> _tokenModifiers;
  @override
  List<String> get tokenModifiers {
    if (_tokenModifiers is EqualUnmodifiableListView) return _tokenModifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenModifiers);
  }

  final List<String> _tokenTypes;
  @override
  List<String> get tokenTypes {
    if (_tokenTypes is EqualUnmodifiableListView) return _tokenTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenTypes);
  }

  @override
  String toString() {
    return 'Legend(tokenModifiers: $tokenModifiers, tokenTypes: $tokenTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Legend &&
            const DeepCollectionEquality()
                .equals(other._tokenModifiers, _tokenModifiers) &&
            const DeepCollectionEquality()
                .equals(other._tokenTypes, _tokenTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokenModifiers),
      const DeepCollectionEquality().hash(_tokenTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LegendCopyWith<_$_Legend> get copyWith =>
      __$$_LegendCopyWithImpl<_$_Legend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegendToJson(
      this,
    );
  }
}

abstract class _Legend implements Legend {
  const factory _Legend(
      {required final List<String> tokenModifiers,
      required final List<String> tokenTypes}) = _$_Legend;

  factory _Legend.fromJson(Map<String, dynamic> json) = _$_Legend.fromJson;

  @override
  List<String> get tokenModifiers;
  @override
  List<String> get tokenTypes;
  @override
  @JsonKey(ignore: true)
  _$$_LegendCopyWith<_$_Legend> get copyWith =>
      throw _privateConstructorUsedError;
}
