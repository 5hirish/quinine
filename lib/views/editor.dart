import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/file.dart';
import '../provider/tab.dart';
import '../services/file.dart';
import '../utils.dart';
import 'editor/code.dart';
import 'landing.dart';

class EditorView extends HookConsumerWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final openFiles = ref.watch(openFilesPathProvider);
    final selectedIndex = ref.watch(selectedTabIndexProvider);

    void removeFile(int index, String filePath) {
      ref.read(openFilesPathProvider.notifier).state = openFiles.where((file) => file != filePath).toList();
      if (index > 0 && selectedIndex == index) {
        ref.read(selectedTabIndexProvider.notifier).state = index - 1;
      }
    }

    final tabbedViewController = useMemoized(() {
        List<TabData> tabs = openFiles.map((file) => createTabDataForFile(file)).toList();
        return TabbedViewController(tabs);
      },
      [openFiles],
    );

    if (tabbedViewController.tabs.isEmpty) {
      tabbedViewController.addTab(
        TabData(
          text: AppLocalizations.of(context)!.welcome,
          value: "${AppLocalizations.of(context)!.welcome} ${DateTime.now()}",
          closable: false,
          content: const LandingView()
        )
      );

      return TabbedViewTheme(
          data: TabbedViewThemeData.dark(),
          child: TabbedView(controller: tabbedViewController)
      );
    }

    if (openFiles.isEmpty) {
      return TabbedViewTheme(
          data: TabbedViewThemeData.dark(),
          child: TabbedView(controller: tabbedViewController)
      );
    }

    if (selectedIndex != null) {
      tabbedViewController.selectedIndex = selectedIndex;
    }

    return TabbedViewTheme(
      data: TabbedViewThemeData.dark(),
      child: TabbedView(
        selectToEnableButtons: false,
        controller: tabbedViewController,
        onTabSelection: (int? index) => ref.read(selectedTabIndexProvider.notifier).state = index,
        onTabClose: (int index, TabData tabData) => removeFile(index, tabData.value),
        contentBuilder: (BuildContext context, int tabIndex) {

          final filePath = openFiles[tabIndex];

          //Todo: If media open media viewer else open code_test.dart editor

          return CodeEditor(filePath: filePath);
        },

        // draggableTabBuilder: (int tabIndex, TabData tab, Widget tabWidget) {
        //   return Draggable<String>(
        //       feedback: Material(
        //           child: Container(
        //               padding: const EdgeInsets.all(4),
        //               decoration: BoxDecoration(border: Border.all()),
        //               child: Text(tab.text))),
        //       data: tab.text,
        //       onDragEnd: (details) {
        //         logger.d("Accepted ${details.wasAccepted}");
        //       },
        //       // dragAnchorStrategy: (Draggable<Object> draggable, BuildContext context, Offset position) {
        //       //   return Offset.zero;
        //       // },
        //       child: tabWidget
        //   );
        // },
      ),
    );
  }

  TabData createTabDataForFile(String filePath) {

    String fileName = FileService(filePath).getFilePathName();

    return TabData(
      text: fileName,
      value: filePath,
      closable: true,
    );
  }

}
