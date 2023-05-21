// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sourceFileHash() => r'6207fae35eebfad95812d923f2c6dfb560811a58';

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

abstract class _$SourceFile extends BuildlessAsyncNotifier<CodeText> {
  late final String filePath;

  Future<CodeText> build({
    required String filePath,
  });
}

/// See also [SourceFile].
@ProviderFor(SourceFile)
const sourceFileProvider = SourceFileFamily();

/// See also [SourceFile].
class SourceFileFamily extends Family<AsyncValue<CodeText>> {
  /// See also [SourceFile].
  const SourceFileFamily();

  /// See also [SourceFile].
  SourceFileProvider call({
    required String filePath,
  }) {
    return SourceFileProvider(
      filePath: filePath,
    );
  }

  @override
  SourceFileProvider getProviderOverride(
    covariant SourceFileProvider provider,
  ) {
    return call(
      filePath: provider.filePath,
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
  String? get name => r'sourceFileProvider';
}

/// See also [SourceFile].
class SourceFileProvider
    extends AsyncNotifierProviderImpl<SourceFile, CodeText> {
  /// See also [SourceFile].
  SourceFileProvider({
    required this.filePath,
  }) : super.internal(
          () => SourceFile()..filePath = filePath,
          from: sourceFileProvider,
          name: r'sourceFileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sourceFileHash,
          dependencies: SourceFileFamily._dependencies,
          allTransitiveDependencies:
              SourceFileFamily._allTransitiveDependencies,
        );

  final String filePath;

  @override
  bool operator ==(Object other) {
    return other is SourceFileProvider && other.filePath == filePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filePath.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<CodeText> runNotifierBuild(
    covariant SourceFile notifier,
  ) {
    return notifier.build(
      filePath: filePath,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
