import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';


import 'provider/theme.dart';
import 'router/router.dart';


class QuinineCore extends ConsumerWidget {
  const QuinineCore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final coreTheme = ref.watch(coreThemeStateProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          debugLog: true,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Quinine',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: FlexThemeData.light(scheme: FlexScheme.brandBlue, useMaterial3: true, useMaterial3ErrorColors: true),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.brandBlue, useMaterial3: true, useMaterial3ErrorColors: true), 
      themeMode: coreTheme.mode,
      routerConfig: router,
    );
  }
}

  