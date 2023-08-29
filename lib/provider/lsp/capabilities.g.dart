// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capabilities.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lSPServerCapabilitiesHash() =>
    r'63c2dc252714a1752987d8b1d374584c47e9ad28';

/// See also [LSPServerCapabilities].
@ProviderFor(LSPServerCapabilities)
final lSPServerCapabilitiesProvider =
    NotifierProvider<LSPServerCapabilities, ServerCapabilities?>.internal(
  LSPServerCapabilities.new,
  name: r'lSPServerCapabilitiesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lSPServerCapabilitiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LSPServerCapabilities = Notifier<ServerCapabilities?>;
String _$lSPClientCapabilitiesHash() =>
    r'4bc8adda19b3b5454ea49ffd915dcf74143477e8';

/// See also [LSPClientCapabilities].
@ProviderFor(LSPClientCapabilities)
final lSPClientCapabilitiesProvider = NotifierProvider<LSPClientCapabilities,
    List<ClientRegistrations>?>.internal(
  LSPClientCapabilities.new,
  name: r'lSPClientCapabilitiesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lSPClientCapabilitiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LSPClientCapabilities = Notifier<List<ClientRegistrations>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
