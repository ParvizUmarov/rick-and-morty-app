import '../utils/index.dart';

abstract class CloudDataSourceCallback {
  void provideSuccess(List<Character> results);

  void provideError(String error);
}

class CloudDataSourceCallbackImpl implements CloudDataSourceCallback {
  final Function(List<Character> results) onSuccess;
  final Function(String value) onError;

  CloudDataSourceCallbackImpl({required this.onSuccess, required this.onError});

  @override
  void provideError(String error) {
    onError(error);
  }

  @override
  void provideSuccess(List<Character> results) {
    onSuccess(results);
  }
}
