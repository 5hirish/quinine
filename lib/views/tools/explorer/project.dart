import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../hooks/tree.dart';
import '../../../models/project.dart';
import '../../../provider/project.dart';

class ProjectExplorer extends HookConsumerWidget {
  const ProjectExplorer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectLocal = ref.watch(projectLocalStateProvider());

    final loadingFiles = useState<Set<String>>({});

    List<FileSystemEntity> projectFiles = [];

    if (projectLocal != null &&
        projectLocal.projectFiles != null &&
        projectLocal.projectFiles!.containsKey(projectLocal.directoryPath)) {
      projectFiles = projectLocal.projectFiles![projectLocal.directoryPath]!;
    } else {
      return const Text("Select Project");
    }

    TreeController<FileSystemEntity> treeController =
        useTreeControllerForFileSystemEntities(roots: projectFiles);

    // return Text(projectLocal != null && projectLocal.projectFiles != null? projectLocal.projectFiles!.length.toString(): "0");

    return AnimatedTreeView<FileSystemEntity>(
      treeController: treeController,
      nodeBuilder: (BuildContext context, TreeEntry<FileSystemEntity> file) {
        return TreeIndentation(
          entry: file,
          guide: const IndentGuide.scopingLines(),
          child: Row(
            children: [
              SizedBox.square(
                dimension: 40,
                child: getLeadingFor(
                    ref, file.node, loadingFiles, projectLocal, treeController),
              ),
              Text(
                file.node.path.split('/').last,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
      padding: const EdgeInsets.all(8),
    );
  }

  Widget getLeadingFor(
      WidgetRef ref,
      FileSystemEntity file,
      ValueNotifier<Set<String>> loadingFiles,
      ProjectLocal? projectLocal,
      TreeController<FileSystemEntity> treeController) {
    
    if (file is File) {
      return const Center(
        child: SizedBox.square(
          dimension: 20,
          child:
              IconButton(onPressed: null, icon: FaIcon(FontAwesomeIcons.file)),
        ),
      );
    }
    
    if (loadingFiles.value.contains(file.path)) {
      return const Center(
        child: SizedBox.square(
          dimension: 20,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    late final VoidCallback? onPressed;
    late final bool? isOpen;

    List<FileSystemEntity>? childFiles = null;

    if (projectLocal != null &&
        projectLocal.projectFiles != null &&
        projectLocal.projectFiles!.containsKey(file.path)) {
      childFiles = projectLocal.projectFiles![file.path]!;
    }

    if (childFiles == null) {
      
      isOpen = false;
      onPressed = () => loadChildren(ref, file, loadingFiles, treeController);
    
    } else if (childFiles.isEmpty) {
    
      isOpen = null;
      onPressed = null;
    
    } else {
      
      isOpen = treeController.getExpansionState(file);
      onPressed = () => treeController.toggleExpansion(file);
    
    }

    return FolderButton(
      isOpen: isOpen,
      onPressed: onPressed,
    );
  }

  Future<void> loadChildren(
      WidgetRef ref,
      FileSystemEntity file,
      ValueNotifier<Set<String>> loadingFiles,
      TreeController<FileSystemEntity> treeController) async {
    loadingFiles.value.add(file.path);

    ref.read(projectLocalStateProvider().notifier).getChildren(file.path);

    loadingFiles.value.remove(file.path);

    treeController.expand(file);
  }
}
