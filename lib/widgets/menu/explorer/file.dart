import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../logger.dart';

void showContextFileMenu(
    BuildContext context, Offset position, FileSystemEntity file) {
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
        position.dx, position.dy, position.dx, position.dy),
    items: [
      getFilePopupMenuItem('new', 'New'),
      getFilePopupMenuItem('copy', 'Copy'),
      getFilePopupMenuItem('move', 'Move'),
      getFilePopupMenuItem('rename', 'Rename'),
      getFilePopupMenuItem('delete', 'Delete'),
      getFilePopupMenuItem('split', 'Split'),
      getFilePopupMenuItem('find_usages', 'Find Usages'),
    ],
  ).then((value) {
    if (value != null) {
      logger.d('Selected ${file.path}: $value');
      // Handle the selected option (e.g., perform the corresponding action)
    }
  });
}

PopupMenuItem getFilePopupMenuItem(String value, String menuTitle) {
  return PopupMenuItem(
      value: value,
      height: 32,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox.square(
            dimension: 16,
            child: Center(
              child: getFilePopupMenuItemIcon(value),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                menuTitle,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ));
}

Widget getFilePopupMenuItemIcon(String value, {double? iconSize = 12}) {
  switch (value) {
    case 'new':
      return FaIcon(FontAwesomeIcons.fileCirclePlus, size: iconSize);
    case 'copy':
      return FaIcon(FontAwesomeIcons.copy, size: iconSize);
    case 'move':
      return FaIcon(FontAwesomeIcons.fileImport, size: iconSize);
    case 'rename':
      return FaIcon(FontAwesomeIcons.fileSignature, size: iconSize);
    case 'delete':
      return FaIcon(FontAwesomeIcons.fileCircleXmark, size: iconSize);

    default:
      return const SizedBox();
  }
}
