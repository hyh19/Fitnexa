// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_medal.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAllMedalModelCollection on Isar {
  IsarCollection<AllMedalModel> get allMedalModels => this.collection();
}

const AllMedalModelSchema = CollectionSchema(
  name: r'AllMedalModel',
  id: -4975242894573269158,
  properties: {
    r'defaultRequire': PropertySchema(
      id: 0,
      name: r'defaultRequire',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'endTime': PropertySchema(
      id: 2,
      name: r'endTime',
      type: IsarType.long,
    ),
    r'icon': PropertySchema(
      id: 3,
      name: r'icon',
      type: IsarType.string,
    ),
    r'medalId': PropertySchema(
      id: 4,
      name: r'medalId',
      type: IsarType.string,
    ),
    r'motionType': PropertySchema(
      id: 5,
      name: r'motionType',
      type: IsarType.string,
      enumMap: _AllMedalModelmotionTypeEnumValueMap,
    ),
    r'noAchievementIcon': PropertySchema(
      id: 6,
      name: r'noAchievementIcon',
      type: IsarType.string,
    ),
    r'repetition': PropertySchema(
      id: 7,
      name: r'repetition',
      type: IsarType.long,
    ),
    r'startTime': PropertySchema(
      id: 8,
      name: r'startTime',
      type: IsarType.long,
    ),
    r'targetType': PropertySchema(
      id: 9,
      name: r'targetType',
      type: IsarType.string,
      enumMap: _AllMedalModeltargetTypeEnumValueMap,
    ),
    r'targetUnit': PropertySchema(
      id: 10,
      name: r'targetUnit',
      type: IsarType.string,
      enumMap: _AllMedalModeltargetUnitEnumValueMap,
    ),
    r'title': PropertySchema(
      id: 11,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _allMedalModelEstimateSize,
  serialize: _allMedalModelSerialize,
  deserialize: _allMedalModelDeserialize,
  deserializeProp: _allMedalModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'medalId': IndexSchema(
      id: 8060546969245684921,
      name: r'medalId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'medalId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _allMedalModelGetId,
  getLinks: _allMedalModelGetLinks,
  attach: _allMedalModelAttach,
  version: '3.1.0+1',
);

int _allMedalModelEstimateSize(
  AllMedalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.icon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.medalId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.motionType;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.noAchievementIcon;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.targetType;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.targetUnit;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _allMedalModelSerialize(
  AllMedalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.defaultRequire);
  writer.writeString(offsets[1], object.description);
  writer.writeLong(offsets[2], object.endTime);
  writer.writeString(offsets[3], object.icon);
  writer.writeString(offsets[4], object.medalId);
  writer.writeString(offsets[5], object.motionType?.name);
  writer.writeString(offsets[6], object.noAchievementIcon);
  writer.writeLong(offsets[7], object.repetition);
  writer.writeLong(offsets[8], object.startTime);
  writer.writeString(offsets[9], object.targetType?.name);
  writer.writeString(offsets[10], object.targetUnit?.name);
  writer.writeString(offsets[11], object.title);
}

AllMedalModel _allMedalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AllMedalModel(
    defaultRequire: reader.readLongOrNull(offsets[0]),
    description: reader.readStringOrNull(offsets[1]),
    endTime: reader.readLongOrNull(offsets[2]),
    icon: reader.readStringOrNull(offsets[3]),
    medalId: reader.readStringOrNull(offsets[4]),
    motionType: _AllMedalModelmotionTypeValueEnumMap[
        reader.readStringOrNull(offsets[5])],
    noAchievementIcon: reader.readStringOrNull(offsets[6]),
    repetition: reader.readLongOrNull(offsets[7]),
    startTime: reader.readLongOrNull(offsets[8]),
    targetType: _AllMedalModeltargetTypeValueEnumMap[
        reader.readStringOrNull(offsets[9])],
    targetUnit: _AllMedalModeltargetUnitValueEnumMap[
        reader.readStringOrNull(offsets[10])],
    title: reader.readStringOrNull(offsets[11]),
  );
  object.id = id;
  return object;
}

P _allMedalModelDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (_AllMedalModelmotionTypeValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (_AllMedalModeltargetTypeValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 10:
      return (_AllMedalModeltargetUnitValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AllMedalModelmotionTypeEnumValueMap = {
  r'step': r'step',
  r'stand': r'stand',
  r'distance': r'distance',
  r'calories': r'calories',
  r'exercise': r'exercise',
  r'sport': r'sport',
};
const _AllMedalModelmotionTypeValueEnumMap = {
  r'step': MedalMotionType.step,
  r'stand': MedalMotionType.stand,
  r'distance': MedalMotionType.distance,
  r'calories': MedalMotionType.calories,
  r'exercise': MedalMotionType.exercise,
  r'sport': MedalMotionType.sport,
};
const _AllMedalModeltargetTypeEnumValueMap = {
  r'today': r'today',
  r'all': r'all',
  r'week': r'week',
};
const _AllMedalModeltargetTypeValueEnumMap = {
  r'today': MedalTargetType.today,
  r'all': MedalTargetType.all,
  r'week': MedalTargetType.week,
};
const _AllMedalModeltargetUnitEnumValueMap = {
  r'num': r'num',
  r'day': r'day',
};
const _AllMedalModeltargetUnitValueEnumMap = {
  r'num': MedalTargetUnit.num,
  r'day': MedalTargetUnit.day,
};

Id _allMedalModelGetId(AllMedalModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _allMedalModelGetLinks(AllMedalModel object) {
  return [];
}

void _allMedalModelAttach(
    IsarCollection<dynamic> col, Id id, AllMedalModel object) {
  object.id = id;
}

extension AllMedalModelByIndex on IsarCollection<AllMedalModel> {
  Future<AllMedalModel?> getByMedalId(String? medalId) {
    return getByIndex(r'medalId', [medalId]);
  }

  AllMedalModel? getByMedalIdSync(String? medalId) {
    return getByIndexSync(r'medalId', [medalId]);
  }

  Future<bool> deleteByMedalId(String? medalId) {
    return deleteByIndex(r'medalId', [medalId]);
  }

  bool deleteByMedalIdSync(String? medalId) {
    return deleteByIndexSync(r'medalId', [medalId]);
  }

  Future<List<AllMedalModel?>> getAllByMedalId(List<String?> medalIdValues) {
    final values = medalIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'medalId', values);
  }

  List<AllMedalModel?> getAllByMedalIdSync(List<String?> medalIdValues) {
    final values = medalIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'medalId', values);
  }

  Future<int> deleteAllByMedalId(List<String?> medalIdValues) {
    final values = medalIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'medalId', values);
  }

  int deleteAllByMedalIdSync(List<String?> medalIdValues) {
    final values = medalIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'medalId', values);
  }

  Future<Id> putByMedalId(AllMedalModel object) {
    return putByIndex(r'medalId', object);
  }

  Id putByMedalIdSync(AllMedalModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'medalId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMedalId(List<AllMedalModel> objects) {
    return putAllByIndex(r'medalId', objects);
  }

  List<Id> putAllByMedalIdSync(List<AllMedalModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'medalId', objects, saveLinks: saveLinks);
  }
}

extension AllMedalModelQueryWhereSort
    on QueryBuilder<AllMedalModel, AllMedalModel, QWhere> {
  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AllMedalModelQueryWhere
    on QueryBuilder<AllMedalModel, AllMedalModel, QWhereClause> {
  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause>
      medalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'medalId',
        value: [null],
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause>
      medalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'medalId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause> medalIdEqualTo(
      String? medalId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'medalId',
        value: [medalId],
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterWhereClause>
      medalIdNotEqualTo(String? medalId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId',
              lower: [],
              upper: [medalId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId',
              lower: [medalId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId',
              lower: [medalId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'medalId',
              lower: [],
              upper: [medalId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension AllMedalModelQueryFilter
    on QueryBuilder<AllMedalModel, AllMedalModel, QFilterCondition> {
  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      defaultRequireIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'defaultRequire',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      defaultRequireIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'defaultRequire',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      defaultRequireEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultRequire',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      defaultRequireGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defaultRequire',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      defaultRequireLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defaultRequire',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      defaultRequireBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defaultRequire',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      endTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endTime',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      endTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endTime',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      endTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      endTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      endTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      endTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> iconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> iconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> iconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      medalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medalId',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      medalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medalId',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
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

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      medalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      medalIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      medalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medalId',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      medalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medalId',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'motionType',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'motionType',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeEqualTo(
    MedalMotionType? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeGreaterThan(
    MedalMotionType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'motionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeLessThan(
    MedalMotionType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'motionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeBetween(
    MedalMotionType? lower,
    MedalMotionType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'motionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'motionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'motionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'motionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'motionType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motionType',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      motionTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'motionType',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noAchievementIcon',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noAchievementIcon',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noAchievementIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noAchievementIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noAchievementIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noAchievementIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noAchievementIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noAchievementIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noAchievementIcon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noAchievementIcon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noAchievementIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      noAchievementIconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noAchievementIcon',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      repetitionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'repetition',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      repetitionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'repetition',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      repetitionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repetition',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      repetitionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repetition',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      repetitionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repetition',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      repetitionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repetition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      startTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startTime',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      startTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startTime',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      startTimeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      startTimeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      startTimeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      startTimeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'targetType',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'targetType',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeEqualTo(
    MedalTargetType? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeGreaterThan(
    MedalTargetType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeLessThan(
    MedalTargetType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeBetween(
    MedalTargetType? lower,
    MedalTargetType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'targetType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'targetType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'targetType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'targetType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetType',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'targetType',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'targetUnit',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'targetUnit',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitEqualTo(
    MedalTargetUnit? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitGreaterThan(
    MedalTargetUnit? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitLessThan(
    MedalTargetUnit? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitBetween(
    MedalTargetUnit? lower,
    MedalTargetUnit? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'targetUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'targetUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'targetUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'targetUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      targetUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'targetUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension AllMedalModelQueryObject
    on QueryBuilder<AllMedalModel, AllMedalModel, QFilterCondition> {}

extension AllMedalModelQueryLinks
    on QueryBuilder<AllMedalModel, AllMedalModel, QFilterCondition> {}

extension AllMedalModelQuerySortBy
    on QueryBuilder<AllMedalModel, AllMedalModel, QSortBy> {
  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByDefaultRequire() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultRequire', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByDefaultRequireDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultRequire', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByEndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByEndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByMedalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByMedalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByMotionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motionType', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByMotionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motionType', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByNoAchievementIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noAchievementIcon', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByNoAchievementIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noAchievementIcon', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByRepetitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByStartTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByTargetType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetType', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByTargetTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetType', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByTargetUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUnit', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      sortByTargetUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUnit', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension AllMedalModelQuerySortThenBy
    on QueryBuilder<AllMedalModel, AllMedalModel, QSortThenBy> {
  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByDefaultRequire() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultRequire', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByDefaultRequireDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultRequire', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByEndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByEndTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endTime', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByMedalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByMedalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medalId', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByMotionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motionType', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByMotionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motionType', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByNoAchievementIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noAchievementIcon', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByNoAchievementIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noAchievementIcon', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByRepetitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repetition', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByStartTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByTargetType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetType', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByTargetTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetType', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByTargetUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUnit', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy>
      thenByTargetUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUnit', Sort.desc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension AllMedalModelQueryWhereDistinct
    on QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> {
  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct>
      distinctByDefaultRequire() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'defaultRequire');
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByEndTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endTime');
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByMedalId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByMotionType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motionType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct>
      distinctByNoAchievementIcon({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noAchievementIcon',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByRepetition() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repetition');
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startTime');
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByTargetType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByTargetUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllMedalModel, AllMedalModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension AllMedalModelQueryProperty
    on QueryBuilder<AllMedalModel, AllMedalModel, QQueryProperty> {
  QueryBuilder<AllMedalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AllMedalModel, int?, QQueryOperations> defaultRequireProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'defaultRequire');
    });
  }

  QueryBuilder<AllMedalModel, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<AllMedalModel, int?, QQueryOperations> endTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endTime');
    });
  }

  QueryBuilder<AllMedalModel, String?, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<AllMedalModel, String?, QQueryOperations> medalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medalId');
    });
  }

  QueryBuilder<AllMedalModel, MedalMotionType?, QQueryOperations>
      motionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motionType');
    });
  }

  QueryBuilder<AllMedalModel, String?, QQueryOperations>
      noAchievementIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noAchievementIcon');
    });
  }

  QueryBuilder<AllMedalModel, int?, QQueryOperations> repetitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repetition');
    });
  }

  QueryBuilder<AllMedalModel, int?, QQueryOperations> startTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startTime');
    });
  }

  QueryBuilder<AllMedalModel, MedalTargetType?, QQueryOperations>
      targetTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetType');
    });
  }

  QueryBuilder<AllMedalModel, MedalTargetUnit?, QQueryOperations>
      targetUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetUnit');
    });
  }

  QueryBuilder<AllMedalModel, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
