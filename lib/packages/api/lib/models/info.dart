import 'package:api/utils/index.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  @JsonKey(name: "count")
  final int count;

  @JsonKey(name: "pages")
  final int pages;

  @JsonKey(name: "next")
  final String? next;

  @JsonKey(name: "prev")
  final String? prev;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Info(
      {required this.count,
      required this.pages,
      required this.next,
      required this.prev});

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
