import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'explorer/project.dart';

class ToolsView extends ConsumerWidget {
  const ToolsView(this.toolIndex, {super.key});

  final int? toolIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return toolIndex != null
        ? getToolView(toolIndex!)
        : const SizedBox.shrink();
  }

  Widget getToolView(int toolIndex) {
    switch (toolIndex) {
      case 0:
        return const ProjectExplorer();
      default:
        return const SizedBox.shrink();
    }
  }
}
