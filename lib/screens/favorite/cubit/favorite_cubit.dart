import 'dart:developer';
import '../../../core/utils/index.dart';


class FavoriteCubit extends Cubit<bool> {
  FavoriteCubit({required CacheRepository cacheRepository})
      :  _cacheRepository = cacheRepository, super(false);

  final CacheRepository _cacheRepository;

  Future<void> chooseFavorite(Character character) async {
    try{
      await _cacheRepository.chooseFavorite(character);
      emit(true);
    }catch (e){
      log("error while call chooseFavorite: $e");
    }
  }

}
