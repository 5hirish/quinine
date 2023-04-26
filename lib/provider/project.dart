import 'dart:io';

import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/ignored.dart';
import '../models/project.dart';

part 'project.g.dart';

@Riverpod(keepAlive: true)
class ProjectLocalState extends _$ProjectLocalState {
  
  Directory fetchDirectory(String workingDirectory) {
    return Directory(workingDirectory);
  }

  Future<List<FileSystemEntity>> fetchFiles(Directory projectDirectory,
      {bool recursive = false}) async {
    return await projectDirectory.list(recursive: recursive).toList();
  }

  List<FileSystemEntity> sortFiles(List<FileSystemEntity> projectFiles) {
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

  List<FileSystemEntity> ignoreFiles(List<FileSystemEntity> projectFiles) {
    return projectFiles.where((file) {
      String fileName = basename(file.path);
      return !ignoredFilesAndDirectories.contains(fileName);
    }).toList();
  }

  @override
  ProjectLocal? build({String directoryPath = ''}) {
    if (directoryPath.isEmpty) {
      return null;
    }

    return ProjectLocal(directoryPath: directoryPath);
  }

  void setWorkingDirectory(String directoryPath) async {
    Directory projectDirectory = fetchDirectory(directoryPath);
    List<FileSystemEntity> projectFileList = await fetchFiles(projectDirectory);
    projectFileList = sortFiles(projectFileList);
    projectFileList = ignoreFiles(projectFileList);

    if (state != null) {
      state = state!.copyWith(
          directoryPath: directoryPath,
          directory: projectDirectory,
          projectFiles: {directoryPath: projectFileList});
    } else {
      state = ProjectLocal(
          directoryPath: directoryPath,
          directory: projectDirectory,
          projectFiles: {directoryPath: projectFileList});
    }
  }

  Future<Map<String, List<FileSystemEntity>>> getChildren(String parentDirectoryPath) async {
    Directory parentDirectory = fetchDirectory(parentDirectoryPath);
    List<FileSystemEntity> childrenFileList = await fetchFiles(parentDirectory);
    childrenFileList = sortFiles(childrenFileList);
    childrenFileList = ignoreFiles(childrenFileList);

    if (state != null) {
      Map<String, List<FileSystemEntity>> projectTree =
          Map.of(state!.projectFiles!);
      projectTree[parentDirectoryPath] = childrenFileList;

      state = state!.copyWith(projectFiles: projectTree);
      return projectTree;
    }
    return {};
  }

  List<FileSystemEntity>? getProjectRootFiles() {
    if (state != null && state!.projectFiles != null) {
      return state!.projectFiles![state!.directoryPath];
    }
    return null;
  }
}
