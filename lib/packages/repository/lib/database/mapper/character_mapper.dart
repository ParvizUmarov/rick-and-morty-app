import '../../utils/index.dart';

class CharacterMapper {

  static Character dataTableToEntity(CharacterTableData data) {
    return Character(
        id: data.id,
        name: data.name,
        status: data.status,
        species: data.species,
        type: data.type,
        gender: data.gender,
        origin: data.origin,
        location: data.location,
        image: data.image,
        episode: data.episode,
        url: data.url,
        created: DateTime.parse(data.created),
        isFavorite: data.isFavorite);
  }

  static CharacterTableData entityToDataTable(Character data) {
    return CharacterTableData(
        id: data.id,
        name: data.name,
        status: data.status,
        species: data.species,
        type: data.type,
        gender: data.gender,
        origin: data.origin,
        location: data.location,
        image: data.image,
        episode: data.episode,
        url: data.url,
        created: data.created.toString(),
        isFavorite: false);
  }



}


