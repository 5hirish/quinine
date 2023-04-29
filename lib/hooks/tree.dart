import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/project.dart';


/// ref: https://pub.dev/documentation/flutter_fancy_tree_view/latest/flutter_fancy_tree_view/TreeController-class.html

TreeController<Object> useTreeController({
  required Iterable<Object> roots,
  required ChildrenProvider<Object> childrenProvider,
}) {
  return use(_TreeControllerHook(roots: roots, childrenProvider: childrenProvider));
}

TreeController<FileSystemEntity> useTreeControllerForFileSystemEntities({
  required Iterable<FileSystemEntity> roots,
  required WidgetRef ref,
}) {

  final treeController = useState(TreeController<FileSystemEntity>(
    roots: roots,
    childrenProvider: (FileSystemEntity parent) => ref.read(projectFilesProvider.notifier).getProjectRootFiles() ?? const Iterable.empty(),
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


