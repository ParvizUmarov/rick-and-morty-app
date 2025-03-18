import 'package:repository/cache/cache_repository.dart';
import 'package:repository/cloud/cloud_repository.dart';

import '../../core/utils/index.dart';

class App extends StatefulWidget {
  final ChopperApiClient apiClient;
  final CharacterDb characterDb;

  const App({super.key, required this.apiClient, required this.characterDb});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  late final cacheRepository = CacheRepositoryImpl(characterDb: widget.characterDb);

  late final characterRepository = CharacterRepositoryImpl(
    cacheDataSource: cacheRepository,
    cloudDataSource: CloudRepositoryImpl(
      characterService: widget.apiClient.getService(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        RepositoryProvider<CharacterRepository>.value(
          value: characterRepository,
        ),
        RepositoryProvider<CacheRepository>.value(
          value: cacheRepository,
        ),
        BlocProvider(
          create:
              (_) =>
              FavoriteCubit(cacheRepository: cacheRepository),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: LightAppTheme.getThemeData(),
            darkTheme: DarkAppTheme.getThemeData(),
            themeMode: themeMode,
            routerConfig: config,
          );
        },
      ),
    );
  }
}
