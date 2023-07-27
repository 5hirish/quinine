import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:quinine/provider/notifications.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'hooks/multi_view.dart';
import 'provider/tools.dart';
import 'views/editor.dart';
import 'views/tools/tools.dart';
import 'widgets/bar/app_bar.dart';
import 'widgets/bar/tool_bar.dart';
import 'widgets/notification/in_app.dart';

class WindowPage extends HookConsumerWidget {
  const WindowPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toolIndex = ref.watch(coreToolBarStateProvider);
    double? weight = ref.watch(toolWindowWeightProvider);

    final multiSplitViewController = useMultiSplitViewController();

    if (toolIndex != null) {
      multiSplitViewController.areas = [
        Area(
            minimalSize: 64,
            weight: weight), // 10% of the screen for tools, 90% for the editor
      ];
    } else {
      multiSplitViewController.areas = [
        Area(weight: 0),
      ];
    }

    return Scaffold(
      appBar: const CoreAppBar(title: "Quinine"),
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const CoreToolBar(),
                Expanded(
                  child: MultiSplitView(
                    controller: multiSplitViewController,
                    onWeightChange: () {
                      double? weight =
                          multiSplitViewController.getArea(0).weight;
                      if (weight != null && weight > 0) {
                        ref
                            .read(toolWindowWeightProvider.notifier)
                            .setWeight(weight);
                      }
                    },
                    children: getMultiViewChildren(toolIndex),
                  ),
                ),
              ],
            ),
            const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 38.0, right: 8.0),
                  child: InAppNotificationWidget(),
                )),
          ],
        ),
      ),
    );
  }

  List<Widget> getMultiViewChildren(int? toolIndex) {
    return [
      toolIndex != null
          ? ResponsiveVisibility(
              hiddenConditions: [
                Condition.smallerThan(name: TABLET, value: 451)
              ],
              child: ToolsView(toolIndex),
            )
          : const SizedBox.shrink(),
      const EditorView()
    ];
  }
}

// Create stateless widget for notification
class InAppNotificationWidget extends ConsumerWidget {
  const InAppNotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notification = ref.watch(inAppNotificationStateProvider);

    if (notification == null || notification.description.isEmpty) {
      return const SizedBox.shrink();
    }

    return getNotification(
      context,
      notification.description,
      title: notification.title,
      code: notification.code,
      logLevel: notification.logLevel,
    );
  }
}
