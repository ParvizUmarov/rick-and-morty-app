// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $CharacterTableTable extends CharacterTable
    with TableInfo<$CharacterTableTable, CharacterTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharacterTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _speciesMeta =
      const VerificationMeta('species');
  @override
  late final GeneratedColumn<String> species = GeneratedColumn<String>(
      'species', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<String> created = GeneratedColumn<String>(
      'created', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<Origin, String> origin =
      GeneratedColumn<String>('origin', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Origin>($CharacterTableTable.$converterorigin);
  @override
  late final GeneratedColumnWithTypeConverter<Location, String> location =
      GeneratedColumn<String>('location', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Location>($CharacterTableTable.$converterlocation);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> episode =
      GeneratedColumn<String>('episode', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($CharacterTableTable.$converterepisode);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        status,
        species,
        type,
        gender,
        url,
        image,
        created,
        origin,
        location,
        episode,
        isFavorite
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'character_table';
  @override
  VerificationContext validateIntegrity(Insertable<CharacterTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('species')) {
      context.handle(_speciesMeta,
          species.isAcceptableOrUnknown(data['species']!, _speciesMeta));
    } else if (isInserting) {
      context.missing(_speciesMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    } else if (isInserting) {
      context.missing(_createdMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CharacterTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharacterTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      species: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}species'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created'])!,
      origin: $CharacterTableTable.$converterorigin.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}origin'])!),
      location: $CharacterTableTable.$converterlocation.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location'])!),
      episode: $CharacterTableTable.$converterepisode.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}episode'])!),
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
    );
  }

  @override
  $CharacterTableTable createAlias(String alias) {
    return $CharacterTableTable(attachedDatabase, alias);
  }

  static TypeConverter<Origin, String> $converterorigin =
      const OriginConverter();
  static TypeConverter<Location, String> $converterlocation =
      const LocationConverter();
  static TypeConverter<List<String>, String> $converterepisode =
      const StringListConverter();
}

class CharacterTableData extends DataClass
    implements Insertable<CharacterTableData> {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String url;
  final String image;
  final String created;
  final Origin origin;
  final Location location;
  final List<String> episode;
  final bool isFavorite;
  const CharacterTableData(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.url,
      required this.image,
      required this.created,
      required this.origin,
      required this.location,
      required this.episode,
      required this.isFavorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['status'] = Variable<String>(status);
    map['species'] = Variable<String>(species);
    map['type'] = Variable<String>(type);
    map['gender'] = Variable<String>(gender);
    map['url'] = Variable<String>(url);
    map['image'] = Variable<String>(image);
    map['created'] = Variable<String>(created);
    {
      map['origin'] =
          Variable<String>($CharacterTableTable.$converterorigin.toSql(origin));
    }
    {
      map['location'] = Variable<String>(
          $CharacterTableTable.$converterlocation.toSql(location));
    }
    {
      map['episode'] = Variable<String>(
          $CharacterTableTable.$converterepisode.toSql(episode));
    }
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  CharacterTableCompanion toCompanion(bool nullToAbsent) {
    return CharacterTableCompanion(
      id: Value(id),
      name: Value(name),
      status: Value(status),
      species: Value(species),
      type: Value(type),
      gender: Value(gender),
      url: Value(url),
      image: Value(image),
      created: Value(created),
      origin: Value(origin),
      location: Value(location),
      episode: Value(episode),
      isFavorite: Value(isFavorite),
    );
  }

  factory CharacterTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<String>(json['status']),
      species: serializer.fromJson<String>(json['species']),
      type: serializer.fromJson<String>(json['type']),
      gender: serializer.fromJson<String>(json['gender']),
      url: serializer.fromJson<String>(json['url']),
      image: serializer.fromJson<String>(json['image']),
      created: serializer.fromJson<String>(json['created']),
      origin: serializer.fromJson<Origin>(json['origin']),
      location: serializer.fromJson<Location>(json['location']),
      episode: serializer.fromJson<List<String>>(json['episode']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<String>(status),
      'species': serializer.toJson<String>(species),
      'type': serializer.toJson<String>(type),
      'gender': serializer.toJson<String>(gender),
      'url': serializer.toJson<String>(url),
      'image': serializer.toJson<String>(image),
      'created': serializer.toJson<String>(created),
      'origin': serializer.toJson<Origin>(origin),
      'location': serializer.toJson<Location>(location),
      'episode': serializer.toJson<List<String>>(episode),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  CharacterTableData copyWith(
          {int? id,
          String? name,
          String? status,
          String? species,
          String? type,
          String? gender,
          String? url,
          String? image,
          String? created,
          Origin? origin,
          Location? location,
          List<String>? episode,
          bool? isFavorite}) =>
      CharacterTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        species: species ?? this.species,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        url: url ?? this.url,
        image: image ?? this.image,
        created: created ?? this.created,
        origin: origin ?? this.origin,
        location: location ?? this.location,
        episode: episode ?? this.episode,
        isFavorite: isFavorite ?? this.isFavorite,
      );
  CharacterTableData copyWithCompanion(CharacterTableCompanion data) {
    return CharacterTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      status: data.status.present ? data.status.value : this.status,
      species: data.species.present ? data.species.value : this.species,
      type: data.type.present ? data.type.value : this.type,
      gender: data.gender.present ? data.gender.value : this.gender,
      url: data.url.present ? data.url.value : this.url,
      image: data.image.present ? data.image.value : this.image,
      created: data.created.present ? data.created.value : this.created,
      origin: data.origin.present ? data.origin.value : this.origin,
      location: data.location.present ? data.location.value : this.location,
      episode: data.episode.present ? data.episode.value : this.episode,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharacterTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('url: $url, ')
          ..write('image: $image, ')
          ..write('created: $created, ')
          ..write('origin: $origin, ')
          ..write('location: $location, ')
          ..write('episode: $episode, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, status, species, type, gender, url,
      image, created, origin, location, episode, isFavorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.status == this.status &&
          other.species == this.species &&
          other.type == this.type &&
          other.gender == this.gender &&
          other.url == this.url &&
          other.image == this.image &&
          other.created == this.created &&
          other.origin == this.origin &&
          other.location == this.location &&
          other.episode == this.episode &&
          other.isFavorite == this.isFavorite);
}

class CharacterTableCompanion extends UpdateCompanion<CharacterTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> status;
  final Value<String> species;
  final Value<String> type;
  final Value<String> gender;
  final Value<String> url;
  final Value<String> image;
  final Value<String> created;
  final Value<Origin> origin;
  final Value<Location> location;
  final Value<List<String>> episode;
  final Value<bool> isFavorite;
  const CharacterTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
    this.species = const Value.absent(),
    this.type = const Value.absent(),
    this.gender = const Value.absent(),
    this.url = const Value.absent(),
    this.image = const Value.absent(),
    this.created = const Value.absent(),
    this.origin = const Value.absent(),
    this.location = const Value.absent(),
    this.episode = const Value.absent(),
    this.isFavorite = const Value.absent(),
  });
  CharacterTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String url,
    required String image,
    required String created,
    required Origin origin,
    required Location location,
    required List<String> episode,
    this.isFavorite = const Value.absent(),
  })  : name = Value(name),
        status = Value(status),
        species = Value(species),
        type = Value(type),
        gender = Value(gender),
        url = Value(url),
        image = Value(image),
        created = Value(created),
        origin = Value(origin),
        location = Value(location),
        episode = Value(episode);
  static Insertable<CharacterTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? status,
    Expression<String>? species,
    Expression<String>? type,
    Expression<String>? gender,
    Expression<String>? url,
    Expression<String>? image,
    Expression<String>? created,
    Expression<String>? origin,
    Expression<String>? location,
    Expression<String>? episode,
    Expression<bool>? isFavorite,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (species != null) 'species': species,
      if (type != null) 'type': type,
      if (gender != null) 'gender': gender,
      if (url != null) 'url': url,
      if (image != null) 'image': image,
      if (created != null) 'created': created,
      if (origin != null) 'origin': origin,
      if (location != null) 'location': location,
      if (episode != null) 'episode': episode,
      if (isFavorite != null) 'is_favorite': isFavorite,
    });
  }

  CharacterTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? status,
      Value<String>? species,
      Value<String>? type,
      Value<String>? gender,
      Value<String>? url,
      Value<String>? image,
      Value<String>? created,
      Value<Origin>? origin,
      Value<Location>? location,
      Value<List<String>>? episode,
      Value<bool>? isFavorite}) {
    return CharacterTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      url: url ?? this.url,
      image: image ?? this.image,
      created: created ?? this.created,
      origin: origin ?? this.origin,
      location: location ?? this.location,
      episode: episode ?? this.episode,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (species.present) {
      map['species'] = Variable<String>(species.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (created.present) {
      map['created'] = Variable<String>(created.value);
    }
    if (origin.present) {
      map['origin'] = Variable<String>(
          $CharacterTableTable.$converterorigin.toSql(origin.value));
    }
    if (location.present) {
      map['location'] = Variable<String>(
          $CharacterTableTable.$converterlocation.toSql(location.value));
    }
    if (episode.present) {
      map['episode'] = Variable<String>(
          $CharacterTableTable.$converterepisode.toSql(episode.value));
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('url: $url, ')
          ..write('image: $image, ')
          ..write('created: $created, ')
          ..write('origin: $origin, ')
          ..write('location: $location, ')
          ..write('episode: $episode, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }
}

abstract class _$CharacterDb extends GeneratedDatabase {
  _$CharacterDb(QueryExecutor e) : super(e);
  $CharacterDbManager get managers => $CharacterDbManager(this);
  late final $CharacterTableTable characterTable = $CharacterTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [characterTable];
}

typedef $$CharacterTableTableCreateCompanionBuilder = CharacterTableCompanion
    Function({
  Value<int> id,
  required String name,
  required String status,
  required String species,
  required String type,
  required String gender,
  required String url,
  required String image,
  required String created,
  required Origin origin,
  required Location location,
  required List<String> episode,
  Value<bool> isFavorite,
});
typedef $$CharacterTableTableUpdateCompanionBuilder = CharacterTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> status,
  Value<String> species,
  Value<String> type,
  Value<String> gender,
  Value<String> url,
  Value<String> image,
  Value<String> created,
  Value<Origin> origin,
  Value<Location> location,
  Value<List<String>> episode,
  Value<bool> isFavorite,
});

class $$CharacterTableTableFilterComposer
    extends Composer<_$CharacterDb, $CharacterTableTable> {
  $$CharacterTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Origin, Origin, String> get origin =>
      $composableBuilder(
          column: $table.origin,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Location, Location, String> get location =>
      $composableBuilder(
          column: $table.location,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get episode => $composableBuilder(
          column: $table.episode,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite, builder: (column) => ColumnFilters(column));
}

class $$CharacterTableTableOrderingComposer
    extends Composer<_$CharacterDb, $CharacterTableTable> {
  $$CharacterTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get origin => $composableBuilder(
      column: $table.origin, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get episode => $composableBuilder(
      column: $table.episode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite, builder: (column) => ColumnOrderings(column));
}

class $$CharacterTableTableAnnotationComposer
    extends Composer<_$CharacterDb, $CharacterTableTable> {
  $$CharacterTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get species =>
      $composableBuilder(column: $table.species, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Origin, String> get origin =>
      $composableBuilder(column: $table.origin, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Location, String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get episode =>
      $composableBuilder(column: $table.episode, builder: (column) => column);

  GeneratedColumn<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite, builder: (column) => column);
}

class $$CharacterTableTableTableManager extends RootTableManager<
    _$CharacterDb,
    $CharacterTableTable,
    CharacterTableData,
    $$CharacterTableTableFilterComposer,
    $$CharacterTableTableOrderingComposer,
    $$CharacterTableTableAnnotationComposer,
    $$CharacterTableTableCreateCompanionBuilder,
    $$CharacterTableTableUpdateCompanionBuilder,
    (
      CharacterTableData,
      BaseReferences<_$CharacterDb, $CharacterTableTable, CharacterTableData>
    ),
    CharacterTableData,
    PrefetchHooks Function()> {
  $$CharacterTableTableTableManager(
      _$CharacterDb db, $CharacterTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharacterTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CharacterTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharacterTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> species = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> gender = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> created = const Value.absent(),
            Value<Origin> origin = const Value.absent(),
            Value<Location> location = const Value.absent(),
            Value<List<String>> episode = const Value.absent(),
            Value<bool> isFavorite = const Value.absent(),
          }) =>
              CharacterTableCompanion(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            url: url,
            image: image,
            created: created,
            origin: origin,
            location: location,
            episode: episode,
            isFavorite: isFavorite,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String status,
            required String species,
            required String type,
            required String gender,
            required String url,
            required String image,
            required String created,
            required Origin origin,
            required Location location,
            required List<String> episode,
            Value<bool> isFavorite = const Value.absent(),
          }) =>
              CharacterTableCompanion.insert(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            url: url,
            image: image,
            created: created,
            origin: origin,
            location: location,
            episode: episode,
            isFavorite: isFavorite,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CharacterTableTableProcessedTableManager = ProcessedTableManager<
    _$CharacterDb,
    $CharacterTableTable,
    CharacterTableData,
    $$CharacterTableTableFilterComposer,
    $$CharacterTableTableOrderingComposer,
    $$CharacterTableTableAnnotationComposer,
    $$CharacterTableTableCreateCompanionBuilder,
    $$CharacterTableTableUpdateCompanionBuilder,
    (
      CharacterTableData,
      BaseReferences<_$CharacterDb, $CharacterTableTable, CharacterTableData>
    ),
    CharacterTableData,
    PrefetchHooks Function()>;

class $CharacterDbManager {
  final _$CharacterDb _db;
  $CharacterDbManager(this._db);
  $$CharacterTableTableTableManager get characterTable =>
      $$CharacterTableTableTableManager(_db, _db.characterTable);
}
