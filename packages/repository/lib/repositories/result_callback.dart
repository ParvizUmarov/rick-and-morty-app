import '../utils/index.dart';

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
