import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../hooks/tree.dart';
import '../../../logger.dart';
import '../../../provider/project.dart';
import '../../../widgets/item/file.dart';

class ProjectExplorer extends HookConsumerWidget {
  const ProjectExplorer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectLocal = ref.watch(projectLocalStateProvider());

    List<FileSystemEntity> projectFiles = [];

    final loadingFiles = useState<Set<String>>({});

    if (projectLocal != null &&
        projectLocal.projectFiles != null &&
        projectLocal.projectFiles!.containsKey(projectLocal.directoryPath)) {
      projectFiles = projectLocal.projectFiles![projectLocal.directoryPath]!;
    } else {
      return const Text("Select Project");
    }

    TreeController<FileSystemEntity> treeController =
        useTreeControllerForFileSystemEntities(roots: projectFiles);

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
          logger.d("Directory: ${file.path}");
          if (childFiles == null) {
            isOpen = false;
            onPressed = () =>
                getFileDescendants(ref, file, loadingFiles, treeController);
            logger.d("OnPressend: Load");
          } else if (childFiles.isEmpty) {
            isOpen = false;
            onPressed = null;
            logger.d("OnPressend: Null");
          } else {
            isOpen = treeController.getExpansionState(file);
            onPressed = () => treeController.toggleExpansion(file);
            logger.d("OnPressend: Expand");
          }
        } else {
          isOpen = false;
          onPressed = null;
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

  Future<void> getFileDescendants(
      WidgetRef ref,
      FileSystemEntity file,
      ValueNotifier<Set<String>> loadingFiles,
      TreeController<FileSystemEntity> treeController) async {
    logger.d("On Tap");

    loadingFiles.value.add(file.path);

    ref.read(projectLocalStateProvider().notifier).getChildren(file.path);

    loadingFiles.value.remove(file.path);

    treeController.expand(file);

    logger.d("OnPressed: Expand");
  }
}
