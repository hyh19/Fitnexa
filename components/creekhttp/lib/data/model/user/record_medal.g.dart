// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_medal.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRecordMedalModelCollection on Isar {
  IsarCollection<RecordMedalModel> get recordMedalModels => this.collection();
}

const RecordMedalModelSchema = CollectionSchema(
  name: r'RecordMedalModel',
  id: -2082194545603180817,
  properties: {
    r'historyValue': PropertySchema(
      id: 0,
      name: r'historyValue',
      type: IsarType.long,
    ),
    r'isNew': PropertySchema(
      id: 1,
      name: r'isNew',
      type: IsarType.bool,
    ),
    r'lastUpdateTime': PropertySchema(
      id: 2,
      name: r'lastUpdateTime',
      type: IsarType.long,
    ),
    r'medalId': PropertySchema(
      id: 3,
      name: r'medalId',
      type: IsarType.string,
    ),
    r'medalNum': PropertySchema(
      id: 4,
      name: r'medalNum',
      type: IsarType.long,
    ),
    r'syncTime': PropertySchema(
      id: 5,
      name: r'syncTime',
      type: IsarType.long,
    ),
    r'todayValue': PropertySchema(
      id: 6,
      name: r'todayValue',
      type: IsarType.long,
    ),
    r'userId': PropertySchema(
      id: 7,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _recordMedalModelEstimateSize,
  serialize: _recordMedalModelSerialize,
  deserialize: _recordMedalModelDeserialize,
  deserializeProp: _recordMedalModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'userId': IndexSchema(
      id: -2005826577402374815,
      name: r'userId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'userId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'medalId_userId': IndexSchema(
      id: 4682861757714205666,
      name: r'medalId_userId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'medalId',
          type: IndexType.hash,
          caseSensitive: true,
        ),
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
  getId: _recordMedalModelGetId,
  getLinks: _recordMedalModelGetLinks,
  attach: _recordMedalModelAttach,
  version: '3.1.0+1',
);

int _recordMedalModelEstimateSize(
  RecordMedalModel object,
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

void _recordMedalModelSerialize(
  RecordMedalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.historyValue);
  writer.writeBool(offsets[1], object.isNew);
  writer.writeLong(offsets[2], object.lastUpdateTime);
  writer.writeString(offsets[3], object.medalId);
  writer.writeLong(offsets[4], object.medalNum);
  writer.writeLong(offsets[5], object.syncTime);
  writer.writeLong(offsets[6], object.todayValue);
  writer.writeString(offsets[7], object.userId);
}

RecordMedalModel _recordMedalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RecordMedalModel(
    historyValue: reader.readLongOrNull(offsets[0]),
    isNew: reader.readBoolOrNull(offsets[1]),
    lastUpdateTime: reader.readLongOrNull(offsets[2]),
    medalId: reader.readStringOrNull(offsets[3]),
    medalNum: reader.readLongOrNull(offsets[4]),
    syncTime: reader.readLongOrNull(offsets[5]),
    todayValue: reader.readLongOrNull(offsets[6]),
    userId: reader.readStringOrNull(offsets[7]),
  );
  object.id = id;
  return object;
}

P _recordMedalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _recordMedalModelGetId(RecordMedalModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _recordMedalModelGetLinks(RecordMedalModel object) {
  return [];
}

void _recordMedalModelAttach(
    IsarCollection<dynamic> col, Id id, RecordMedalModel object) {
  object.id = id;
}

extension RecordMedalModelByIndex on IsarCollection<RecordMedalModel> {
  Future<RecordMedalModel?> getByMedalIdUserId(
      String? medalId, String? userId) {
    return getByIndex(r'medalId_userId', [medalId, userId]);
  }

  RecordMedalModel? getByMedalIdUserIdSync(String? medalId, String? userId) {
    return getByIndexSync(r'medalId_userId', [medalId, userId]);
  }

  Future<bool> deleteByMedalIdUserId(String? medalId, String? userId) {
    return deleteByIndex(r'medalId_userId', [medalId, userId]);
  }

  bool deleteByMedalIdUserIdSync(String? medalId, String? userId) {
    return deleteByIndexSync(r'medalId_userId', [medalId, userId]);
  }

  Future<List<RecordMedalModel?>> getAllByMedalIdUserId(
      List<String?> medalIdValues, List<String?> userIdValues) {
    final len = medalIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([medalIdValues[i], userIdValues[i]]);
    }

    return getAllByIndex(r'medalId_userId', values);
  }

  List<RecordMedalModel?> getAllByMedalIdUserIdSync(
      List<String?> medalIdValues, List<String?> userIdValues) {
    final len = medalIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([medalIdValues[i], userIdValues[i]]);
    }

    return getAllByIndexSync(r'medalId_userId', values);
  }

  Future<int> deleteAllByMedalIdUserId(
      List<String?> medalIdValues, List<String?> userIdValues) {
    final len = medalIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([medalIdValues[i], userIdValues[i]]);
    }

    return deleteAllByIndex(r'medalId_userId', values);
  }

  int deleteAllByMedalIdUserIdSync(
      List<String?> medalIdValues, List<String?> userIdValues) {
    final len = medalIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([medalIdValues[i], userIdValues[i]]);
    }

    return deleteAllByIndexSync(r'medalId_userId', values);
  }

  Future<Id> putByMedalIdUserId(RecordMedalModel object) {
    return putByIndex(r'medalId_userId', object);
  }

  Id putByMedalIdUserIdSync(RecordMedalModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'medalId_userId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMedalIdUserId(List<RecordMedalModel> objects) {
    return putAllByIndex(r'medalId_userId', objects);
  }

  List<Id> putAllByMedalIdUserIdSync(List<RecordMedalModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'medalId_userId', objects, saveLinks: saveLinks);
  }
}

extension RecordMedalModelQueryWhereSort
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QWhere> {
  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RecordMedalModelQueryWhere
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QWhereClause> {
  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [null],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      userIdEqualTo(String? userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdIsNullAnyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'medalId_userId',
        value: [null],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdIsNotNullAnyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'medalId_userId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdEqualToAnyUserId(String? medalId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'medalId_userId',
        value: [medalId],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdNotEqualToAnyUserId(String? medalId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [],
              upper: [medalId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [medalId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [medalId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [],
              upper: [medalId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdEqualToUserIdIsNull(String? medalId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'medalId_userId',
        value: [medalId, null],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdEqualToUserIdIsNotNull(String? medalId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'medalId_userId',
        lower: [medalId, null],
        includeLower: false,
        upper: [
          medalId,
        ],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdUserIdEqualTo(String? medalId, String? userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'medalId_userId',
        value: [medalId, userId],
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterWhereClause>
      medalIdEqualToUserIdNotEqualTo(String? medalId, String? userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [medalId],
              upper: [medalId, userId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [medalId, userId],
              includeLower: false,
              upper: [medalId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [medalId, userId],
              includeLower: false,
              upper: [medalId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId_userId',
              lower: [medalId],
              upper: [medalId, userId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension RecordMedalModelQueryFilter
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QFilterCondition> {
  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      historyValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'historyValue',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      historyValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'historyValue',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      historyValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'historyValue',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      historyValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'historyValue',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      historyValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'historyValue',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      historyValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'historyValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      isNewIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isNew',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      isNewIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isNew',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      isNewEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNew',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      lastUpdateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUpdateTime',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      lastUpdateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUpdateTime',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      lastUpdateTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      lastUpdateTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      lastUpdateTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      lastUpdateTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medalId',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medalId',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medalId',
        value: '',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medalId',
        value: '',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalNumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medalNum',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalNumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medalNum',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalNumEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medalNum',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalNumGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medalNum',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalNumLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medalNum',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      medalNumBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medalNum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      syncTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'syncTime',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      syncTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'syncTime',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      syncTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'syncTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      syncTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'syncTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      syncTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'syncTime',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      syncTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'syncTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      todayValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'todayValue',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      todayValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'todayValue',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      todayValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'todayValue',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      todayValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'todayValue',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      todayValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'todayValue',
        value: value,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      todayValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'todayValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
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

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension RecordMedalModelQueryObject
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QFilterCondition> {}

extension RecordMedalModelQueryLinks
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QFilterCondition> {}

extension RecordMedalModelQuerySortBy
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QSortBy> {
  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByHistoryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyValue', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByHistoryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyValue', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy> sortByIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByIsNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByLastUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateTime', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByLastUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateTime', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByMedalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByMedalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByMedalNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalNum', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByMedalNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalNum', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortBySyncTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncTime', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortBySyncTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncTime', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByTodayValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'todayValue', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByTodayValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'todayValue', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension RecordMedalModelQuerySortThenBy
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QSortThenBy> {
  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByHistoryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyValue', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByHistoryValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyValue', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy> thenByIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByIsNewDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNew', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByLastUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateTime', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByLastUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdateTime', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByMedalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByMedalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByMedalNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalNum', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByMedalNumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalNum', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenBySyncTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncTime', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenBySyncTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'syncTime', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByTodayValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'todayValue', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByTodayValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'todayValue', Sort.desc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension RecordMedalModelQueryWhereDistinct
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct> {
  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct>
      distinctByHistoryValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'historyValue');
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct>
      distinctByIsNew() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNew');
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct>
      distinctByLastUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdateTime');
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct> distinctByMedalId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct>
      distinctByMedalNum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medalNum');
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct>
      distinctBySyncTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'syncTime');
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct>
      distinctByTodayValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'todayValue');
    });
  }

  QueryBuilder<RecordMedalModel, RecordMedalModel, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension RecordMedalModelQueryProperty
    on QueryBuilder<RecordMedalModel, RecordMedalModel, QQueryProperty> {
  QueryBuilder<RecordMedalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RecordMedalModel, int?, QQueryOperations>
      historyValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'historyValue');
    });
  }

  QueryBuilder<RecordMedalModel, bool?, QQueryOperations> isNewProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNew');
    });
  }

  QueryBuilder<RecordMedalModel, int?, QQueryOperations>
      lastUpdateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdateTime');
    });
  }

  QueryBuilder<RecordMedalModel, String?, QQueryOperations> medalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medalId');
    });
  }

  QueryBuilder<RecordMedalModel, int?, QQueryOperations> medalNumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medalNum');
    });
  }

  QueryBuilder<RecordMedalModel, int?, QQueryOperations> syncTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'syncTime');
    });
  }

  QueryBuilder<RecordMedalModel, int?, QQueryOperations> todayValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'todayValue');
    });
  }

  QueryBuilder<RecordMedalModel, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
