import '../../utils/index.dart';

class OriginConverter extends TypeConverter<Origin, String> {
  const OriginConverter();

  @override
  Origin fromSql(String fromDb) {
    return Origin.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(Origin value) {
    return jsonEncode(value.toJson());
  }
}
