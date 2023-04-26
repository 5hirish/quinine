import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quinine/provider/file.dart';
import 'package:quinine/views/landing.dart';
import 'package:tabbed_view/tabbed_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/tab.dart';
import '../utils.dart';
import 'editor/code.dart';

class EditorView extends HookConsumerWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final openFiles = ref.watch(openFilesPathProvider);
    final selectedIndex = ref.watch(selectedTabIndexProvider);

    void addFile(String filePath) {
      ref.read(openFilesPathProvider.notifier).state = [...openFiles, filePath];
    }



    void removeFile(String filePath) {
      ref.read(openFilesPathProvider.notifier).state = openFiles.where((file) => file != filePath).toList();
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

    if (selectedIndex != null) {
      tabbedViewController.selectedIndex = selectedIndex;
    }

    return TabbedViewTheme(
      data: TabbedViewThemeData.dark(),
      child: TabbedView(
          controller: tabbedViewController,
          onTabSelection: (int? index) => ref.read(selectedTabIndexProvider.notifier).state = index,
          onTabClose: (int index, TabData tabData) => removeFile(tabData.value),
          contentBuilder: (BuildContext context, int tabIndex) {

            final filePath = openFiles[tabIndex];
            final fileExtension = getFilePathExtension(filePath);

            // If media open media viewer else open code editor

            return CodeEditor(filePath: filePath);
          }
      ),
    );
  }

  TabData createTabDataForFile(String filePath) {

    String fileName = getFilePathName(filePath);

    return TabData(
      text: fileName,
      value: filePath,
      closable: true,
    );
  }

}
