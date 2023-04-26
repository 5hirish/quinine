import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quinine/provider/file.dart';
import 'package:quinine/provider/tab.dart';

import '../../../hooks/tree.dart';
import '../../../logger.dart';
import '../../../provider/project.dart';
import '../../../widgets/item/file.dart';

class ProjectExplorer extends HookConsumerWidget {
  ProjectExplorer({super.key});

  Map<String, List<FileSystemEntity>> projectFilesProvider = {};

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectLocal = ref.watch(projectLocalStateProvider());

    List<FileSystemEntity> projectFiles = [];

    final loadingFiles = useState<Set<String>>({});

    if (projectLocal != null &&
        projectLocal.projectFiles != null &&
        projectLocal.projectFiles!.containsKey(projectLocal.directoryPath)) {
      projectFiles = projectLocal.projectFiles![projectLocal.directoryPath]!;
      projectFilesProvider = projectLocal.projectFiles!;
    } else {
      return const Text("Select Project");
    }

    TreeController<FileSystemEntity> treeController =
        useTreeControllerForFileSystemEntities(
          roots: projectFiles,   /// The [roots] parameter should contain all nodes that occupy the level `0`
          childrenProvider: fileSystemEntityChildrenProvider,
        );

    return AnimatedTreeView<FileSystemEntity>(
      treeController: treeController,
      nodeBuilder: (BuildContext context, TreeEntry<FileSystemEntity> entry) {

        FileSystemEntity file = entry.node;

        List<FileSystemEntity>? childFiles;

        if (projectLocal.projectFiles != null &&
            projectLocal.projectFiles!.containsKey(file.path)) {
          childFiles = projectLocal.projectFiles![file.path]!;
        }

        bool isOpen = false;
        VoidCallback? onPressed;

        if (file is Directory) {
          
          if (childFiles == null) {
            isOpen = false;
            onPressed = () => getFileDescendants(ref, file, loadingFiles, treeController);
            // logger.d("Pressed:Get: ${file.path}");
          } else if (childFiles.isEmpty) {
            isOpen = false;
            onPressed = null;
            // logger.d("Pressed:Null: ${file.path}");
          } else {
            isOpen = treeController.getExpansionState(file);
            onPressed = () => treeController.toggleExpansion(file);
            // logger.d("Pressed:Expand: ${file.path}");
          }
        } else {
          isOpen = false;
          onPressed = () => openFile(ref, file);
        }

        bool isFileLoading = loadingFiles.value.contains(file.path);

        return FileExplorerItem(
          entry: entry,
          onPressed: onPressed,
          isOpen: isOpen,
          isFileLoading: isFileLoading,
        );
      },
      padding: const EdgeInsets.all(8),
    );
  }

  Iterable<FileSystemEntity> fileSystemEntityChildrenProvider(FileSystemEntity parent) {
    return projectFilesProvider[parent.path] ?? const Iterable.empty();
  }

  Future<void> getFileDescendants(
      WidgetRef ref,
      FileSystemEntity file,
      ValueNotifier<Set<String>> loadingFiles,
      TreeController<FileSystemEntity> treeController) async {

    loadingFiles.value.add(file.path);

    projectFilesProvider = await ref.read(
        projectLocalStateProvider().notifier).getChildren(file.path);

    loadingFiles.value.remove(file.path);

    treeController.expand(file);
  }

  void openFile(WidgetRef ref, FileSystemEntity file, {bool focusTab = true}) {
    List<String> openFiles = ref.read(openFilesPathProvider);
    ref.read(openFilesPathProvider.notifier).state = [...openFiles, file.path];

    if (focusTab) {
      ref.read(selectedTabIndexProvider.notifier).state = openFiles.length;
    }
  }
}
