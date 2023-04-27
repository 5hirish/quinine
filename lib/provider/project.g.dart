// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectDirectoryPathHash() =>
    r'54cd65b5d27e6ab65384f24853782f96976e46ec';

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
String _$projectFilesHash() => r'5357eac03514af117e25fe74a36dfd4264768a46';

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
