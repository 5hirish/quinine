import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'provider/theme.dart';
import 'router/router.dart';

class QuinineCore extends ConsumerStatefulWidget {
  const QuinineCore({super.key});

  @override
  QuinineCoreState createState() => QuinineCoreState();
}

class QuinineCoreState extends ConsumerState<QuinineCore> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Todo: Add global root keyboard shortcuts here based on user preference
  @override
  Widget build(BuildContext context) {
    final coreTheme = ref.watch(coreThemeStateProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        debugLog: true,
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Quinine',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: coreTheme.lightTheme,
      darkTheme: coreTheme.darkTheme,
      themeMode: coreTheme.mode,
      routerConfig: router,
    );
  }
}
