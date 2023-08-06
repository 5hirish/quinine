// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lsp.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dartLSPHash() => r'543605877c70c5881301820069a776f183366822';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DartLSP extends BuildlessAsyncNotifier<DartLSPService> {
  late final String workspaceRootUri;

  Future<DartLSPService> build(
    String workspaceRootUri,
  );
}

/// See also [DartLSP].
@ProviderFor(DartLSP)
const dartLSPProvider = DartLSPFamily();

/// See also [DartLSP].
class DartLSPFamily extends Family<AsyncValue<DartLSPService>> {
  /// See also [DartLSP].
  const DartLSPFamily();

  /// See also [DartLSP].
  DartLSPProvider call(
    String workspaceRootUri,
  ) {
    return DartLSPProvider(
      workspaceRootUri,
    );
  }

  @override
  DartLSPProvider getProviderOverride(
    covariant DartLSPProvider provider,
  ) {
    return call(
      provider.workspaceRootUri,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dartLSPProvider';
}

/// See also [DartLSP].
class DartLSPProvider
    extends AsyncNotifierProviderImpl<DartLSP, DartLSPService> {
  /// See also [DartLSP].
  DartLSPProvider(
    this.workspaceRootUri,
  ) : super.internal(
          () => DartLSP()..workspaceRootUri = workspaceRootUri,
          from: dartLSPProvider,
          name: r'dartLSPProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dartLSPHash,
          dependencies: DartLSPFamily._dependencies,
          allTransitiveDependencies: DartLSPFamily._allTransitiveDependencies,
        );

  final String workspaceRootUri;

  @override
  bool operator ==(Object other) {
    return other is DartLSPProvider &&
        other.workspaceRootUri == workspaceRootUri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workspaceRootUri.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<DartLSPService> runNotifierBuild(
    covariant DartLSP notifier,
  ) {
    return notifier.build(
      workspaceRootUri,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
