
import '../utils/index.dart';

abstract class CacheDataSourceCallback {
  void provideSuccess(List<Character> results);

  void provideError(String error);
}

class CacheDataSourceCallbackImpl implements CacheDataSourceCallback {
  final Function(List<Character> results) onSuccess;
  final Function(String value) onError;

  CacheDataSourceCallbackImpl({required this.onSuccess, required this.onError});

  @override
  void provideError(String error) {
    onError(error);
  }

  @override
  void provideSuccess(List<Character> results) {
    onSuccess(results);
  }
}