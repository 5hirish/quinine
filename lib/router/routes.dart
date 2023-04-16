import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../error.dart';
import '../window.dart';

part 'routes.g.dart';

@TypedGoRoute<CoreRoute>(path: CoreRoute.path)
class CoreRoute extends GoRouteData {
  const CoreRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const WindowPage();
}

@TypedGoRoute<ErrorRoute>(path: ErrorRoute.path)
class ErrorRoute extends GoRouteData {
  ErrorRoute({this.$extra});

  final String? $extra;
  static const path = '/error';

  @override
  Widget build(BuildContext context, GoRouterState state) => ErrorPage(error: $extra.toString());
}