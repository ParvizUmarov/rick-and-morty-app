import 'package:chopper/chopper.dart';

part 'character_service.chopper.dart';

@ChopperApi(baseUrl: '/character')
abstract class CharacterService extends ChopperService {
  static CharacterService create([ChopperClient? client]) =>
      _$CharacterService(client);

  @GET(path: "/")
  Future<Response<Map<String, dynamic>>> getCharacters({@Query('page') int? page});

}