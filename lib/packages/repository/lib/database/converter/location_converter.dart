import '../../utils/index.dart';

class LocationConverter extends TypeConverter<Location, String> {
  const LocationConverter();

  @override
  Location fromSql(String fromDb) {
    return Location.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(Location value) {
    return jsonEncode(value.toJson());
  }
}