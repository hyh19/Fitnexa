// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thirdparty_app_info.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetThirdPartyInfoModelCollection on Isar {
  IsarCollection<ThirdPartyInfoModel> get thirdPartyInfoModels =>
      this.collection();
}

const ThirdPartyInfoModelSchema = CollectionSchema(
  name: r'ThirdPartyInfoModel',
  id: 5588379361822528946,
  properties: {
    r'appName': PropertySchema(
      id: 0,
      name: r'appName',
      type: IsarType.string,
    ),
    r'appPackageName': PropertySchema(
      id: 1,
      name: r'appPackageName',
      type: IsarType.string,
    ),
    r'logo': PropertySchema(
      id: 2,
      name: r'logo',
      type: IsarType.string,
    ),
    r'logoPath': PropertySchema(
      id: 3,
      name: r'logoPath',
      type: IsarType.string,
    ),
    r'uploadState': PropertySchema(
      id: 4,
      name: r'uploadState',
      type: IsarType.bool,
    )
  },
  estimateSize: _thirdPartyInfoModelEstimateSize,
  serialize: _thirdPartyInfoModelSerialize,
  deserialize: _thirdPartyInfoModelDeserialize,
  deserializeProp: _thirdPartyInfoModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'appPackageName': IndexSchema(
      id: 3158793126337314985,
      name: r'appPackageName',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'appPackageName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _thirdPartyInfoModelGetId,
  getLinks: _thirdPartyInfoModelGetLinks,
  attach: _thirdPartyInfoModelAttach,
  version: '3.1.0+1',
);

int _thirdPartyInfoModelEstimateSize(
  ThirdPartyInfoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.appName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.appPackageName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.logo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.logoPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _thirdPartyInfoModelSerialize(
  ThirdPartyInfoModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.appName);
  writer.writeString(offsets[1], object.appPackageName);
  writer.writeString(offsets[2], object.logo);
  writer.writeString(offsets[3], object.logoPath);
  writer.writeBool(offsets[4], object.uploadState);
}

ThirdPartyInfoModel _thirdPartyInfoModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ThirdPartyInfoModel(
    appName: reader.readStringOrNull(offsets[0]),
    appPackageName: reader.readStringOrNull(offsets[1]),
    logo: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  object.logoPath = reader.readStringOrNull(offsets[3]);
  object.uploadState = reader.readBoolOrNull(offsets[4]);
  return object;
}

P _thirdPartyInfoModelDeserializeProp<P>(
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
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _thirdPartyInfoModelGetId(ThirdPartyInfoModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _thirdPartyInfoModelGetLinks(
    ThirdPartyInfoModel object) {
  return [];
}

void _thirdPartyInfoModelAttach(
    IsarCollection<dynamic> col, Id id, ThirdPartyInfoModel object) {
  object.id = id;
}

extension ThirdPartyInfoModelByIndex on IsarCollection<ThirdPartyInfoModel> {
  Future<ThirdPartyInfoModel?> getByAppPackageName(String? appPackageName) {
    return getByIndex(r'appPackageName', [appPackageName]);
  }

  ThirdPartyInfoModel? getByAppPackageNameSync(String? appPackageName) {
    return getByIndexSync(r'appPackageName', [appPackageName]);
  }

  Future<bool> deleteByAppPackageName(String? appPackageName) {
    return deleteByIndex(r'appPackageName', [appPackageName]);
  }

  bool deleteByAppPackageNameSync(String? appPackageName) {
    return deleteByIndexSync(r'appPackageName', [appPackageName]);
  }

  Future<List<ThirdPartyInfoModel?>> getAllByAppPackageName(
      List<String?> appPackageNameValues) {
    final values = appPackageNameValues.map((e) => [e]).toList();
    return getAllByIndex(r'appPackageName', values);
  }

  List<ThirdPartyInfoModel?> getAllByAppPackageNameSync(
      List<String?> appPackageNameValues) {
    final values = appPackageNameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'appPackageName', values);
  }

  Future<int> deleteAllByAppPackageName(List<String?> appPackageNameValues) {
    final values = appPackageNameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'appPackageName', values);
  }

  int deleteAllByAppPackageNameSync(List<String?> appPackageNameValues) {
    final values = appPackageNameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'appPackageName', values);
  }

  Future<Id> putByAppPackageName(ThirdPartyInfoModel object) {
    return putByIndex(r'appPackageName', object);
  }

  Id putByAppPackageNameSync(ThirdPartyInfoModel object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'appPackageName', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAppPackageName(List<ThirdPartyInfoModel> objects) {
    return putAllByIndex(r'appPackageName', objects);
  }

  List<Id> putAllByAppPackageNameSync(List<ThirdPartyInfoModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'appPackageName', objects, saveLinks: saveLinks);
  }
}

extension ThirdPartyInfoModelQueryWhereSort
    on QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QWhere> {
  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ThirdPartyInfoModelQueryWhere
    on QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QWhereClause> {
  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
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

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
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

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      appPackageNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'appPackageName',
        value: [null],
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      appPackageNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'appPackageName',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      appPackageNameEqualTo(String? appPackageName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'appPackageName',
        value: [appPackageName],
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterWhereClause>
      appPackageNameNotEqualTo(String? appPackageName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'appPackageName',
              lower: [],
              upper: [appPackageName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'appPackageName',
              lower: [appPackageName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'appPackageName',
              lower: [appPackageName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'appPackageName',
              lower: [],
              upper: [appPackageName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ThirdPartyInfoModelQueryFilter on QueryBuilder<ThirdPartyInfoModel,
    ThirdPartyInfoModel, QFilterCondition> {
  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appName',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appName',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appName',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appName',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appPackageName',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appPackageName',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appPackageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appPackageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appPackageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appPackageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appPackageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appPackageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appPackageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appPackageName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appPackageName',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      appPackageNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appPackageName',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
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

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
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

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
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

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'logo',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'logo',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logo',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logo',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'logoPath',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'logoPath',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'logoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'logoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'logoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      logoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'logoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      uploadStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uploadState',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      uploadStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uploadState',
      ));
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterFilterCondition>
      uploadStateEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uploadState',
        value: value,
      ));
    });
  }
}

extension ThirdPartyInfoModelQueryObject on QueryBuilder<ThirdPartyInfoModel,
    ThirdPartyInfoModel, QFilterCondition> {}

extension ThirdPartyInfoModelQueryLinks on QueryBuilder<ThirdPartyInfoModel,
    ThirdPartyInfoModel, QFilterCondition> {}

extension ThirdPartyInfoModelQuerySortBy
    on QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QSortBy> {
  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByAppName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByAppNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByAppPackageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPackageName', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByAppPackageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPackageName', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByLogo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByLogoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByLogoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByLogoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByUploadState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadState', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      sortByUploadStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadState', Sort.desc);
    });
  }
}

extension ThirdPartyInfoModelQuerySortThenBy
    on QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QSortThenBy> {
  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByAppName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByAppNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appName', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByAppPackageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPackageName', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByAppPackageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPackageName', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByLogo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByLogoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logo', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByLogoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByLogoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'logoPath', Sort.desc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByUploadState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadState', Sort.asc);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QAfterSortBy>
      thenByUploadStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadState', Sort.desc);
    });
  }
}

extension ThirdPartyInfoModelQueryWhereDistinct
    on QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QDistinct> {
  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QDistinct>
      distinctByAppName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QDistinct>
      distinctByAppPackageName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appPackageName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QDistinct>
      distinctByLogo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QDistinct>
      distinctByLogoPath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'logoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QDistinct>
      distinctByUploadState() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uploadState');
    });
  }
}

extension ThirdPartyInfoModelQueryProperty
    on QueryBuilder<ThirdPartyInfoModel, ThirdPartyInfoModel, QQueryProperty> {
  QueryBuilder<ThirdPartyInfoModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ThirdPartyInfoModel, String?, QQueryOperations>
      appNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appName');
    });
  }

  QueryBuilder<ThirdPartyInfoModel, String?, QQueryOperations>
      appPackageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appPackageName');
    });
  }

  QueryBuilder<ThirdPartyInfoModel, String?, QQueryOperations> logoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logo');
    });
  }

  QueryBuilder<ThirdPartyInfoModel, String?, QQueryOperations>
      logoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'logoPath');
    });
  }

  QueryBuilder<ThirdPartyInfoModel, bool?, QQueryOperations>
      uploadStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uploadState');
    });
  }
}
