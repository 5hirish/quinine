import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


import '../error.dart';
import 'routes.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
GoRouter router(RouterRef ref) {

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: CoreRoute.path,
    routes: $appRoutes,
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
  );
}