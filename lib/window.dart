import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider/tools.dart';
import 'widgets/bar/app_bar.dart';
import 'widgets/bar/tool_bar.dart';

class WindowPage extends ConsumerWidget {
  const WindowPage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final toolIndex = ref.watch(coreToolBarStateProvider);
    
    return Scaffold(
      appBar: const CoreAppBar(title: "Quinine IDE"),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const CoreToolBar(),

            Expanded(
              child: Text(
                AppLocalizations.of(context)!.nButtonCounter(toolIndex ?? 0),
              ),
            ),

            Expanded(
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
