import '../utils/index.dart';

abstract class CacheRepository {
  Future<void> chooseFavorite(Character character);

  Stream<List<Character>> fetchAllCharacter();

  Future<void> getCharacters(CacheDataSourceCallback callback);

  Future<void> updateData(List<Character> data);
}

class CacheRepositoryImpl implements CacheRepository {
  final CharacterDb characterDb;

  CacheRepositoryImpl({required this.characterDb});

  @override
  Future<void> chooseFavorite(Character character) async {
    await characterDb
        .addOrRemoveFromFavorite(CharacterMapper.entityToDataTable(character));
  }

  @override
  Future<void> getCharacters(CacheDataSourceCallback callback) async {
    try {
      final characters = await characterDb.getCharacters();
      final result =
          characters.map((c) => CharacterMapper.dataTableToEntity(c)).toList();
      callback.provideSuccess(result);
    } catch (e) {
      callback.provideError(e.toString());
    }
  }

  @override
  Stream<List<Character>> fetchAllCharacter() {
    return characterDb.getStreamOfCharacters().map((characters) {
      return characters
          .where((c) => c.isFavorite)
          .map((c) => CharacterMapper.dataTableToEntity(c))
          .toList();
    });
  }

  @override
  Future<void> updateData(List<Character> data) async {
    // await characterDb.updateCharactersFromNetwork(
    //     data.map((d) => CharacterMapper.entityToDataTable(d)).toList());
  }
}
