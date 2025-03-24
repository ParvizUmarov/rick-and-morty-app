import 'package:api/utils/index.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "url")
  final String url;

  Location({required this.name, required this.url});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
