// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lSPDocumentHash() => r'cd099151f9e9fef17b929d4fbd5e00d2bdda2ec5';

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

abstract class _$LSPDocument
    extends BuildlessAsyncNotifier<DocumentSynchronization?> {
  late final String uri;

  Future<DocumentSynchronization?> build(
    String uri,
  );
}

/// A feature specific provider made for the LSPService specific functionalities
/// Dart LPS document syncKind with the server is 2 (Incremental).
/// Meaning documents are synced by sending the full content on open.
/// After that only incremental updates to the document are sent.
///
/// Copied from [LSPDocument].
@ProviderFor(LSPDocument)
const lSPDocumentProvider = LSPDocumentFamily();

/// A feature specific provider made for the LSPService specific functionalities
/// Dart LPS document syncKind with the server is 2 (Incremental).
/// Meaning documents are synced by sending the full content on open.
/// After that only incremental updates to the document are sent.
///
/// Copied from [LSPDocument].
class LSPDocumentFamily extends Family<AsyncValue<DocumentSynchronization?>> {
  /// A feature specific provider made for the LSPService specific functionalities
  /// Dart LPS document syncKind with the server is 2 (Incremental).
  /// Meaning documents are synced by sending the full content on open.
  /// After that only incremental updates to the document are sent.
  ///
  /// Copied from [LSPDocument].
  const LSPDocumentFamily();

  /// A feature specific provider made for the LSPService specific functionalities
  /// Dart LPS document syncKind with the server is 2 (Incremental).
  /// Meaning documents are synced by sending the full content on open.
  /// After that only incremental updates to the document are sent.
  ///
  /// Copied from [LSPDocument].
  LSPDocumentProvider call(
    String uri,
  ) {
    return LSPDocumentProvider(
      uri,
    );
  }

  @override
  LSPDocumentProvider getProviderOverride(
    covariant LSPDocumentProvider provider,
  ) {
    return call(
      provider.uri,
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
  String? get name => r'lSPDocumentProvider';
}

/// A feature specific provider made for the LSPService specific functionalities
/// Dart LPS document syncKind with the server is 2 (Incremental).
/// Meaning documents are synced by sending the full content on open.
/// After that only incremental updates to the document are sent.
///
/// Copied from [LSPDocument].
class LSPDocumentProvider
    extends AsyncNotifierProviderImpl<LSPDocument, DocumentSynchronization?> {
  /// A feature specific provider made for the LSPService specific functionalities
  /// Dart LPS document syncKind with the server is 2 (Incremental).
  /// Meaning documents are synced by sending the full content on open.
  /// After that only incremental updates to the document are sent.
  ///
  /// Copied from [LSPDocument].
  LSPDocumentProvider(
    String uri,
  ) : this._internal(
          () => LSPDocument()..uri = uri,
          from: lSPDocumentProvider,
          name: r'lSPDocumentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lSPDocumentHash,
          dependencies: LSPDocumentFamily._dependencies,
          allTransitiveDependencies:
              LSPDocumentFamily._allTransitiveDependencies,
          uri: uri,
        );

  LSPDocumentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uri,
  }) : super.internal();

  final String uri;

  @override
  Future<DocumentSynchronization?> runNotifierBuild(
    covariant LSPDocument notifier,
  ) {
    return notifier.build(
      uri,
    );
  }

  @override
  Override overrideWith(LSPDocument Function() create) {
    return ProviderOverride(
      origin: this,
      override: LSPDocumentProvider._internal(
        () => create()..uri = uri,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uri: uri,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<LSPDocument, DocumentSynchronization?>
      createElement() {
    return _LSPDocumentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LSPDocumentProvider && other.uri == uri;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uri.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LSPDocumentRef on AsyncNotifierProviderRef<DocumentSynchronization?> {
  /// The parameter `uri` of this provider.
  String get uri;
}

class _LSPDocumentProviderElement
    extends AsyncNotifierProviderElement<LSPDocument, DocumentSynchronization?>
    with LSPDocumentRef {
  _LSPDocumentProviderElement(super.provider);

  @override
  String get uri => (origin as LSPDocumentProvider).uri;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
