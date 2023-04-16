// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $coreRoute,
      $errorRoute,
    ];

RouteBase get $coreRoute => GoRouteData.$route(
      path: '/',
      factory: $CoreRouteExtension._fromState,
    );

extension $CoreRouteExtension on CoreRoute {
  static CoreRoute _fromState(GoRouterState state) => const CoreRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $errorRoute => GoRouteData.$route(
      path: '/error',
      factory: $ErrorRouteExtension._fromState,
    );

extension $ErrorRouteExtension on ErrorRoute {
  static ErrorRoute _fromState(GoRouterState state) => ErrorRoute(
        $extra: state.extra as String?,
      );

  String get location => GoRouteData.$location(
        '/error',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  void push(BuildContext context) => context.push(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);
}
