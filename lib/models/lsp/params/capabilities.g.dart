// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capabilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientCapabilities _$$_ClientCapabilitiesFromJson(
        Map<String, dynamic> json) =>
    _$_ClientCapabilities(
      unregisterations: (json['unregisterations'] as List<dynamic>?)
          ?.map((e) => ClientRegistrations.fromJson(e as Map<String, dynamic>))
          .toList(),
      registrations: (json['registrations'] as List<dynamic>?)
          ?.map((e) => ClientRegistrations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClientCapabilitiesToJson(
        _$_ClientCapabilities instance) =>
    <String, dynamic>{
      'unregisterations': instance.unregisterations,
      'registrations': instance.registrations,
    };
