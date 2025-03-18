import 'dart:convert';
import 'dart:developer';
import 'package:chopper/chopper.dart';

abstract class BaseRepository {
  Future<void> handleResponse<T, R>(
    Future<Response<T>> futureResponse, {
    required Function(T data) onSuccess,
    required Function(Object error) onError,
  }) async {
    try {
      final response = await futureResponse;

      if (response.body == null || response.statusCode >= 400) {
        log("response error: ${response.error}");

        if (response.error != null) {
          var errorData = json.decode(response.error as String);
          var error = errorData as Object;

          onError(error);
        } else {
          throw Exception("Unknown error occurred");
        }
      }

      log("handleResponse: ${response.body}");
      onSuccess(response.body!);
    } catch (e) {
      onError(e);
    }
  }
}
