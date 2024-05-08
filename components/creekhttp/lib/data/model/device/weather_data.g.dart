// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeatherRecodeModelCollection on Isar {
  IsarCollection<WeatherRecodeModel> get weatherRecodeModels =>
      this.collection();
}

const WeatherRecodeModelSchema = CollectionSchema(
  name: r'WeatherRecodeModel',
  id: 3732797790063287898,
  properties: {
    r'downloadTime': PropertySchema(
      id: 0,
      name: r'downloadTime',
      type: IsarType.dateTime,
    ),
    r'mac': PropertySchema(
      id: 1,
      name: r'mac',
      type: IsarType.string,
    ),
    r'weatherCollectModelList': PropertySchema(
      id: 2,
      name: r'weatherCollectModelList',
      type: IsarType.objectList,
      target: r'WeatherCollectModel',
    )
  },
  estimateSize: _weatherRecodeModelEstimateSize,
  serialize: _weatherRecodeModelSerialize,
  deserialize: _weatherRecodeModelDeserialize,
  deserializeProp: _weatherRecodeModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'mac': IndexSchema(
      id: 3561895766210558431,
      name: r'mac',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'mac',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'WeatherCollectModel': WeatherCollectModelSchema,
    r'CurrentData': CurrentDataSchema,
    r'DailyData': DailyDataSchema,
    r'HourlyData': HourlyDataSchema
  },
  getId: _weatherRecodeModelGetId,
  getLinks: _weatherRecodeModelGetLinks,
  attach: _weatherRecodeModelAttach,
  version: '3.1.0+1',
);

int _weatherRecodeModelEstimateSize(
  WeatherRecodeModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mac;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.weatherCollectModelList;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[WeatherCollectModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          if (value != null) {
            bytesCount += WeatherCollectModelSchema.estimateSize(
                value, offsets, allOffsets);
          }
        }
      }
    }
  }
  return bytesCount;
}

void _weatherRecodeModelSerialize(
  WeatherRecodeModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.downloadTime);
  writer.writeString(offsets[1], object.mac);
  writer.writeObjectList<WeatherCollectModel>(
    offsets[2],
    allOffsets,
    WeatherCollectModelSchema.serialize,
    object.weatherCollectModelList,
  );
}

WeatherRecodeModel _weatherRecodeModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeatherRecodeModel();
  object.downloadTime = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.mac = reader.readStringOrNull(offsets[1]);
  object.weatherCollectModelList =
      reader.readObjectOrNullList<WeatherCollectModel>(
    offsets[2],
    WeatherCollectModelSchema.deserialize,
    allOffsets,
  );
  return object;
}

P _weatherRecodeModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNullList<WeatherCollectModel>(
        offset,
        WeatherCollectModelSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _weatherRecodeModelGetId(WeatherRecodeModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _weatherRecodeModelGetLinks(
    WeatherRecodeModel object) {
  return [];
}

void _weatherRecodeModelAttach(
    IsarCollection<dynamic> col, Id id, WeatherRecodeModel object) {
  object.id = id;
}

extension WeatherRecodeModelByIndex on IsarCollection<WeatherRecodeModel> {
  Future<WeatherRecodeModel?> getByMac(String? mac) {
    return getByIndex(r'mac', [mac]);
  }

  WeatherRecodeModel? getByMacSync(String? mac) {
    return getByIndexSync(r'mac', [mac]);
  }

  Future<bool> deleteByMac(String? mac) {
    return deleteByIndex(r'mac', [mac]);
  }

  bool deleteByMacSync(String? mac) {
    return deleteByIndexSync(r'mac', [mac]);
  }

  Future<List<WeatherRecodeModel?>> getAllByMac(List<String?> macValues) {
    final values = macValues.map((e) => [e]).toList();
    return getAllByIndex(r'mac', values);
  }

  List<WeatherRecodeModel?> getAllByMacSync(List<String?> macValues) {
    final values = macValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'mac', values);
  }

  Future<int> deleteAllByMac(List<String?> macValues) {
    final values = macValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'mac', values);
  }

  int deleteAllByMacSync(List<String?> macValues) {
    final values = macValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'mac', values);
  }

  Future<Id> putByMac(WeatherRecodeModel object) {
    return putByIndex(r'mac', object);
  }

  Id putByMacSync(WeatherRecodeModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'mac', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMac(List<WeatherRecodeModel> objects) {
    return putAllByIndex(r'mac', objects);
  }

  List<Id> putAllByMacSync(List<WeatherRecodeModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'mac', objects, saveLinks: saveLinks);
  }
}

extension WeatherRecodeModelQueryWhereSort
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QWhere> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeatherRecodeModelQueryWhere
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QWhereClause> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      macIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mac',
        value: [null],
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      macIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mac',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      macEqualTo(String? mac) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mac',
        value: [mac],
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterWhereClause>
      macNotEqualTo(String? mac) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mac',
              lower: [],
              upper: [mac],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mac',
              lower: [mac],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mac',
              lower: [mac],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mac',
              lower: [],
              upper: [mac],
              includeUpper: false,
            ));
      }
    });
  }
}

extension WeatherRecodeModelQueryFilter
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QFilterCondition> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      downloadTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'downloadTime',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      downloadTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'downloadTime',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      downloadTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'downloadTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      downloadTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'downloadTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      downloadTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'downloadTime',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      downloadTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'downloadTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mac',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mac',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mac',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mac',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mac',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      macIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mac',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weatherCollectModelList',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weatherCollectModelList',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNull(
        property: r'weatherCollectModelList',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListElementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.elementIsNotNull(
        property: r'weatherCollectModelList',
      ));
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weatherCollectModelList',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weatherCollectModelList',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weatherCollectModelList',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weatherCollectModelList',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weatherCollectModelList',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weatherCollectModelList',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension WeatherRecodeModelQueryObject
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QFilterCondition> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterFilterCondition>
      weatherCollectModelListElement(FilterQuery<WeatherCollectModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'weatherCollectModelList');
    });
  }
}

extension WeatherRecodeModelQueryLinks
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QFilterCondition> {}

extension WeatherRecodeModelQuerySortBy
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QSortBy> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      sortByDownloadTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadTime', Sort.asc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      sortByDownloadTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadTime', Sort.desc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      sortByMac() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.asc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      sortByMacDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.desc);
    });
  }
}

extension WeatherRecodeModelQuerySortThenBy
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QSortThenBy> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      thenByDownloadTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadTime', Sort.asc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      thenByDownloadTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadTime', Sort.desc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      thenByMac() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.asc);
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QAfterSortBy>
      thenByMacDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.desc);
    });
  }
}

extension WeatherRecodeModelQueryWhereDistinct
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QDistinct> {
  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QDistinct>
      distinctByDownloadTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'downloadTime');
    });
  }

  QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QDistinct> distinctByMac(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mac', caseSensitive: caseSensitive);
    });
  }
}

extension WeatherRecodeModelQueryProperty
    on QueryBuilder<WeatherRecodeModel, WeatherRecodeModel, QQueryProperty> {
  QueryBuilder<WeatherRecodeModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeatherRecodeModel, DateTime?, QQueryOperations>
      downloadTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'downloadTime');
    });
  }

  QueryBuilder<WeatherRecodeModel, String?, QQueryOperations> macProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mac');
    });
  }

  QueryBuilder<WeatherRecodeModel, List<WeatherCollectModel?>?,
      QQueryOperations> weatherCollectModelListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weatherCollectModelList');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const WeatherCollectModelSchema = Schema(
  name: r'WeatherCollectModel',
  id: -529339320555295345,
  properties: {
    r'cityName': PropertySchema(
      id: 0,
      name: r'cityName',
      type: IsarType.string,
    ),
    r'currentData': PropertySchema(
      id: 1,
      name: r'currentData',
      type: IsarType.object,
      target: r'CurrentData',
    ),
    r'dailyData': PropertySchema(
      id: 2,
      name: r'dailyData',
      type: IsarType.objectList,
      target: r'DailyData',
    ),
    r'displayName': PropertySchema(
      id: 3,
      name: r'displayName',
      type: IsarType.string,
    ),
    r'hourlyData': PropertySchema(
      id: 4,
      name: r'hourlyData',
      type: IsarType.objectList,
      target: r'HourlyData',
    )
  },
  estimateSize: _weatherCollectModelEstimateSize,
  serialize: _weatherCollectModelSerialize,
  deserialize: _weatherCollectModelDeserialize,
  deserializeProp: _weatherCollectModelDeserializeProp,
);

int _weatherCollectModelEstimateSize(
  WeatherCollectModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cityName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.currentData;
    if (value != null) {
      bytesCount += 3 +
          CurrentDataSchema.estimateSize(
              value, allOffsets[CurrentData]!, allOffsets);
    }
  }
  {
    final list = object.dailyData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[DailyData]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              DailyDataSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.displayName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.hourlyData;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[HourlyData]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              HourlyDataSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _weatherCollectModelSerialize(
  WeatherCollectModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cityName);
  writer.writeObject<CurrentData>(
    offsets[1],
    allOffsets,
    CurrentDataSchema.serialize,
    object.currentData,
  );
  writer.writeObjectList<DailyData>(
    offsets[2],
    allOffsets,
    DailyDataSchema.serialize,
    object.dailyData,
  );
  writer.writeString(offsets[3], object.displayName);
  writer.writeObjectList<HourlyData>(
    offsets[4],
    allOffsets,
    HourlyDataSchema.serialize,
    object.hourlyData,
  );
}

WeatherCollectModel _weatherCollectModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeatherCollectModel(
    cityName: reader.readStringOrNull(offsets[0]),
    currentData: reader.readObjectOrNull<CurrentData>(
      offsets[1],
      CurrentDataSchema.deserialize,
      allOffsets,
    ),
    dailyData: reader.readObjectList<DailyData>(
      offsets[2],
      DailyDataSchema.deserialize,
      allOffsets,
      DailyData(),
    ),
    displayName: reader.readStringOrNull(offsets[3]),
    hourlyData: reader.readObjectList<HourlyData>(
      offsets[4],
      HourlyDataSchema.deserialize,
      allOffsets,
      HourlyData(),
    ),
  );
  return object;
}

P _weatherCollectModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<CurrentData>(
        offset,
        CurrentDataSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectList<DailyData>(
        offset,
        DailyDataSchema.deserialize,
        allOffsets,
        DailyData(),
      )) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<HourlyData>(
        offset,
        HourlyDataSchema.deserialize,
        allOffsets,
        HourlyData(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension WeatherCollectModelQueryFilter on QueryBuilder<WeatherCollectModel,
    WeatherCollectModel, QFilterCondition> {
  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityName',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityName',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cityName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cityName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      cityNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cityName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      currentDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentData',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      currentDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentData',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dailyData',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dailyData',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dailyData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dailyData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dailyData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dailyData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dailyData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dailyData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'displayName',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'displayName',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      displayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hourlyData',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hourlyData',
      ));
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourlyData',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourlyData',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourlyData',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourlyData',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourlyData',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'hourlyData',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension WeatherCollectModelQueryObject on QueryBuilder<WeatherCollectModel,
    WeatherCollectModel, QFilterCondition> {
  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      currentData(FilterQuery<CurrentData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'currentData');
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      dailyDataElement(FilterQuery<DailyData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dailyData');
    });
  }

  QueryBuilder<WeatherCollectModel, WeatherCollectModel, QAfterFilterCondition>
      hourlyDataElement(FilterQuery<HourlyData> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'hourlyData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HourlyDataSchema = Schema(
  name: r'HourlyData',
  id: 7586102218112475424,
  properties: {
    r'iconCode': PropertySchema(
      id: 0,
      name: r'iconCode',
      type: IsarType.long,
    ),
    r'precipitationProbability': PropertySchema(
      id: 1,
      name: r'precipitationProbability',
      type: IsarType.long,
    ),
    r'temperature': PropertySchema(
      id: 2,
      name: r'temperature',
      type: IsarType.long,
    ),
    r'time': PropertySchema(
      id: 3,
      name: r'time',
      type: IsarType.long,
    ),
    r'uvIndex': PropertySchema(
      id: 4,
      name: r'uvIndex',
      type: IsarType.long,
    )
  },
  estimateSize: _hourlyDataEstimateSize,
  serialize: _hourlyDataSerialize,
  deserialize: _hourlyDataDeserialize,
  deserializeProp: _hourlyDataDeserializeProp,
);

int _hourlyDataEstimateSize(
  HourlyData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _hourlyDataSerialize(
  HourlyData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.iconCode);
  writer.writeLong(offsets[1], object.precipitationProbability);
  writer.writeLong(offsets[2], object.temperature);
  writer.writeLong(offsets[3], object.time);
  writer.writeLong(offsets[4], object.uvIndex);
}

HourlyData _hourlyDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = HourlyData(
    iconCode: reader.readLongOrNull(offsets[0]),
    precipitationProbability: reader.readLongOrNull(offsets[1]),
    temperature: reader.readLongOrNull(offsets[2]),
    time: reader.readLongOrNull(offsets[3]),
    uvIndex: reader.readLongOrNull(offsets[4]),
  );
  return object;
}

P _hourlyDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension HourlyDataQueryFilter
    on QueryBuilder<HourlyData, HourlyData, QFilterCondition> {
  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> iconCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iconCode',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      iconCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iconCode',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> iconCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      iconCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> iconCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> iconCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      precipitationProbabilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitationProbability',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      precipitationProbabilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitationProbability',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      precipitationProbabilityEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitationProbability',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      precipitationProbabilityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precipitationProbability',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      precipitationProbabilityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precipitationProbability',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      precipitationProbabilityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precipitationProbability',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      temperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      temperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      temperatureEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      temperatureGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      temperatureLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      temperatureBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> timeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> timeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> timeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> timeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> uvIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uvIndex',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      uvIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uvIndex',
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> uvIndexEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uvIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition>
      uvIndexGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uvIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> uvIndexLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uvIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<HourlyData, HourlyData, QAfterFilterCondition> uvIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uvIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HourlyDataQueryObject
    on QueryBuilder<HourlyData, HourlyData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DailyDataSchema = Schema(
  name: r'DailyData',
  id: -6367240091292278343,
  properties: {
    r'iconCode': PropertySchema(
      id: 0,
      name: r'iconCode',
      type: IsarType.long,
    ),
    r'moonPhase': PropertySchema(
      id: 1,
      name: r'moonPhase',
      type: IsarType.string,
    ),
    r'moonPhaseCode': PropertySchema(
      id: 2,
      name: r'moonPhaseCode',
      type: IsarType.string,
    ),
    r'moonriseTime': PropertySchema(
      id: 3,
      name: r'moonriseTime',
      type: IsarType.long,
    ),
    r'moonsetTime': PropertySchema(
      id: 4,
      name: r'moonsetTime',
      type: IsarType.long,
    ),
    r'sunriseTime': PropertySchema(
      id: 5,
      name: r'sunriseTime',
      type: IsarType.long,
    ),
    r'sunsetTime': PropertySchema(
      id: 6,
      name: r'sunsetTime',
      type: IsarType.long,
    ),
    r'temperatureMax': PropertySchema(
      id: 7,
      name: r'temperatureMax',
      type: IsarType.long,
    ),
    r'temperatureMin': PropertySchema(
      id: 8,
      name: r'temperatureMin',
      type: IsarType.long,
    ),
    r'time': PropertySchema(
      id: 9,
      name: r'time',
      type: IsarType.long,
    )
  },
  estimateSize: _dailyDataEstimateSize,
  serialize: _dailyDataSerialize,
  deserialize: _dailyDataDeserialize,
  deserializeProp: _dailyDataDeserializeProp,
);

int _dailyDataEstimateSize(
  DailyData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.moonPhase;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.moonPhaseCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _dailyDataSerialize(
  DailyData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.iconCode);
  writer.writeString(offsets[1], object.moonPhase);
  writer.writeString(offsets[2], object.moonPhaseCode);
  writer.writeLong(offsets[3], object.moonriseTime);
  writer.writeLong(offsets[4], object.moonsetTime);
  writer.writeLong(offsets[5], object.sunriseTime);
  writer.writeLong(offsets[6], object.sunsetTime);
  writer.writeLong(offsets[7], object.temperatureMax);
  writer.writeLong(offsets[8], object.temperatureMin);
  writer.writeLong(offsets[9], object.time);
}

DailyData _dailyDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DailyData(
    iconCode: reader.readLongOrNull(offsets[0]),
    moonPhase: reader.readStringOrNull(offsets[1]),
    moonPhaseCode: reader.readStringOrNull(offsets[2]),
    moonriseTime: reader.readLongOrNull(offsets[3]),
    moonsetTime: reader.readLongOrNull(offsets[4]),
    sunriseTime: reader.readLongOrNull(offsets[5]),
    sunsetTime: reader.readLongOrNull(offsets[6]),
    temperatureMax: reader.readLongOrNull(offsets[7]),
    temperatureMin: reader.readLongOrNull(offsets[8]),
    time: reader.readLongOrNull(offsets[9]),
  );
  return object;
}

P _dailyDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DailyDataQueryFilter
    on QueryBuilder<DailyData, DailyData, QFilterCondition> {
  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> iconCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iconCode',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      iconCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iconCode',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> iconCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> iconCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> iconCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> iconCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moonPhase',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moonPhase',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moonPhase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moonPhase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moonPhase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moonPhase',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'moonPhase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'moonPhase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'moonPhase',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'moonPhase',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonPhaseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moonPhase',
        value: '',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'moonPhase',
        value: '',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moonPhaseCode',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moonPhaseCode',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moonPhaseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moonPhaseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moonPhaseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moonPhaseCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'moonPhaseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'moonPhaseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'moonPhaseCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'moonPhaseCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moonPhaseCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonPhaseCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'moonPhaseCode',
        value: '',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonriseTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moonriseTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonriseTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moonriseTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonriseTimeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moonriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonriseTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moonriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonriseTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moonriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonriseTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moonriseTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonsetTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'moonsetTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonsetTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'moonsetTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonsetTimeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moonsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      moonsetTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moonsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonsetTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moonsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> moonsetTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moonsetTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      sunriseTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunriseTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      sunriseTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunriseTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunriseTimeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      sunriseTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunriseTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunriseTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunriseTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunsetTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunsetTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      sunsetTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunsetTime',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunsetTimeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      sunsetTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunsetTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> sunsetTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunsetTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperatureMax',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperatureMax',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMaxEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperatureMax',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMaxGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperatureMax',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMaxLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperatureMax',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMaxBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperatureMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperatureMin',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperatureMin',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMinEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperatureMin',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMinGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperatureMin',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMinLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperatureMin',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition>
      temperatureMinBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperatureMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> timeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> timeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> timeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<DailyData, DailyData, QAfterFilterCondition> timeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DailyDataQueryObject
    on QueryBuilder<DailyData, DailyData, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CurrentDataSchema = Schema(
  name: r'CurrentData',
  id: 8663020500108582355,
  properties: {
    r'airQuality': PropertySchema(
      id: 0,
      name: r'airQuality',
      type: IsarType.double,
    ),
    r'currentDateTime': PropertySchema(
      id: 1,
      name: r'currentDateTime',
      type: IsarType.dateTime,
    ),
    r'humidity': PropertySchema(
      id: 2,
      name: r'humidity',
      type: IsarType.long,
    ),
    r'iconCode': PropertySchema(
      id: 3,
      name: r'iconCode',
      type: IsarType.long,
    ),
    r'place': PropertySchema(
      id: 4,
      name: r'place',
      type: IsarType.string,
    ),
    r'pressureMeanSeaLevel': PropertySchema(
      id: 5,
      name: r'pressureMeanSeaLevel',
      type: IsarType.double,
    ),
    r'sunriseTime': PropertySchema(
      id: 6,
      name: r'sunriseTime',
      type: IsarType.long,
    ),
    r'sunsetTime': PropertySchema(
      id: 7,
      name: r'sunsetTime',
      type: IsarType.long,
    ),
    r'temperature': PropertySchema(
      id: 8,
      name: r'temperature',
      type: IsarType.long,
    ),
    r'temperatureMax': PropertySchema(
      id: 9,
      name: r'temperatureMax',
      type: IsarType.long,
    ),
    r'temperatureMin': PropertySchema(
      id: 10,
      name: r'temperatureMin',
      type: IsarType.long,
    ),
    r'ultraviolet': PropertySchema(
      id: 11,
      name: r'ultraviolet',
      type: IsarType.long,
    ),
    r'windDirection': PropertySchema(
      id: 12,
      name: r'windDirection',
      type: IsarType.long,
    ),
    r'windScale': PropertySchema(
      id: 13,
      name: r'windScale',
      type: IsarType.long,
    ),
    r'windSpeed': PropertySchema(
      id: 14,
      name: r'windSpeed',
      type: IsarType.long,
    )
  },
  estimateSize: _currentDataEstimateSize,
  serialize: _currentDataSerialize,
  deserialize: _currentDataDeserialize,
  deserializeProp: _currentDataDeserializeProp,
);

int _currentDataEstimateSize(
  CurrentData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.place;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _currentDataSerialize(
  CurrentData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.airQuality);
  writer.writeDateTime(offsets[1], object.currentDateTime);
  writer.writeLong(offsets[2], object.humidity);
  writer.writeLong(offsets[3], object.iconCode);
  writer.writeString(offsets[4], object.place);
  writer.writeDouble(offsets[5], object.pressureMeanSeaLevel);
  writer.writeLong(offsets[6], object.sunriseTime);
  writer.writeLong(offsets[7], object.sunsetTime);
  writer.writeLong(offsets[8], object.temperature);
  writer.writeLong(offsets[9], object.temperatureMax);
  writer.writeLong(offsets[10], object.temperatureMin);
  writer.writeLong(offsets[11], object.ultraviolet);
  writer.writeLong(offsets[12], object.windDirection);
  writer.writeLong(offsets[13], object.windScale);
  writer.writeLong(offsets[14], object.windSpeed);
}

CurrentData _currentDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CurrentData(
    airQuality: reader.readDoubleOrNull(offsets[0]),
    humidity: reader.readLongOrNull(offsets[2]),
    iconCode: reader.readLongOrNull(offsets[3]),
    place: reader.readStringOrNull(offsets[4]),
    pressureMeanSeaLevel: reader.readDoubleOrNull(offsets[5]),
    sunriseTime: reader.readLongOrNull(offsets[6]),
    sunsetTime: reader.readLongOrNull(offsets[7]),
    temperature: reader.readLongOrNull(offsets[8]),
    temperatureMax: reader.readLongOrNull(offsets[9]),
    temperatureMin: reader.readLongOrNull(offsets[10]),
    ultraviolet: reader.readLongOrNull(offsets[11]),
    windDirection: reader.readLongOrNull(offsets[12]),
    windScale: reader.readLongOrNull(offsets[13]),
    windSpeed: reader.readLongOrNull(offsets[14]),
  );
  object.currentDateTime = reader.readDateTimeOrNull(offsets[1]);
  return object;
}

P _currentDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CurrentDataQueryFilter
    on QueryBuilder<CurrentData, CurrentData, QFilterCondition> {
  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      airQualityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'airQuality',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      airQualityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'airQuality',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      airQualityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'airQuality',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      airQualityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'airQuality',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      airQualityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'airQuality',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      airQualityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'airQuality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      currentDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentDateTime',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      currentDateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentDateTime',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      currentDateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      currentDateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      currentDateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      currentDateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      humidityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'humidity',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      humidityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'humidity',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> humidityEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'humidity',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      humidityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'humidity',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      humidityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'humidity',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> humidityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'humidity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      iconCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iconCode',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      iconCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iconCode',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> iconCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      iconCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      iconCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconCode',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> iconCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'place',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      placeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'place',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'place',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      placeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'place',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'place',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'place',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'place',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'place',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'place',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'place',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition> placeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'place',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      placeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'place',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      pressureMeanSeaLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pressureMeanSeaLevel',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      pressureMeanSeaLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pressureMeanSeaLevel',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      pressureMeanSeaLevelEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pressureMeanSeaLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      pressureMeanSeaLevelGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pressureMeanSeaLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      pressureMeanSeaLevelLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pressureMeanSeaLevel',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      pressureMeanSeaLevelBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pressureMeanSeaLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunriseTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunriseTime',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunriseTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunriseTime',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunriseTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunriseTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunriseTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunriseTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunriseTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunriseTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunsetTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunsetTime',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunsetTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunsetTime',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunsetTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunsetTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunsetTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunsetTime',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      sunsetTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunsetTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperatureMax',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperatureMax',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMaxEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperatureMax',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMaxGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperatureMax',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMaxLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperatureMax',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMaxBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperatureMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperatureMin',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperatureMin',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMinEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperatureMin',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMinGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperatureMin',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMinLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperatureMin',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      temperatureMinBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperatureMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      ultravioletIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultraviolet',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      ultravioletIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultraviolet',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      ultravioletEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultraviolet',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      ultravioletGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultraviolet',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      ultravioletLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultraviolet',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      ultravioletBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultraviolet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windDirectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windDirection',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windDirectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windDirection',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windDirectionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windDirection',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windDirectionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windDirection',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windDirectionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windDirection',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windDirectionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windDirection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windScaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windScale',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windScaleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windScale',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windScaleEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windScale',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windScaleGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windScale',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windScaleLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windScale',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windScaleBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windScale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windSpeedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windSpeed',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windSpeedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windSpeed',
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windSpeedEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windSpeed',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windSpeedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windSpeed',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windSpeedLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windSpeed',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentData, CurrentData, QAfterFilterCondition>
      windSpeedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windSpeed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CurrentDataQueryObject
    on QueryBuilder<CurrentData, CurrentData, QFilterCondition> {}
