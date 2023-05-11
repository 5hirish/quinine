// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fileCodeHash() => r'6ab5a41d6a475b3bcedf263b52a7f32aff718f85';

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

abstract class _$FileCode extends BuildlessAsyncNotifier<CodeText> {
  late final String filePath;

  Future<CodeText> build({
    required String filePath,
  });
}

/// See also [FileCode].
@ProviderFor(FileCode)
const fileCodeProvider = FileCodeFamily();

/// See also [FileCode].
class FileCodeFamily extends Family<AsyncValue<CodeText>> {
  /// See also [FileCode].
  const FileCodeFamily();

  /// See also [FileCode].
  FileCodeProvider call({
    required String filePath,
  }) {
    return FileCodeProvider(
      filePath: filePath,
    );
  }

  @override
  FileCodeProvider getProviderOverride(
    covariant FileCodeProvider provider,
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
  String? get name => r'fileCodeProvider';
}

/// See also [FileCode].
class FileCodeProvider extends AsyncNotifierProviderImpl<FileCode, CodeText> {
  /// See also [FileCode].
  FileCodeProvider({
    required this.filePath,
  }) : super.internal(
          () => FileCode()..filePath = filePath,
          from: fileCodeProvider,
          name: r'fileCodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fileCodeHash,
          dependencies: FileCodeFamily._dependencies,
          allTransitiveDependencies: FileCodeFamily._allTransitiveDependencies,
        );

  final String filePath;

  @override
  bool operator ==(Object other) {
    return other is FileCodeProvider && other.filePath == filePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filePath.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<CodeText> runNotifierBuild(
    covariant FileCode notifier,
  ) {
    return notifier.build(
      filePath: filePath,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
