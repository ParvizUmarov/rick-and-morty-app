
import '../../utils/index.dart';

class FavoriteTable extends Table {
  IntColumn get id => integer().references(CharacterTable, #id)();
}