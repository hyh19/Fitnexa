// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_dial.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAllDialModelCollection on Isar {
  IsarCollection<AllDialModel> get allDialModels => this.collection();
}

const AllDialModelSchema = CollectionSchema(
  name: r'AllDialModel',
  id: 3640830341026034483,
  properties: {
    r'dialId': PropertySchema(
      id: 0,
      name: r'dialId',
      type: IsarType.long,
    ),
    r'dialVersion': PropertySchema(
      id: 1,
      name: r'dialVersion',
      type: IsarType.string,
    ),
    r'fileName': PropertySchema(
      id: 2,
      name: r'fileName',
      type: IsarType.string,
    ),
    r'mac': PropertySchema(
      id: 3,
      name: r'mac',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'packageSize': PropertySchema(
      id: 5,
      name: r'packageSize',
      type: IsarType.double,
    ),
    r'packageUrl': PropertySchema(
      id: 6,
      name: r'packageUrl',
      type: IsarType.string,
    ),
    r'previewUrl': PropertySchema(
      id: 7,
      name: r'previewUrl',
      type: IsarType.string,
    ),
    r'screedPreviewUrl': PropertySchema(
      id: 8,
      name: r'screedPreviewUrl',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 9,
      name: r'type',
      type: IsarType.long,
    )
  },
  estimateSize: _allDialModelEstimateSize,
  serialize: _allDialModelSerialize,
  deserialize: _allDialModelDeserialize,
  deserializeProp: _allDialModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'mac': IndexSchema(
      id: 3561895766210558431,
      name: r'mac',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'mac',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'fileName_mac': IndexSchema(
      id: 8319812336915960077,
      name: r'fileName_mac',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'fileName',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'mac',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _allDialModelGetId,
  getLinks: _allDialModelGetLinks,
  attach: _allDialModelAttach,
  version: '3.1.0+1',
);

int _allDialModelEstimateSize(
  AllDialModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dialVersion.length * 3;
  bytesCount += 3 + object.fileName.length * 3;
  {
    final value = object.mac;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.packageUrl.length * 3;
  bytesCount += 3 + object.previewUrl.length * 3;
  bytesCount += 3 + object.screedPreviewUrl.length * 3;
  return bytesCount;
}

void _allDialModelSerialize(
  AllDialModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.dialId);
  writer.writeString(offsets[1], object.dialVersion);
  writer.writeString(offsets[2], object.fileName);
  writer.writeString(offsets[3], object.mac);
  writer.writeString(offsets[4], object.name);
  writer.writeDouble(offsets[5], object.packageSize);
  writer.writeString(offsets[6], object.packageUrl);
  writer.writeString(offsets[7], object.previewUrl);
  writer.writeString(offsets[8], object.screedPreviewUrl);
  writer.writeLong(offsets[9], object.type);
}

AllDialModel _allDialModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AllDialModel(
    dialId: reader.readLongOrNull(offsets[0]),
    dialVersion: reader.readStringOrNull(offsets[1]) ?? '0',
    fileName: reader.readStringOrNull(offsets[2]) ?? '',
    mac: reader.readStringOrNull(offsets[3]),
    name: reader.readStringOrNull(offsets[4]) ?? '',
    packageSize: reader.readDoubleOrNull(offsets[5]) ?? 0,
    packageUrl: reader.readStringOrNull(offsets[6]) ?? '',
    previewUrl: reader.readStringOrNull(offsets[7]) ?? '',
    screedPreviewUrl: reader.readStringOrNull(offsets[8]) ?? '',
    type: reader.readLongOrNull(offsets[9]) ?? 0,
  );
  object.id = id;
  return object;
}

P _allDialModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '0') as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 5:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 6:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _allDialModelGetId(AllDialModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _allDialModelGetLinks(AllDialModel object) {
  return [];
}

void _allDialModelAttach(
    IsarCollection<dynamic> col, Id id, AllDialModel object) {
  object.id = id;
}

extension AllDialModelByIndex on IsarCollection<AllDialModel> {
  Future<AllDialModel?> getByFileNameMac(String fileName, String? mac) {
    return getByIndex(r'fileName_mac', [fileName, mac]);
  }

  AllDialModel? getByFileNameMacSync(String fileName, String? mac) {
    return getByIndexSync(r'fileName_mac', [fileName, mac]);
  }

  Future<bool> deleteByFileNameMac(String fileName, String? mac) {
    return deleteByIndex(r'fileName_mac', [fileName, mac]);
  }

  bool deleteByFileNameMacSync(String fileName, String? mac) {
    return deleteByIndexSync(r'fileName_mac', [fileName, mac]);
  }

  Future<List<AllDialModel?>> getAllByFileNameMac(
      List<String> fileNameValues, List<String?> macValues) {
    final len = fileNameValues.length;
    assert(
        macValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([fileNameValues[i], macValues[i]]);
    }

    return getAllByIndex(r'fileName_mac', values);
  }

  List<AllDialModel?> getAllByFileNameMacSync(
      List<String> fileNameValues, List<String?> macValues) {
    final len = fileNameValues.length;
    assert(
        macValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([fileNameValues[i], macValues[i]]);
    }

    return getAllByIndexSync(r'fileName_mac', values);
  }

  Future<int> deleteAllByFileNameMac(
      List<String> fileNameValues, List<String?> macValues) {
    final len = fileNameValues.length;
    assert(
        macValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([fileNameValues[i], macValues[i]]);
    }

    return deleteAllByIndex(r'fileName_mac', values);
  }

  int deleteAllByFileNameMacSync(
      List<String> fileNameValues, List<String?> macValues) {
    final len = fileNameValues.length;
    assert(
        macValues.length == len, 'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([fileNameValues[i], macValues[i]]);
    }

    return deleteAllByIndexSync(r'fileName_mac', values);
  }

  Future<Id> putByFileNameMac(AllDialModel object) {
    return putByIndex(r'fileName_mac', object);
  }

  Id putByFileNameMacSync(AllDialModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'fileName_mac', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByFileNameMac(List<AllDialModel> objects) {
    return putAllByIndex(r'fileName_mac', objects);
  }

  List<Id> putAllByFileNameMacSync(List<AllDialModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'fileName_mac', objects, saveLinks: saveLinks);
  }
}

extension AllDialModelQueryWhereSort
    on QueryBuilder<AllDialModel, AllDialModel, QWhere> {
  QueryBuilder<AllDialModel, AllDialModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AllDialModelQueryWhere
    on QueryBuilder<AllDialModel, AllDialModel, QWhereClause> {
  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> macIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mac',
        value: [null],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> macIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mac',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> macEqualTo(
      String? mac) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mac',
        value: [mac],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause> macNotEqualTo(
      String? mac) {
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause>
      fileNameEqualToAnyMac(String fileName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fileName_mac',
        value: [fileName],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause>
      fileNameNotEqualToAnyMac(String fileName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [],
              upper: [fileName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [fileName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [fileName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [],
              upper: [fileName],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause>
      fileNameEqualToMacIsNull(String fileName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fileName_mac',
        value: [fileName, null],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause>
      fileNameEqualToMacIsNotNull(String fileName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fileName_mac',
        lower: [fileName, null],
        includeLower: false,
        upper: [
          fileName,
        ],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause>
      fileNameMacEqualTo(String fileName, String? mac) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fileName_mac',
        value: [fileName, mac],
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterWhereClause>
      fileNameEqualToMacNotEqualTo(String fileName, String? mac) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [fileName],
              upper: [fileName, mac],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [fileName, mac],
              includeLower: false,
              upper: [fileName],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [fileName, mac],
              includeLower: false,
              upper: [fileName],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fileName_mac',
              lower: [fileName],
              upper: [fileName, mac],
              includeUpper: false,
            ));
      }
    });
  }
}

extension AllDialModelQueryFilter
    on QueryBuilder<AllDialModel, AllDialModel, QFilterCondition> {
  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dialId',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dialId',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> dialIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dialId',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dialId',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dialId',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> dialIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dialId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dialVersion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dialVersion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dialVersion',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      dialVersionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dialVersion',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fileName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      fileNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mac',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      macIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mac',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macEqualTo(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macLessThan(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macBetween(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macStartsWith(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macEndsWith(
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

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mac',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mac',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> macIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mac',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      macIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mac',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageSizeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageSizeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'packageSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageSizeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'packageSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageSizeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'packageSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'packageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'packageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      packageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'packageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'previewUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'previewUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      previewUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'screedPreviewUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screedPreviewUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screedPreviewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      screedPreviewUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screedPreviewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> typeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition>
      typeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> typeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterFilterCondition> typeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AllDialModelQueryObject
    on QueryBuilder<AllDialModel, AllDialModel, QFilterCondition> {}

extension AllDialModelQueryLinks
    on QueryBuilder<AllDialModel, AllDialModel, QFilterCondition> {}

extension AllDialModelQuerySortBy
    on QueryBuilder<AllDialModel, AllDialModel, QSortBy> {
  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByDialId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByDialIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByDialVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      sortByDialVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByMac() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByMacDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByPackageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      sortByPackageSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByPackageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      sortByPackageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      sortByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      sortByScreedPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      sortByScreedPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension AllDialModelQuerySortThenBy
    on QueryBuilder<AllDialModel, AllDialModel, QSortThenBy> {
  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByDialId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByDialIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByDialVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      thenByDialVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByMac() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByMacDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByPackageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      thenByPackageSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByPackageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      thenByPackageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      thenByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      thenByScreedPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy>
      thenByScreedPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.desc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension AllDialModelQueryWhereDistinct
    on QueryBuilder<AllDialModel, AllDialModel, QDistinct> {
  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByDialId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dialId');
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByDialVersion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dialVersion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByFileName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByMac(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mac', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByPackageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packageSize');
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByPackageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByPreviewUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'previewUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct>
      distinctByScreedPreviewUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screedPreviewUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AllDialModel, AllDialModel, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension AllDialModelQueryProperty
    on QueryBuilder<AllDialModel, AllDialModel, QQueryProperty> {
  QueryBuilder<AllDialModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AllDialModel, int?, QQueryOperations> dialIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dialId');
    });
  }

  QueryBuilder<AllDialModel, String, QQueryOperations> dialVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dialVersion');
    });
  }

  QueryBuilder<AllDialModel, String, QQueryOperations> fileNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileName');
    });
  }

  QueryBuilder<AllDialModel, String?, QQueryOperations> macProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mac');
    });
  }

  QueryBuilder<AllDialModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<AllDialModel, double, QQueryOperations> packageSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packageSize');
    });
  }

  QueryBuilder<AllDialModel, String, QQueryOperations> packageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packageUrl');
    });
  }

  QueryBuilder<AllDialModel, String, QQueryOperations> previewUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'previewUrl');
    });
  }

  QueryBuilder<AllDialModel, String, QQueryOperations>
      screedPreviewUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screedPreviewUrl');
    });
  }

  QueryBuilder<AllDialModel, int, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
