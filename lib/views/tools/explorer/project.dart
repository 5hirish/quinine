import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../hooks/tree.dart';
import '../../../provider/project.dart';
import '../../../widgets/item/file.dart';

class ProjectExplorer extends HookConsumerWidget {
  const ProjectExplorer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final projectFilesAsync = ref.watch(projectFilesProvider);
    final loadingFiles = useState<Set<String>>({});

    TreeController<FileSystemEntity> treeController =
        useTreeControllerForFileSystemEntities(
          roots: [],   /// The [roots] parameter should contain all nodes that occupy the level `0`
          ref: ref
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

        return FileExplorerItem(
          entry: entry,
          treeController: treeController,
        );
      },
      padding: const EdgeInsets.all(8),
    );
  }
}
