import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      theme: FlexThemeData.light(scheme: FlexScheme.brandBlue, useMaterial3: true, useMaterial3ErrorColors: true),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.brandBlue, useMaterial3: true, useMaterial3ErrorColors: true), 
      themeMode: coreTheme.mode,
      home: const WindowPage(title: 'Flutter Demo Home Page'),
    );
  }
}

  