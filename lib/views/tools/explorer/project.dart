import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../hooks/tree.dart';
import '../../../logger.dart';
import '../../../provider/file.dart';
import '../../../provider/project.dart';
import '../../../provider/tab.dart';
import '../../../widgets/item/file.dart';

class ProjectExplorer extends HookConsumerWidget {
  ProjectExplorer({super.key});

  Map<String, List<FileSystemEntity>> projectFiles = {};

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectFilesAsync = ref.watch(projectFilesProvider);

    List<FileSystemEntity> projectFiles = [];

    final loadingFiles = useState<Set<String>>({});

    TreeController<FileSystemEntity> treeController =
    useTreeControllerForFileSystemEntities(
      roots: projectFiles,   /// The [roots] parameter should contain all nodes that occupy the level `0`
      childrenProvider: fileSystemEntityChildrenProvider,
    );

    return projectFilesAsync.when(
        data: (projectFiles) => getProjectFilesTree(context, ref, treeController, loadingFiles, projectFiles),
        error: (err, stack) => const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Something went wrong :("),
            )
        ),
        loading: () => const Center(
            child: SizedBox(width: 32, child: LinearProgressIndicator())
        )
    );
  }

  Iterable<FileSystemEntity> fileSystemEntityChildrenProvider(FileSystemEntity parent) {
    return projectFiles[parent.path] ?? const Iterable.empty();
  }

  Widget getProjectFilesTree(BuildContext context, WidgetRef ref,
      TreeController<FileSystemEntity> treeController,
      ValueNotifier<Set<String>> loadingFiles,
      Map<String, List<FileSystemEntity>>? projectFiles) {

    if (projectFiles == null) {
      return const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Select a project"),
          )
      );
    }

    treeController.roots = ref.read(projectFilesProvider.notifier).getProjectRootFiles() ?? [];

    return TreeView<FileSystemEntity>(
      treeController: treeController,
      nodeBuilder: (BuildContext context, TreeEntry<FileSystemEntity> entry) {

        FileSystemEntity file = entry.node;

        bool isOpen = false;
        VoidCallback? onPressed;

        if (file is Directory) {

          List<FileSystemEntity>? childFiles = ref.read(projectFilesProvider.notifier).getProjectParentFiles(file.path);

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
            logger.d("Pressed:Toggle: ${file.path}: $isOpen");
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

  Future<void> getFileDescendants(
      WidgetRef ref,
      FileSystemEntity file,
      ValueNotifier<Set<String>> loadingFiles,
      TreeController<FileSystemEntity> treeController) async {

    loadingFiles.value.add(file.path);

    projectFiles = await ref.read(projectFilesProvider.notifier).loadChildren(file.path) ?? {};

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
