// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configurationItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigurationItem _$ConfigurationItemFromJson(Map<String, dynamic> json) {
  return _ConfigurationItem.fromJson(json);
}

/// @nodoc
mixin _$ConfigurationItem {
  String? get scopeUri => throw _privateConstructorUsedError;
  String? get section => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationItemCopyWith<ConfigurationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationItemCopyWith<$Res> {
  factory $ConfigurationItemCopyWith(
          ConfigurationItem value, $Res Function(ConfigurationItem) then) =
      _$ConfigurationItemCopyWithImpl<$Res, ConfigurationItem>;
  @useResult
  $Res call({String? scopeUri, String? section});
}

/// @nodoc
class _$ConfigurationItemCopyWithImpl<$Res, $Val extends ConfigurationItem>
    implements $ConfigurationItemCopyWith<$Res> {
  _$ConfigurationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scopeUri = freezed,
    Object? section = freezed,
  }) {
    return _then(_value.copyWith(
      scopeUri: freezed == scopeUri
          ? _value.scopeUri
          : scopeUri // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigurationItemCopyWith<$Res>
    implements $ConfigurationItemCopyWith<$Res> {
  factory _$$_ConfigurationItemCopyWith(_$_ConfigurationItem value,
          $Res Function(_$_ConfigurationItem) then) =
      __$$_ConfigurationItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? scopeUri, String? section});
}

/// @nodoc
class __$$_ConfigurationItemCopyWithImpl<$Res>
    extends _$ConfigurationItemCopyWithImpl<$Res, _$_ConfigurationItem>
    implements _$$_ConfigurationItemCopyWith<$Res> {
  __$$_ConfigurationItemCopyWithImpl(
      _$_ConfigurationItem _value, $Res Function(_$_ConfigurationItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scopeUri = freezed,
    Object? section = freezed,
  }) {
    return _then(_$_ConfigurationItem(
      scopeUri: freezed == scopeUri
          ? _value.scopeUri
          : scopeUri // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigurationItem implements _ConfigurationItem {
  const _$_ConfigurationItem({required this.scopeUri, required this.section});

  factory _$_ConfigurationItem.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigurationItemFromJson(json);

  @override
  final String? scopeUri;
  @override
  final String? section;

  @override
  String toString() {
    return 'ConfigurationItem(scopeUri: $scopeUri, section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigurationItem &&
            (identical(other.scopeUri, scopeUri) ||
                other.scopeUri == scopeUri) &&
            (identical(other.section, section) || other.section == section));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scopeUri, section);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigurationItemCopyWith<_$_ConfigurationItem> get copyWith =>
      __$$_ConfigurationItemCopyWithImpl<_$_ConfigurationItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigurationItemToJson(
      this,
    );
  }
}

abstract class _ConfigurationItem implements ConfigurationItem {
  const factory _ConfigurationItem(
      {required final String? scopeUri,
      required final String? section}) = _$_ConfigurationItem;

  factory _ConfigurationItem.fromJson(Map<String, dynamic> json) =
      _$_ConfigurationItem.fromJson;

  @override
  String? get scopeUri;
  @override
  String? get section;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigurationItemCopyWith<_$_ConfigurationItem> get copyWith =>
      throw _privateConstructorUsedError;
}
