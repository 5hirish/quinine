// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fileServiceHash() => r'b82b3897df7274d8b39ad05a496132310b1d9c81';

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

/// See also [fileService].
@ProviderFor(fileService)
const fileServiceProvider = FileServiceFamily();

/// See also [fileService].
class FileServiceFamily extends Family<FileService> {
  /// See also [fileService].
  const FileServiceFamily();

  /// See also [fileService].
  FileServiceProvider call(
    String filePath,
  ) {
    return FileServiceProvider(
      filePath,
    );
  }

  @override
  FileServiceProvider getProviderOverride(
    covariant FileServiceProvider provider,
  ) {
    return call(
      provider.filePath,
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
  String? get name => r'fileServiceProvider';
}

/// See also [fileService].
class FileServiceProvider extends Provider<FileService> {
  /// See also [fileService].
  FileServiceProvider(
    String filePath,
  ) : this._internal(
          (ref) => fileService(
            ref as FileServiceRef,
            filePath,
          ),
          from: fileServiceProvider,
          name: r'fileServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fileServiceHash,
          dependencies: FileServiceFamily._dependencies,
          allTransitiveDependencies:
              FileServiceFamily._allTransitiveDependencies,
          filePath: filePath,
        );

  FileServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filePath,
  }) : super.internal();

  final String filePath;

  @override
  Override overrideWith(
    FileService Function(FileServiceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FileServiceProvider._internal(
        (ref) => create(ref as FileServiceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filePath: filePath,
      ),
    );
  }

  @override
  ProviderElement<FileService> createElement() {
    return _FileServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FileServiceProvider && other.filePath == filePath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filePath.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FileServiceRef on ProviderRef<FileService> {
  /// The parameter `filePath` of this provider.
  String get filePath;
}

class _FileServiceProviderElement extends ProviderElement<FileService>
    with FileServiceRef {
  _FileServiceProviderElement(super.provider);

  @override
  String get filePath => (origin as FileServiceProvider).filePath;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
