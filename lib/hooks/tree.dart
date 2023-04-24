import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


/// ref: https://pub.dev/documentation/flutter_fancy_tree_view/latest/flutter_fancy_tree_view/TreeController-class.html

TreeController<Object> useTreeController({
  required Iterable<Object> roots,
  required ChildrenProvider<Object> childrenProvider,
}) {
  return use(_TreeControllerHook(roots: roots, childrenProvider: childrenProvider));
}

TreeController<FileSystemEntity> useTreeControllerForFileSystemEntities({
  required List<FileSystemEntity> roots,
}) {
  final treeController = useState(TreeController<FileSystemEntity>(
    roots: roots,
    childrenProvider: (FileSystemEntity parent) {
      if (parent is Directory) {
        return parent
            .listSync()
            .where((entity) => entity is Directory || entity is File);
      }
      return [];
    },
  ));

  return treeController.value;
}

class _TreeControllerHook extends Hook<TreeController> {
  final Iterable<Object> roots;
  final ChildrenProvider<Object> childrenProvider;

  const _TreeControllerHook({required this.roots, required this.childrenProvider});

  @override
  _TreeControllerHookState createState() => _TreeControllerHookState();
}

class _TreeControllerHookState extends HookState<TreeController, _TreeControllerHook> {
  late final TreeController _controller;

  @override
  void initHook() {
    _controller = TreeController(
      roots: hook.roots,
      childrenProvider: hook.childrenProvider,
    );
  }

  @override
  TreeController build(BuildContext context) {
    return _controller;
  }

  @override
  void dispose() {
    _controller.dispose();
  }
}


