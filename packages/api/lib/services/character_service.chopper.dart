// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CharacterService extends CharacterService {
  _$CharacterService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CharacterService;

  @override
  Future<Response<Map<String, dynamic>>> getCharacters({int? page}) {
    final Uri $url = Uri.parse('/character/');
    final Map<String, dynamic> $params = <String, dynamic>{'page': page};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
