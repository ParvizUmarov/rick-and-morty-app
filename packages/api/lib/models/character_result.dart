import 'package:api/utils/index.dart';

part 'character_result.g.dart';

@JsonSerializable()
class CharacterResult {
  @JsonKey(name: "info")
  final Info info;

  @JsonKey(name: "results")
  final List<Character> results;

  factory CharacterResult.fromJson(Map<String, dynamic> json) =>
      _$CharacterResultFromJson(json);

  CharacterResult({required this.info, required this.results});

  Map<String, dynamic> toJson() => _$CharacterResultToJson(this);
}
