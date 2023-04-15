import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quinine/themes/dark.dart';
import 'package:quinine/themes/light.dart';

import 'provider/theme.dart';
import 'window.dart';


class QuinineCore extends ConsumerWidget {
  const QuinineCore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
  final coreTheme = ref.watch(coreThemeStateProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      themeMode: coreTheme.mode,
      home: const WindowPage(title: 'Flutter Demo Home Page'),
    );
  }
}

  