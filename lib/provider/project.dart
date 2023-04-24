import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  void getChildren(String parentDirectoryPath) async {
    Directory parentDirectory = fetchDirectory(parentDirectoryPath);
    List<FileSystemEntity> childrenFileList = await fetchFiles(parentDirectory);

    if (state != null) {
      
      Map<String, List<FileSystemEntity>> projectTree = Map.of(state!.projectFiles!);
      projectTree[parentDirectoryPath] = childrenFileList;

      state = state!.copyWith(projectFiles: projectTree);
    }
  }

  List<FileSystemEntity>? getProjectRootFiles() {
    if (state != null && state!.projectFiles != null) {
      return state!.projectFiles![state!.directoryPath];
    }
    return null;
  }
}
