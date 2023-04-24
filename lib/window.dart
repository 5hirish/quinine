import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quinine/views/tools/tools.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets/bar/app_bar.dart';
import 'widgets/bar/tool_bar.dart';

class WindowPage extends ConsumerWidget {
  const WindowPage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return Scaffold(
      appBar: const CoreAppBar(title: "Quinine"),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const CoreToolBar(),

            const ResponsiveVisibility(
              hiddenWhen: [
                Condition.smallerThan(name: TABLET)
              ],
              child: ToolsView(),
            ),

            Expanded(
              flex: 3,
              child: Text(
                AppLocalizations.of(context)!.helloWorld,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
