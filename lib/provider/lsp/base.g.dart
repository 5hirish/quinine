// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lSPHash() => r'c40d2eb2b7b5e1dbdc181218f34c6950bbeb105b';

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

abstract class _$LSP extends BuildlessAsyncNotifier<LSPService?> {
  late final LSPLanguage language;

  Future<LSPService?> build({
    LSPLanguage language = LSPLanguage.dart,
  });
}

/// A foundational provider made for the LSPService since it will be the
/// backbone of all the language-specific functionalities.
/// The provider will be kept alive as long as there's at least one listener.
///
/// Copied from [LSP].
@ProviderFor(LSP)
const lSPProvider = LSPFamily();

/// A foundational provider made for the LSPService since it will be the
/// backbone of all the language-specific functionalities.
/// The provider will be kept alive as long as there's at least one listener.
///
/// Copied from [LSP].
class LSPFamily extends Family<AsyncValue<LSPService?>> {
  /// A foundational provider made for the LSPService since it will be the
  /// backbone of all the language-specific functionalities.
  /// The provider will be kept alive as long as there's at least one listener.
  ///
  /// Copied from [LSP].
  const LSPFamily();

  /// A foundational provider made for the LSPService since it will be the
  /// backbone of all the language-specific functionalities.
  /// The provider will be kept alive as long as there's at least one listener.
  ///
  /// Copied from [LSP].
  LSPProvider call({
    LSPLanguage language = LSPLanguage.dart,
  }) {
    return LSPProvider(
      language: language,
    );
  }

  @override
  LSPProvider getProviderOverride(
    covariant LSPProvider provider,
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
  String? get name => r'lSPProvider';
}

/// A foundational provider made for the LSPService since it will be the
/// backbone of all the language-specific functionalities.
/// The provider will be kept alive as long as there's at least one listener.
///
/// Copied from [LSP].
class LSPProvider extends AsyncNotifierProviderImpl<LSP, LSPService?> {
  /// A foundational provider made for the LSPService since it will be the
  /// backbone of all the language-specific functionalities.
  /// The provider will be kept alive as long as there's at least one listener.
  ///
  /// Copied from [LSP].
  LSPProvider({
    LSPLanguage language = LSPLanguage.dart,
  }) : this._internal(
          () => LSP()..language = language,
          from: lSPProvider,
          name: r'lSPProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$lSPHash,
          dependencies: LSPFamily._dependencies,
          allTransitiveDependencies: LSPFamily._allTransitiveDependencies,
          language: language,
        );

  LSPProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.language,
  }) : super.internal();

  final LSPLanguage language;

  @override
  Future<LSPService?> runNotifierBuild(
    covariant LSP notifier,
  ) {
    return notifier.build(
      language: language,
    );
  }

  @override
  Override overrideWith(LSP Function() create) {
    return ProviderOverride(
      origin: this,
      override: LSPProvider._internal(
        () => create()..language = language,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        language: language,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<LSP, LSPService?> createElement() {
    return _LSPProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LSPProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LSPRef on AsyncNotifierProviderRef<LSPService?> {
  /// The parameter `language` of this provider.
  LSPLanguage get language;
}

class _LSPProviderElement extends AsyncNotifierProviderElement<LSP, LSPService?>
    with LSPRef {
  _LSPProviderElement(super.provider);

  @override
  LSPLanguage get language => (origin as LSPProvider).language;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
