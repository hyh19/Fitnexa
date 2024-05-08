// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wear_medal.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWearMedalModelCollection on Isar {
  IsarCollection<WearMedalModel> get wearMedalModels => this.collection();
}

const WearMedalModelSchema = CollectionSchema(
  name: r'WearMedalModel',
  id: -6290225944677137576,
  properties: {
    r'medalId': PropertySchema(
      id: 0,
      name: r'medalId',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 1,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _wearMedalModelEstimateSize,
  serialize: _wearMedalModelSerialize,
  deserialize: _wearMedalModelDeserialize,
  deserializeProp: _wearMedalModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'userId': IndexSchema(
      id: -2005826577402374815,
      name: r'userId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'userId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _wearMedalModelGetId,
  getLinks: _wearMedalModelGetLinks,
  attach: _wearMedalModelAttach,
  version: '3.1.0+1',
);

int _wearMedalModelEstimateSize(
  WearMedalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.medalId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _wearMedalModelSerialize(
  WearMedalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.medalId);
  writer.writeString(offsets[1], object.userId);
}

WearMedalModel _wearMedalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WearMedalModel(
    medalId: reader.readStringOrNull(offsets[0]),
    userId: reader.readStringOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _wearMedalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wearMedalModelGetId(WearMedalModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _wearMedalModelGetLinks(WearMedalModel object) {
  return [];
}

void _wearMedalModelAttach(
    IsarCollection<dynamic> col, Id id, WearMedalModel object) {
  object.id = id;
}

extension WearMedalModelByIndex on IsarCollection<WearMedalModel> {
  Future<WearMedalModel?> getByUserId(String? userId) {
    return getByIndex(r'userId', [userId]);
  }

  WearMedalModel? getByUserIdSync(String? userId) {
    return getByIndexSync(r'userId', [userId]);
  }

  Future<bool> deleteByUserId(String? userId) {
    return deleteByIndex(r'userId', [userId]);
  }

  bool deleteByUserIdSync(String? userId) {
    return deleteByIndexSync(r'userId', [userId]);
  }

  Future<List<WearMedalModel?>> getAllByUserId(List<String?> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'userId', values);
  }

  List<WearMedalModel?> getAllByUserIdSync(List<String?> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'userId', values);
  }

  Future<int> deleteAllByUserId(List<String?> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'userId', values);
  }

  int deleteAllByUserIdSync(List<String?> userIdValues) {
    final values = userIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'userId', values);
  }

  Future<Id> putByUserId(WearMedalModel object) {
    return putByIndex(r'userId', object);
  }

  Id putByUserIdSync(WearMedalModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'userId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUserId(List<WearMedalModel> objects) {
    return putAllByIndex(r'userId', objects);
  }

  List<Id> putAllByUserIdSync(List<WearMedalModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'userId', objects, saveLinks: saveLinks);
  }
}

extension WearMedalModelQueryWhereSort
    on QueryBuilder<WearMedalModel, WearMedalModel, QWhere> {
  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WearMedalModelQueryWhere
    on QueryBuilder<WearMedalModel, WearMedalModel, QWhereClause> {
  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [null],
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'userId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause> userIdEqualTo(
      String? userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterWhereClause>
      userIdNotEqualTo(String? userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [],
              upper: [userId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [userId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [userId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userId',
              lower: [],
              upper: [userId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension WearMedalModelQueryFilter
    on QueryBuilder<WearMedalModel, WearMedalModel, QFilterCondition> {
  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
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

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
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

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medalId',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medalId',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medalId',
        value: '',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      medalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medalId',
        value: '',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension WearMedalModelQueryObject
    on QueryBuilder<WearMedalModel, WearMedalModel, QFilterCondition> {}

extension WearMedalModelQueryLinks
    on QueryBuilder<WearMedalModel, WearMedalModel, QFilterCondition> {}

extension WearMedalModelQuerySortBy
    on QueryBuilder<WearMedalModel, WearMedalModel, QSortBy> {
  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy> sortByMedalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.asc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy>
      sortByMedalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.desc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension WearMedalModelQuerySortThenBy
    on QueryBuilder<WearMedalModel, WearMedalModel, QSortThenBy> {
  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy> thenByMedalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.asc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy>
      thenByMedalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.desc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension WearMedalModelQueryWhereDistinct
    on QueryBuilder<WearMedalModel, WearMedalModel, QDistinct> {
  QueryBuilder<WearMedalModel, WearMedalModel, QDistinct> distinctByMedalId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WearMedalModel, WearMedalModel, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension WearMedalModelQueryProperty
    on QueryBuilder<WearMedalModel, WearMedalModel, QQueryProperty> {
  QueryBuilder<WearMedalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WearMedalModel, String?, QQueryOperations> medalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medalId');
    });
  }

  QueryBuilder<WearMedalModel, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
