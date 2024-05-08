// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dial.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDialModelCollection on Isar {
  IsarCollection<DialModel> get dialModels => this.collection();
}

const DialModelSchema = CollectionSchema(
  name: r'DialModel',
  id: -1162399890834078375,
  properties: {
    r'current': PropertySchema(
      id: 0,
      name: r'current',
      type: IsarType.bool,
    ),
    r'dialId': PropertySchema(
      id: 1,
      name: r'dialId',
      type: IsarType.long,
    ),
    r'dialVersion': PropertySchema(
      id: 2,
      name: r'dialVersion',
      type: IsarType.string,
    ),
    r'fileName': PropertySchema(
      id: 3,
      name: r'fileName',
      type: IsarType.string,
    ),
    r'imagePath': PropertySchema(
      id: 4,
      name: r'imagePath',
      type: IsarType.string,
    ),
    r'mac': PropertySchema(
      id: 5,
      name: r'mac',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'packageSize': PropertySchema(
      id: 7,
      name: r'packageSize',
      type: IsarType.double,
    ),
    r'packageUrl': PropertySchema(
      id: 8,
      name: r'packageUrl',
      type: IsarType.string,
    ),
    r'previewUrl': PropertySchema(
      id: 9,
      name: r'previewUrl',
      type: IsarType.string,
    ),
    r'realSize': PropertySchema(
      id: 10,
      name: r'realSize',
      type: IsarType.long,
    ),
    r'screedPreviewUrl': PropertySchema(
      id: 11,
      name: r'screedPreviewUrl',
      type: IsarType.string,
    ),
    r'sort': PropertySchema(
      id: 12,
      name: r'sort',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 13,
      name: r'type',
      type: IsarType.long,
    )
  },
  estimateSize: _dialModelEstimateSize,
  serialize: _dialModelSerialize,
  deserialize: _dialModelDeserialize,
  deserializeProp: _dialModelDeserializeProp,
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
  getId: _dialModelGetId,
  getLinks: _dialModelGetLinks,
  attach: _dialModelAttach,
  version: '3.1.0+1',
);

int _dialModelEstimateSize(
  DialModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dialVersion.length * 3;
  bytesCount += 3 + object.fileName.length * 3;
  {
    final value = object.imagePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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

void _dialModelSerialize(
  DialModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.current);
  writer.writeLong(offsets[1], object.dialId);
  writer.writeString(offsets[2], object.dialVersion);
  writer.writeString(offsets[3], object.fileName);
  writer.writeString(offsets[4], object.imagePath);
  writer.writeString(offsets[5], object.mac);
  writer.writeString(offsets[6], object.name);
  writer.writeDouble(offsets[7], object.packageSize);
  writer.writeString(offsets[8], object.packageUrl);
  writer.writeString(offsets[9], object.previewUrl);
  writer.writeLong(offsets[10], object.realSize);
  writer.writeString(offsets[11], object.screedPreviewUrl);
  writer.writeLong(offsets[12], object.sort);
  writer.writeLong(offsets[13], object.type);
}

DialModel _dialModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DialModel(
    current: reader.readBoolOrNull(offsets[0]) ?? false,
    dialId: reader.readLongOrNull(offsets[1]),
    dialVersion: reader.readStringOrNull(offsets[2]) ?? '0',
    fileName: reader.readStringOrNull(offsets[3]) ?? '',
    mac: reader.readStringOrNull(offsets[5]),
    name: reader.readStringOrNull(offsets[6]) ?? '',
    packageSize: reader.readDoubleOrNull(offsets[7]) ?? 0,
    packageUrl: reader.readStringOrNull(offsets[8]) ?? '',
    previewUrl: reader.readStringOrNull(offsets[9]) ?? '',
    screedPreviewUrl: reader.readStringOrNull(offsets[11]) ?? '',
    type: reader.readLongOrNull(offsets[13]) ?? 0,
  );
  object.id = id;
  object.imagePath = reader.readStringOrNull(offsets[4]);
  object.realSize = reader.readLongOrNull(offsets[10]);
  object.sort = reader.readLongOrNull(offsets[12]);
  return object;
}

P _dialModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '0') as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 7:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 9:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dialModelGetId(DialModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _dialModelGetLinks(DialModel object) {
  return [];
}

void _dialModelAttach(IsarCollection<dynamic> col, Id id, DialModel object) {
  object.id = id;
}

extension DialModelByIndex on IsarCollection<DialModel> {
  Future<DialModel?> getByFileNameMac(String fileName, String? mac) {
    return getByIndex(r'fileName_mac', [fileName, mac]);
  }

  DialModel? getByFileNameMacSync(String fileName, String? mac) {
    return getByIndexSync(r'fileName_mac', [fileName, mac]);
  }

  Future<bool> deleteByFileNameMac(String fileName, String? mac) {
    return deleteByIndex(r'fileName_mac', [fileName, mac]);
  }

  bool deleteByFileNameMacSync(String fileName, String? mac) {
    return deleteByIndexSync(r'fileName_mac', [fileName, mac]);
  }

  Future<List<DialModel?>> getAllByFileNameMac(
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

  List<DialModel?> getAllByFileNameMacSync(
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

  Future<Id> putByFileNameMac(DialModel object) {
    return putByIndex(r'fileName_mac', object);
  }

  Id putByFileNameMacSync(DialModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'fileName_mac', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByFileNameMac(List<DialModel> objects) {
    return putAllByIndex(r'fileName_mac', objects);
  }

  List<Id> putAllByFileNameMacSync(List<DialModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'fileName_mac', objects, saveLinks: saveLinks);
  }
}

extension DialModelQueryWhereSort
    on QueryBuilder<DialModel, DialModel, QWhere> {
  QueryBuilder<DialModel, DialModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DialModelQueryWhere
    on QueryBuilder<DialModel, DialModel, QWhereClause> {
  QueryBuilder<DialModel, DialModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> macIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mac',
        value: [null],
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> macIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mac',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> macEqualTo(
      String? mac) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mac',
        value: [mac],
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> macNotEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> fileNameEqualToAnyMac(
      String fileName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fileName_mac',
        value: [fileName],
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause>
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

  QueryBuilder<DialModel, DialModel, QAfterWhereClause>
      fileNameEqualToMacIsNull(String fileName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fileName_mac',
        value: [fileName, null],
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause>
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

  QueryBuilder<DialModel, DialModel, QAfterWhereClause> fileNameMacEqualTo(
      String fileName, String? mac) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fileName_mac',
        value: [fileName, mac],
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterWhereClause>
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

extension DialModelQueryFilter
    on QueryBuilder<DialModel, DialModel, QFilterCondition> {
  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> currentEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'current',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dialId',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dialId',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dialId',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialIdGreaterThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialIdLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialIdBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialVersionEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialVersionLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialVersionBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialVersionEndsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialVersionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dialVersion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> dialVersionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dialVersion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      dialVersionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dialVersion',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      dialVersionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dialVersion',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameGreaterThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameStartsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameEndsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fileName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fileName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> fileNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      fileNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fileName',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imagePath',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      imagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imagePath',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      imagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> imagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      imagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mac',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mac',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macGreaterThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macStartsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macEndsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macContains(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macMatches(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mac',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> macIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mac',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameContains(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageSizeEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageSizeLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageSizeBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageUrlEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageUrlLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageUrlBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageUrlEndsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'packageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> packageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'packageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      packageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      packageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'packageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> previewUrlEqualTo(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> previewUrlLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> previewUrlBetween(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> previewUrlEndsWith(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> previewUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> previewUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'previewUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      previewUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      previewUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> realSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'realSize',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      realSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'realSize',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> realSizeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'realSize',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> realSizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'realSize',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> realSizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'realSize',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> realSizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'realSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      screedPreviewUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screedPreviewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      screedPreviewUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screedPreviewUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      screedPreviewUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screedPreviewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition>
      screedPreviewUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screedPreviewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> sortIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sort',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> sortIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sort',
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> sortEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sort',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> sortGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sort',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> sortLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sort',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> sortBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> typeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> typeGreaterThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> typeLessThan(
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

  QueryBuilder<DialModel, DialModel, QAfterFilterCondition> typeBetween(
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

extension DialModelQueryObject
    on QueryBuilder<DialModel, DialModel, QFilterCondition> {}

extension DialModelQueryLinks
    on QueryBuilder<DialModel, DialModel, QFilterCondition> {}

extension DialModelQuerySortBy on QueryBuilder<DialModel, DialModel, QSortBy> {
  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByDialId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByDialIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByDialVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByDialVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByMac() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByMacDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByPackageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByPackageSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByPackageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByPackageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByRealSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realSize', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByRealSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realSize', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByScreedPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy>
      sortByScreedPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortBySort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sort', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortBySortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sort', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension DialModelQuerySortThenBy
    on QueryBuilder<DialModel, DialModel, QSortThenBy> {
  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByCurrentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'current', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByDialId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByDialIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialId', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByDialVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByDialVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dialVersion', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByFileName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByFileNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fileName', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByMac() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByMacDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mac', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByPackageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByPackageSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageSize', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByPackageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByPackageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageUrl', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByRealSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realSize', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByRealSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'realSize', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByScreedPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy>
      thenByScreedPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedPreviewUrl', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenBySort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sort', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenBySortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sort', Sort.desc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<DialModel, DialModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension DialModelQueryWhereDistinct
    on QueryBuilder<DialModel, DialModel, QDistinct> {
  QueryBuilder<DialModel, DialModel, QDistinct> distinctByCurrent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'current');
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByDialId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dialId');
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByDialVersion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dialVersion', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByFileName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fileName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imagePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByMac(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mac', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByPackageSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packageSize');
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByPackageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByPreviewUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'previewUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByRealSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'realSize');
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByScreedPreviewUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screedPreviewUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctBySort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sort');
    });
  }

  QueryBuilder<DialModel, DialModel, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension DialModelQueryProperty
    on QueryBuilder<DialModel, DialModel, QQueryProperty> {
  QueryBuilder<DialModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DialModel, bool, QQueryOperations> currentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'current');
    });
  }

  QueryBuilder<DialModel, int?, QQueryOperations> dialIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dialId');
    });
  }

  QueryBuilder<DialModel, String, QQueryOperations> dialVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dialVersion');
    });
  }

  QueryBuilder<DialModel, String, QQueryOperations> fileNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fileName');
    });
  }

  QueryBuilder<DialModel, String?, QQueryOperations> imagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagePath');
    });
  }

  QueryBuilder<DialModel, String?, QQueryOperations> macProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mac');
    });
  }

  QueryBuilder<DialModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DialModel, double, QQueryOperations> packageSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packageSize');
    });
  }

  QueryBuilder<DialModel, String, QQueryOperations> packageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packageUrl');
    });
  }

  QueryBuilder<DialModel, String, QQueryOperations> previewUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'previewUrl');
    });
  }

  QueryBuilder<DialModel, int?, QQueryOperations> realSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'realSize');
    });
  }

  QueryBuilder<DialModel, String, QQueryOperations> screedPreviewUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screedPreviewUrl');
    });
  }

  QueryBuilder<DialModel, int?, QQueryOperations> sortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sort');
    });
  }

  QueryBuilder<DialModel, int, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
