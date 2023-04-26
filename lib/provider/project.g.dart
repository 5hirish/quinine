// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectLocalStateHash() => r'22004372d3f45f7d1eb56ad1afdada69f2345fd1';

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

abstract class _$ProjectLocalState extends BuildlessNotifier<ProjectLocal?> {
  late final String directoryPath;

  ProjectLocal? build({
    String directoryPath = '',
  });
}

/// See also [ProjectLocalState].
@ProviderFor(ProjectLocalState)
const projectLocalStateProvider = ProjectLocalStateFamily();

/// See also [ProjectLocalState].
class ProjectLocalStateFamily extends Family<ProjectLocal?> {
  /// See also [ProjectLocalState].
  const ProjectLocalStateFamily();

  /// See also [ProjectLocalState].
  ProjectLocalStateProvider call({
    String directoryPath = '',
  }) {
    return ProjectLocalStateProvider(
      directoryPath: directoryPath,
    );
  }

  @override
  ProjectLocalStateProvider getProviderOverride(
    covariant ProjectLocalStateProvider provider,
  ) {
    return call(
      directoryPath: provider.directoryPath,
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
  String? get name => r'projectLocalStateProvider';
}

/// See also [ProjectLocalState].
class ProjectLocalStateProvider
    extends NotifierProviderImpl<ProjectLocalState, ProjectLocal?> {
  /// See also [ProjectLocalState].
  ProjectLocalStateProvider({
    this.directoryPath = '',
  }) : super.internal(
          () => ProjectLocalState()..directoryPath = directoryPath,
          from: projectLocalStateProvider,
          name: r'projectLocalStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectLocalStateHash,
          dependencies: ProjectLocalStateFamily._dependencies,
          allTransitiveDependencies:
              ProjectLocalStateFamily._allTransitiveDependencies,
        );

  final String directoryPath;

  @override
  bool operator ==(Object other) {
    return other is ProjectLocalStateProvider &&
        other.directoryPath == directoryPath;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, directoryPath.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  ProjectLocal? runNotifierBuild(
    covariant ProjectLocalState notifier,
  ) {
    return notifier.build(
      directoryPath: directoryPath,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
