import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../logger.dart';
import '../../utils.dart';
import '../menu/explorer/file.dart';

class FileExplorerItem extends HookConsumerWidget {
  const FileExplorerItem({
    super.key,
    required this.entry,
    required this.onPressed,
    required this.isOpen,
    required this.isFileLoading,
  });

  final TreeEntry<FileSystemEntity> entry;
  final VoidCallback? onPressed;
  final bool isOpen;
  final bool isFileLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FileSystemEntity file = entry.node;

    String fileName = getFileName(file);
    String fileExt = getFileExtension(file);
    bool isInstanceOfFile = file is File;

    return TreeIndentation(
      entry: entry,
      guide: const IndentGuide(indent: 12),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onSecondaryTapDown: (details) {
          showContextFileMenu(context, details.globalPosition, file);
        },
        child: InkWell(
            onTap: () => onPressed != null ? onPressed!() : null,
            child: getFileExplorerRow(fileName, isFileLoading, isInstanceOfFile,
                fileExt: fileExt, isOpen: isOpen)),
      ),
    );
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
