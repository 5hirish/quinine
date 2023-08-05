import 'dart:io';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/ignored.dart';
import 'lsp.dart';

part 'project.g.dart';

@Riverpod(keepAlive: true)
class ProjectDirectoryPath extends _$ProjectDirectoryPath {
  @override
  String? build() {
    return null;
  }

  void changeDirectoryPath(String? directoryPath) {
    // Reading the dartLSPProvider.future will start the LSP service if it hasn't been started yet
    // Reading dartLSPProvider as its used inside functions triggered by user interactions (User select workspace)
    ref.read(dartLSPProvider.future).then((dartLSPService) =>
        ref.read(dartLSPProvider.notifier).initializeLSP(directoryPath!));

    state = directoryPath;
  }
}

@Riverpod(keepAlive: true)
class ProjectFiles extends _$ProjectFiles {
  late String? projectDirectoryPath;

  Directory fetchDirectory(String workingDirectory) {
    return Directory(workingDirectory);
  }

  Future<List<FileSystemEntity>> _fetchFiles(Directory projectDirectory,
      {bool recursive = false}) async {
    return await projectDirectory.list(recursive: recursive).toList();
  }

  List<FileSystemEntity> _sortFiles(List<FileSystemEntity> projectFiles) {
    projectFiles.sort((fileA, fileB) {
      // Compare the entity types to prioritize directories
      int compareType =
          fileA.runtimeType.toString().compareTo(fileB.runtimeType.toString());

      // If both entities are of the same type, compare their names alphabetically
      if (compareType == 0) {
        String nameA = basename(fileA.path).toLowerCase();
        String nameB = basename(fileB.path).toLowerCase();
        return nameA.compareTo(nameB);
      }
      return compareType;
    });

    return projectFiles;
  }

  List<FileSystemEntity> _ignoreFiles(List<FileSystemEntity> projectFiles) {
    return projectFiles.where((file) {
      String fileName = basename(file.path);
      return !ignoredFilesAndDirectories.contains(fileName);
    }).toList();
  }

  Future<Map<String, List<FileSystemEntity>>> _loadFiles(
      String directoryPath) async {
    Directory projectDirectory = fetchDirectory(directoryPath);
    List<FileSystemEntity> projectFileList =
        await _fetchFiles(projectDirectory);
    projectFileList = _sortFiles(projectFileList);
    projectFileList = _ignoreFiles(projectFileList);

    return {directoryPath: projectFileList};
  }

  @override
  FutureOr<Map<String, List<FileSystemEntity>>?> build() async {
    projectDirectoryPath = ref.watch(projectDirectoryPathProvider);
    if (projectDirectoryPath != null) {
      return _loadFiles(projectDirectoryPath!);
    }
    return null;
  }

  bool isProjectSelected() {
    return projectDirectoryPath != null;
  }

  Future<Map<String, List<FileSystemEntity>>?> loadChildren(
      String parentDirectoryPath) async {
    // state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      Map<String, List<FileSystemEntity>> childrenFileMap =
          await _loadFiles(parentDirectoryPath);
      return {...?state.value, ...childrenFileMap};
    });

    return state.value;
  }

  List<FileSystemEntity>? getProjectRootFiles() {
    if (state.value != null &&
        projectDirectoryPath != null &&
        state.value!.containsKey(projectDirectoryPath)) {
      return state.value![projectDirectoryPath!];
    }
    return null;
  }

  List<FileSystemEntity>? getProjectParentFiles(parentDirectoryPath) {
    if (state.value != null && state.value!.containsKey(parentDirectoryPath)) {
      return state.value![parentDirectoryPath];
    }
    return null;
  }
}

@Riverpod(keepAlive: true)
class ProjectExpandedNodes extends _$ProjectExpandedNodes {
  @override
  Set<FileSystemEntity> build() {
    return {};
  }

  Set<FileSystemEntity> getExpandedNodes() {
    return state;
  }

  bool getIsExpanded(FileSystemEntity node) {
    return state.contains(node);
  }

  void toggleExpandedNode(FileSystemEntity node) {
    if (state.contains(node)) {
      removeExpandedNode(node);
    } else {
      addExpandedNode(node);
    }
  }

  void addExpandedNode(FileSystemEntity node) {
    state = {...state, node};
  }

  void removeExpandedNode(FileSystemEntity node) {
    state = {...state}..remove(node);
  }

  void clearExpandedNodes() {
    state = {};
  }
}
