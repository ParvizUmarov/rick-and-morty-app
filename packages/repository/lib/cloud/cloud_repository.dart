import '../utils/index.dart';

abstract class CloudRepository {
  Future<void> getCharacters(int? page, CloudDataSourceCallback callback);
}

class CloudRepositoryImpl extends BaseRepository implements CloudRepository {
  final CharacterService characterService;

  CloudRepositoryImpl({required this.characterService});

  @override
  Future<void> getCharacters(
      int? page, CloudDataSourceCallback callback) async {
    await handleResponse<Map<String, dynamic>, CharacterResult>(
        characterService.getCharacters(page: page ?? 1),
        onSuccess: (data) =>
            callback.provideSuccess(CharacterResult.fromJson(data).results),
        onError: (error) {
          callback.provideError(error.toString());
        });
  }
}


