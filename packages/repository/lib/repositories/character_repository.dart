import '../utils/index.dart';

abstract class CharacterRepository {
  Future<void> getCharacters(int? page, ResultCallback callback);
}

class CharacterRepositoryImpl implements CharacterRepository {
  final CacheRepository cacheDataSource;
  final CloudRepository cloudDataSource;

  CharacterRepositoryImpl(
      {required this.cacheDataSource, required this.cloudDataSource});

  @override
  Future<void> getCharacters(int? page, ResultCallback callback) async {
    await cloudDataSource.getCharacters(
      page,
      CloudDataSourceCallbackImpl(
        onSuccess: (List<Character> results) async {
          callback.provideCharacterResult(results);
          await cacheDataSource.updateData(results);
        },
        onError: (String value) async {
          await cacheDataSource.getCharacters(
              CacheDataSourceCallbackImpl(onSuccess: (results) {
                 callback.provideCharacterResult(results);
              }, onError: (value) {
                callback.provideError(value);
              }));
        },
      ),
    );
  }



}

abstract class ResultCallback {
  void provideCharacterResult(List<Character> results);

  void provideError(String value);
}

class ResultCallbackImpl implements ResultCallback {
  final Function(List<Character> results) onSuccess;
  final Function(String) onError;

  ResultCallbackImpl({required this.onSuccess, required this.onError});

  @override
  void provideCharacterResult(List<Character> results) {
    onSuccess(results);
  }

  @override
  void provideError(String value) {
    onError(value);
  }
}
