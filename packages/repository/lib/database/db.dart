import 'dart:developer';

import 'package:path/path.dart' as path;
import '../utils/index.dart';

part 'db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'character.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [CharacterTable])
class CharacterDb extends _$CharacterDb {
  CharacterDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<CharacterTableData>> getStreamOfCharacters() {
    return select(characterTable).watch();
  }

  Future<List<CharacterTableData>> getCharacters() async {
    return await select(characterTable).get();
  }

  Future<void> addOrRemoveFromFavorite(int id) async {
    final characterExist = await (select(characterTable)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
    if (characterExist != null) {
      final updateCharacter =
          characterExist.copyWith(isFavorite: !characterExist.isFavorite);

      await (update(characterTable)..where((tbl) => tbl.id.equals(id)))
          .write(updateCharacter);
    }
    // else {
    //   await into(characterTable).insert(entity);
    // }
  }

  Future<void> updateCharactersFromNetwork(List<CharacterTableData> list) async {

    batch((batch) {
      batch.insertAll(characterTable, list, mode: InsertMode.insertOrIgnore);
    });

  }
}
