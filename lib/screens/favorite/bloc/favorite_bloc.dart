import 'dart:async';
import 'dart:developer';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import '../../../core/utils/index.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc({required CacheRepository cacheDataSource})
      : _cacheDataSource = cacheDataSource,
        super(FavoriteInitial()) {
    _streamSubscription = _cacheDataSource.fetchAllCharacter().listen((characters) {
      log('stream: $characters');
      add(UpdateFavoriteList(characters: characters));
    });

    on<FavoriteEvent>((event, emit) async {
      if (event is UpdateFavoriteList) {
        await _mapGetTransaction(event, emit);
      }
    }, transformer: sequential());
  }

  final CacheRepository _cacheDataSource;
  late StreamSubscription<List<Character>> _streamSubscription;

  Future<void> _mapGetTransaction(UpdateFavoriteList event, Emitter<FavoriteState> emit) async {
    emit(FavoriteSuccess(characters: event.characters));
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
