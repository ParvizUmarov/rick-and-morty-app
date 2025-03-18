// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeShellRoute];

RouteBase get $homeShellRoute => StatefulShellRouteData.$route(
  restorationScopeId: HomeShellRoute.$restorationScopeId,
  factory: $HomeShellRouteExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      navigatorKey: HomeBranch.$navigatorKey,
      restorationScopeId: HomeBranch.$restorationScopeId,

      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'homeScreen',

          factory: $HomeRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      navigatorKey: FavoriteBranch.$navigatorKey,
      restorationScopeId: FavoriteBranch.$restorationScopeId,

      routes: [
        GoRouteData.$route(
          path: '/favoriteScreen',
          name: 'favoriteScreen',

          factory: $FavoriteRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $HomeShellRouteExtension on HomeShellRoute {
  static HomeShellRoute _fromState(GoRouterState state) =>
      const HomeShellRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FavoriteRouteExtension on FavoriteRoute {
  static FavoriteRoute _fromState(GoRouterState state) => const FavoriteRoute();

  String get location => GoRouteData.$location('/favoriteScreen');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
