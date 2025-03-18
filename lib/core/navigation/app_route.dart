import '../utils/index.dart';

part 'app_route.g.dart';

const shellRestorationScopeId = 'shellRestorationScopeId';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final homeNavigatorKey = GlobalKey<NavigatorState>();
final favoriteNavigatorKey = GlobalKey<NavigatorState>();

@TypedStatefulShellRoute<HomeShellRoute>(
  branches: [
    TypedStatefulShellBranch<HomeBranch>(
      routes: [TypedGoRoute<HomeRoute>(path: '/', name: home, routes: [])],
    ),
    TypedStatefulShellBranch<FavoriteBranch>(
      routes: [
        TypedGoRoute<FavoriteRoute>(
          path: '/favoriteScreen',
          name: favorite,
          routes: [],
        ),
      ],
    ),
  ],
)
//==============================================================================
//***************************   HOME SHELL ROUTE   *****************************
//==============================================================================
class HomeShellRoute extends StatefulShellRouteData {
  const HomeShellRoute();

  static const String $restorationScopeId = shellRestorationScopeId;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNavBar(navigationShell: navigationShell);
  }
}

//==============================================================================
//***************************   SHELL BRANCHES   *******************************
//==============================================================================

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}

class FavoriteBranch extends StatefulShellBranchData {
  const FavoriteBranch();

  static const String $restorationScopeId = shellRestorationScopeId;
  static final GlobalKey<NavigatorState> $navigatorKey = favoriteNavigatorKey;
}

//==============================================================================
//********************************   ROUTES   **********************************
//==============================================================================

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create:
          (context) => CharacterCubit(
            characterRepository: context.read<CharacterRepository>(),
          ),
      child: HomeScreen(),
    );
  }
}

class FavoriteRoute extends GoRouteData {
  const FavoriteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create:
          (BuildContext context) =>
              FavoriteBloc(cacheDataSource: context.read<CacheRepository>())
                ..add(UpdateFavoriteList(characters: [])),
      child: FavoriteScreen(),
    );
  }
}
