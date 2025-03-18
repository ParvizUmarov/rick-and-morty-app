import '../../utils/index.dart';

class CharacterTable extends Table {
  IntColumn get id => integer().named('id').autoIncrement()();

  TextColumn get name => text().named('name')();

  TextColumn get status => text().named('status')();

  TextColumn get species => text().named('species')();

  TextColumn get type => text().named('type')();

  TextColumn get gender => text().named('gender')();

  TextColumn get url => text().named('url')();

  TextColumn get image => text().named('image')();

  TextColumn get created => text().named('created')();

  TextColumn get origin =>
      text().named('origin').map(const OriginConverter())();

  TextColumn get location =>
      text().named('location').map(const LocationConverter())();

  TextColumn get episode =>
      text().named('episode').map(const StringListConverter())();

  BoolColumn get isFavorite =>
      boolean().named("is_favorite").withDefault(const Constant(false))();

}
