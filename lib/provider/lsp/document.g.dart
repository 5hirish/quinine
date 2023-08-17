// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lSPDocumentHash() => r'3cdfd77c5adabc6bfee4f2719dce415eccbf54dc';

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
  late final SupportedLanguages language;

  Future<DocumentSynchronization?> build({
    SupportedLanguages language = SupportedLanguages.dart,
  });
}

/// A feature specific provider made for the LSPService specific functionalities
///
/// Copied from [LSPDocument].
@ProviderFor(LSPDocument)
const lSPDocumentProvider = LSPDocumentFamily();

/// A feature specific provider made for the LSPService specific functionalities
///
/// Copied from [LSPDocument].
class LSPDocumentFamily extends Family<AsyncValue<DocumentSynchronization?>> {
  /// A feature specific provider made for the LSPService specific functionalities
  ///
  /// Copied from [LSPDocument].
  const LSPDocumentFamily();

  /// A feature specific provider made for the LSPService specific functionalities
  ///
  /// Copied from [LSPDocument].
  LSPDocumentProvider call({
    SupportedLanguages language = SupportedLanguages.dart,
  }) {
    return LSPDocumentProvider(
      language: language,
    );
  }

  @override
  LSPDocumentProvider getProviderOverride(
    covariant LSPDocumentProvider provider,
  ) {
    return call(
      language: provider.language,
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
///
/// Copied from [LSPDocument].
class LSPDocumentProvider
    extends AsyncNotifierProviderImpl<LSPDocument, DocumentSynchronization?> {
  /// A feature specific provider made for the LSPService specific functionalities
  ///
  /// Copied from [LSPDocument].
  LSPDocumentProvider({
    this.language = SupportedLanguages.dart,
  }) : super.internal(
          () => LSPDocument()..language = language,
          from: lSPDocumentProvider,
          name: r'lSPDocumentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lSPDocumentHash,
          dependencies: LSPDocumentFamily._dependencies,
          allTransitiveDependencies:
              LSPDocumentFamily._allTransitiveDependencies,
        );

  final SupportedLanguages language;

  @override
  bool operator ==(Object other) {
    return other is LSPDocumentProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<DocumentSynchronization?> runNotifierBuild(
    covariant LSPDocument notifier,
  ) {
    return notifier.build(
      language: language,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
