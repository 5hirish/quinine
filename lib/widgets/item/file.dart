import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../logger.dart';
import '../../provider/file.dart';
import '../../provider/project.dart';
import '../../provider/tab.dart';
import '../../utils.dart';

class FileExplorerItem extends HookConsumerWidget {
  const FileExplorerItem({
    super.key,
    required this.entry,
    required this.treeController,
  });

  final TreeEntry<FileSystemEntity> entry;
  final TreeController<FileSystemEntity> treeController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    FileSystemEntity file = entry.node;

    final isLoading = useState<bool>(false);

    bool isOpen = false;
    VoidCallback? onPressed;

    if (file is Directory) {

      List<FileSystemEntity>? childFiles = ref.read(projectFilesProvider.notifier).getProjectParentFiles(file.path);

      if (childFiles == null) {
        isOpen = false;
        onPressed = () => getFileDescendants(ref, file, isLoading, treeController);
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

    String fileName = getFileName(file);
    String fileExt = getFileExtension(file);
    bool isInstanceOfFile = file is File;

    return TreeIndentation(
      entry: entry,
      guide: const IndentGuide(indent: 12),
      
      child: InkWell(
        onTap: () => onPressed != null? onPressed(): null,
        child: getFileExplorerRow(
            fileName, isLoading.value, isInstanceOfFile,
            fileExt: fileExt, isOpen: isOpen
        )
      ),
    );
  }

  Future<void> getFileDescendants(
      WidgetRef ref,
      FileSystemEntity file,
      ValueNotifier<bool> loadingFiles,
      TreeController<FileSystemEntity> treeController) async {

    loadingFiles.value = true;

    await ref.read(projectFilesProvider.notifier).loadChildren(file.path);

    loadingFiles.value = false;

    treeController.expand(file);
  }

  void openFile(WidgetRef ref, FileSystemEntity file, {bool focusTab = true}) {
    List<String> openFiles = ref.read(openFilesPathProvider);
    ref.read(openFilesPathProvider.notifier).state = [...openFiles, file.path];

    if (focusTab) {
      ref.read(selectedTabIndexProvider.notifier).state = openFiles.length;
    }
  }

  Widget getFileExplorerRow(String fileName, bool isLoading, bool isFile,
      {String fileExt = "dart", bool isOpen = false}) {
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox.square(
          dimension: 24,
          child: Center(
            child: getLeadingFor(isLoading, isFile,
                isOpen: isOpen, fileExt: fileExt),
          ),
        ),
        Expanded(
          child: Text(
            fileName,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget getLeadingFor(bool isLoading, bool isFile,
      {String fileExt = ".dart", bool isOpen = false}) {
    
    if (isLoading) {
      return const Center(
        child: SizedBox.square(
          dimension: 10,
          child: CircularProgressIndicator(strokeWidth: 1),
        ),
      );
    }

    if (isFile) {
      return FaIcon(isOpen ? FontAwesomeIcons.solidFile : FontAwesomeIcons.file,
          size: 10);
    }

    return FaIcon(
        isOpen ? FontAwesomeIcons.folder : FontAwesomeIcons.solidFolder,
        size: 12);
  }
}
