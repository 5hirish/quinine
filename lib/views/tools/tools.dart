import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/tools.dart';
import 'explorer/project.dart';


class ToolsView extends ConsumerWidget {
  const ToolsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toolIndex = ref.watch(coreToolBarStateProvider);

    return Visibility(
      visible: toolIndex != null,
      child: toolIndex != null? Expanded(
        flex: 1,
        child: getToolView(toolIndex),
      ): const SizedBox(),
    );
  }

  Widget getToolView(int toolIndex) {
    switch (toolIndex) {
      case 0:
        return const ProjectExplorer();
      default:
        return const SizedBox();
    }
  }
}
