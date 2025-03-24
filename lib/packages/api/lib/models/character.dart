import 'package:api/utils/index.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "status")
  final String status;

  @JsonKey(name: "species")
  final String species;

  @JsonKey(name: "type")
  final String type;

  @JsonKey(name: "gender")
  final String gender;

  @JsonKey(name: "origin")
  final Origin origin;

  @JsonKey(name: "location")
  final Location location;

  @JsonKey(name: "image")
  final String image;

  @JsonKey(name: "episode")
  final List<String> episode;

  @JsonKey(name: "url")
  final String url;

  @JsonKey(name: "created")
  final DateTime created;

  @JsonKey(name: "is_favorite")
  final bool? isFavorite;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Character(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required this.episode,
      required this.url,
      required this.created,
      this.isFavorite
      });

  Map<String, dynamic> toJson() => _$CharacterToJson(this);

}
