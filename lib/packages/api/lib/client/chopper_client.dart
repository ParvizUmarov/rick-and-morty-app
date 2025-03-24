
import 'package:chopper/chopper.dart';
import '../api.dart';

class ChopperApiClient {
  static final ChopperApiClient _singleton =
  ChopperApiClient._internal();

  factory ChopperApiClient() {
    return _singleton;
  }

  ChopperApiClient._internal();

  static ChopperClient? client;

  void initializeChopperClient({required String baseUrl}) {
    client ??= ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      interceptors: [
        LoggingInterceptor(),
      ],
      services: [
        CharacterService.create()
      ],
      converter: const JsonConverter(),
    );
  }

  T getService<T extends ChopperService>() {
    if (client == null) {
      throw Exception('ChopperClient is not initialized.');
    }
    return client!.getService<T>();
  }
}