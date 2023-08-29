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

ClientCapabilities _$ClientCapabilitiesFromJson(Map<String, dynamic> json) {
  return _ClientCapabilities.fromJson(json);
}

/// @nodoc
mixin _$ClientCapabilities {
  List<ClientRegistrations>? get unregisterations =>
      throw _privateConstructorUsedError;
  List<ClientRegistrations>? get registrations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCapabilitiesCopyWith<ClientCapabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCapabilitiesCopyWith<$Res> {
  factory $ClientCapabilitiesCopyWith(
          ClientCapabilities value, $Res Function(ClientCapabilities) then) =
      _$ClientCapabilitiesCopyWithImpl<$Res, ClientCapabilities>;
  @useResult
  $Res call(
      {List<ClientRegistrations>? unregisterations,
      List<ClientRegistrations>? registrations});
}

/// @nodoc
class _$ClientCapabilitiesCopyWithImpl<$Res, $Val extends ClientCapabilities>
    implements $ClientCapabilitiesCopyWith<$Res> {
  _$ClientCapabilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unregisterations = freezed,
    Object? registrations = freezed,
  }) {
    return _then(_value.copyWith(
      unregisterations: freezed == unregisterations
          ? _value.unregisterations
          : unregisterations // ignore: cast_nullable_to_non_nullable
              as List<ClientRegistrations>?,
      registrations: freezed == registrations
          ? _value.registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<ClientRegistrations>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientCapabilitiesCopyWith<$Res>
    implements $ClientCapabilitiesCopyWith<$Res> {
  factory _$$_ClientCapabilitiesCopyWith(_$_ClientCapabilities value,
          $Res Function(_$_ClientCapabilities) then) =
      __$$_ClientCapabilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ClientRegistrations>? unregisterations,
      List<ClientRegistrations>? registrations});
}

/// @nodoc
class __$$_ClientCapabilitiesCopyWithImpl<$Res>
    extends _$ClientCapabilitiesCopyWithImpl<$Res, _$_ClientCapabilities>
    implements _$$_ClientCapabilitiesCopyWith<$Res> {
  __$$_ClientCapabilitiesCopyWithImpl(
      _$_ClientCapabilities _value, $Res Function(_$_ClientCapabilities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unregisterations = freezed,
    Object? registrations = freezed,
  }) {
    return _then(_$_ClientCapabilities(
      unregisterations: freezed == unregisterations
          ? _value._unregisterations
          : unregisterations // ignore: cast_nullable_to_non_nullable
              as List<ClientRegistrations>?,
      registrations: freezed == registrations
          ? _value._registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<ClientRegistrations>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientCapabilities implements _ClientCapabilities {
  const _$_ClientCapabilities(
      {required final List<ClientRegistrations>? unregisterations,
      required final List<ClientRegistrations>? registrations})
      : _unregisterations = unregisterations,
        _registrations = registrations;

  factory _$_ClientCapabilities.fromJson(Map<String, dynamic> json) =>
      _$$_ClientCapabilitiesFromJson(json);

  final List<ClientRegistrations>? _unregisterations;
  @override
  List<ClientRegistrations>? get unregisterations {
    final value = _unregisterations;
    if (value == null) return null;
    if (_unregisterations is EqualUnmodifiableListView)
      return _unregisterations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClientRegistrations>? _registrations;
  @override
  List<ClientRegistrations>? get registrations {
    final value = _registrations;
    if (value == null) return null;
    if (_registrations is EqualUnmodifiableListView) return _registrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClientCapabilities(unregisterations: $unregisterations, registrations: $registrations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientCapabilities &&
            const DeepCollectionEquality()
                .equals(other._unregisterations, _unregisterations) &&
            const DeepCollectionEquality()
                .equals(other._registrations, _registrations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_unregisterations),
      const DeepCollectionEquality().hash(_registrations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientCapabilitiesCopyWith<_$_ClientCapabilities> get copyWith =>
      __$$_ClientCapabilitiesCopyWithImpl<_$_ClientCapabilities>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientCapabilitiesToJson(
      this,
    );
  }
}

abstract class _ClientCapabilities implements ClientCapabilities {
  const factory _ClientCapabilities(
          {required final List<ClientRegistrations>? unregisterations,
          required final List<ClientRegistrations>? registrations}) =
      _$_ClientCapabilities;

  factory _ClientCapabilities.fromJson(Map<String, dynamic> json) =
      _$_ClientCapabilities.fromJson;

  @override
  List<ClientRegistrations>? get unregisterations;
  @override
  List<ClientRegistrations>? get registrations;
  @override
  @JsonKey(ignore: true)
  _$$_ClientCapabilitiesCopyWith<_$_ClientCapabilities> get copyWith =>
      throw _privateConstructorUsedError;
}
