import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quinine/provider/theme.dart';

import 'provider/counter.dart';

class WindowPage extends ConsumerWidget {
  const WindowPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final counter = ref.watch(counterStateProvider);
    final coreTheme = ref.watch(coreThemeStateProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          DropdownButton<ThemeMode>(
            value: coreTheme.mode,
            icon: const Icon(Icons.arrow_drop_down),
            onChanged: (ThemeMode? newMode) {
              if (newMode != null) {
                ref.read(coreThemeStateProvider.notifier).changeMode(newMode);
              }
            },
            items: const [
              DropdownMenuItem<ThemeMode>(
                value: ThemeMode.light,
                child: Text('Light'),
              ),
              DropdownMenuItem<ThemeMode>(
                value: ThemeMode.dark,
                child: Text('Dark'),
              ),
              DropdownMenuItem<ThemeMode>(
                value: ThemeMode.system,
                child: Text('System'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.nButtonCounter(counter),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterStateProvider.notifier).incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
