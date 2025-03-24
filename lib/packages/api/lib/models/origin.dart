import 'package:api/utils/index.dart';

part 'origin.g.dart';

@JsonSerializable()
class Origin {

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "url")
  final String url;

  Origin({required this.name, required this.url});

  factory Origin.fromJson(Map<String, dynamic> json) =>
      _$OriginFromJson(json);

  Map<String, dynamic> toJson() => _$OriginToJson(this);
}