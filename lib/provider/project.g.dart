// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDirectoryPathHash() =>
    r'9ccd523270557e396e346ca480f5843755dc8562';

/// See also [ProjectDirectoryPath].
@ProviderFor(ProjectDirectoryPath)
final projectDirectoryPathProvider =
    NotifierProvider<ProjectDirectoryPath, String?>.internal(
  ProjectDirectoryPath.new,
  name: r'projectDirectoryPathProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectDirectoryPathHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectDirectoryPath = Notifier<String?>;
String _$projectFilesHash() => r'1effd0c2c07d90f04103f8ada1d910ca436d2965';

/// See also [ProjectFiles].
@ProviderFor(ProjectFiles)
final projectFilesProvider = AsyncNotifierProvider<ProjectFiles,
    Map<String, List<FileSystemEntity>>?>.internal(
  ProjectFiles.new,
  name: r'projectFilesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$projectFilesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectFiles = AsyncNotifier<Map<String, List<FileSystemEntity>>?>;
String _$projectExpandedNodesHash() =>
    r'7306804144fd72fe6db1723057494c60be486d1f';

/// See also [ProjectExpandedNodes].
@ProviderFor(ProjectExpandedNodes)
final projectExpandedNodesProvider =
    NotifierProvider<ProjectExpandedNodes, Set<FileSystemEntity>>.internal(
  ProjectExpandedNodes.new,
  name: r'projectExpandedNodesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectExpandedNodesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectExpandedNodes = Notifier<Set<FileSystemEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
