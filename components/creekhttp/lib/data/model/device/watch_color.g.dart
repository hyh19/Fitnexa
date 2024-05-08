// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_color.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWatchColorModelCollection on Isar {
  IsarCollection<WatchColorModel> get watchColorModels => this.collection();
}

const WatchColorModelSchema = CollectionSchema(
  name: r'WatchColorModel',
  id: 2548839944024964308,
  properties: {
    r'bothRatio': PropertySchema(
      id: 0,
      name: r'bothRatio',
      type: IsarType.double,
    ),
    r'colorCode': PropertySchema(
      id: 1,
      name: r'colorCode',
      type: IsarType.string,
    ),
    r'colorImage': PropertySchema(
      id: 2,
      name: r'colorImage',
      type: IsarType.string,
    ),
    r'defaultThumb': PropertySchema(
      id: 3,
      name: r'defaultThumb',
      type: IsarType.string,
    ),
    r'distanceTopRatio': PropertySchema(
      id: 4,
      name: r'distanceTopRatio',
      type: IsarType.double,
    ),
    r'firmwareId': PropertySchema(
      id: 5,
      name: r'firmwareId',
      type: IsarType.long,
    )
  },
  estimateSize: _watchColorModelEstimateSize,
  serialize: _watchColorModelSerialize,
  deserialize: _watchColorModelDeserialize,
  deserializeProp: _watchColorModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'firmwareId': IndexSchema(
      id: 4100119745675764641,
      name: r'firmwareId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'firmwareId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'colorCode_firmwareId': IndexSchema(
      id: 1213687160400515871,
      name: r'colorCode_firmwareId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'colorCode',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'firmwareId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _watchColorModelGetId,
  getLinks: _watchColorModelGetLinks,
  attach: _watchColorModelAttach,
  version: '3.1.0+1',
);

int _watchColorModelEstimateSize(
  WatchColorModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.colorCode.length * 3;
  {
    final value = object.colorImage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.defaultThumb;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _watchColorModelSerialize(
  WatchColorModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.bothRatio);
  writer.writeString(offsets[1], object.colorCode);
  writer.writeString(offsets[2], object.colorImage);
  writer.writeString(offsets[3], object.defaultThumb);
  writer.writeDouble(offsets[4], object.distanceTopRatio);
  writer.writeLong(offsets[5], object.firmwareId);
}

WatchColorModel _watchColorModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WatchColorModel(
    bothRatio: reader.readDoubleOrNull(offsets[0]),
    colorCode: reader.readString(offsets[1]),
    colorImage: reader.readStringOrNull(offsets[2]),
    defaultThumb: reader.readStringOrNull(offsets[3]),
    distanceTopRatio: reader.readDoubleOrNull(offsets[4]),
    firmwareId: reader.readLong(offsets[5]),
  );
  object.id = id;
  return object;
}

P _watchColorModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _watchColorModelGetId(WatchColorModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _watchColorModelGetLinks(WatchColorModel object) {
  return [];
}

void _watchColorModelAttach(
    IsarCollection<dynamic> col, Id id, WatchColorModel object) {
  object.id = id;
}

extension WatchColorModelByIndex on IsarCollection<WatchColorModel> {
  Future<WatchColorModel?> getByColorCodeFirmwareId(
      String colorCode, int firmwareId) {
    return getByIndex(r'colorCode_firmwareId', [colorCode, firmwareId]);
  }

  WatchColorModel? getByColorCodeFirmwareIdSync(
      String colorCode, int firmwareId) {
    return getByIndexSync(r'colorCode_firmwareId', [colorCode, firmwareId]);
  }

  Future<bool> deleteByColorCodeFirmwareId(String colorCode, int firmwareId) {
    return deleteByIndex(r'colorCode_firmwareId', [colorCode, firmwareId]);
  }

  bool deleteByColorCodeFirmwareIdSync(String colorCode, int firmwareId) {
    return deleteByIndexSync(r'colorCode_firmwareId', [colorCode, firmwareId]);
  }

  Future<List<WatchColorModel?>> getAllByColorCodeFirmwareId(
      List<String> colorCodeValues, List<int> firmwareIdValues) {
    final len = colorCodeValues.length;
    assert(firmwareIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([colorCodeValues[i], firmwareIdValues[i]]);
    }

    return getAllByIndex(r'colorCode_firmwareId', values);
  }

  List<WatchColorModel?> getAllByColorCodeFirmwareIdSync(
      List<String> colorCodeValues, List<int> firmwareIdValues) {
    final len = colorCodeValues.length;
    assert(firmwareIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([colorCodeValues[i], firmwareIdValues[i]]);
    }

    return getAllByIndexSync(r'colorCode_firmwareId', values);
  }

  Future<int> deleteAllByColorCodeFirmwareId(
      List<String> colorCodeValues, List<int> firmwareIdValues) {
    final len = colorCodeValues.length;
    assert(firmwareIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([colorCodeValues[i], firmwareIdValues[i]]);
    }

    return deleteAllByIndex(r'colorCode_firmwareId', values);
  }

  int deleteAllByColorCodeFirmwareIdSync(
      List<String> colorCodeValues, List<int> firmwareIdValues) {
    final len = colorCodeValues.length;
    assert(firmwareIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([colorCodeValues[i], firmwareIdValues[i]]);
    }

    return deleteAllByIndexSync(r'colorCode_firmwareId', values);
  }

  Future<Id> putByColorCodeFirmwareId(WatchColorModel object) {
    return putByIndex(r'colorCode_firmwareId', object);
  }

  Id putByColorCodeFirmwareIdSync(WatchColorModel object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'colorCode_firmwareId', object,
        saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByColorCodeFirmwareId(List<WatchColorModel> objects) {
    return putAllByIndex(r'colorCode_firmwareId', objects);
  }

  List<Id> putAllByColorCodeFirmwareIdSync(List<WatchColorModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'colorCode_firmwareId', objects,
        saveLinks: saveLinks);
  }
}

extension WatchColorModelQueryWhereSort
    on QueryBuilder<WatchColorModel, WatchColorModel, QWhere> {
  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhere> anyFirmwareId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'firmwareId'),
      );
    });
  }
}

extension WatchColorModelQueryWhere
    on QueryBuilder<WatchColorModel, WatchColorModel, QWhereClause> {
  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
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

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      firmwareIdEqualTo(int firmwareId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firmwareId',
        value: [firmwareId],
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      firmwareIdNotEqualTo(int firmwareId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firmwareId',
              lower: [],
              upper: [firmwareId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firmwareId',
              lower: [firmwareId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firmwareId',
              lower: [firmwareId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firmwareId',
              lower: [],
              upper: [firmwareId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      firmwareIdGreaterThan(
    int firmwareId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firmwareId',
        lower: [firmwareId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      firmwareIdLessThan(
    int firmwareId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firmwareId',
        lower: [],
        upper: [firmwareId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      firmwareIdBetween(
    int lowerFirmwareId,
    int upperFirmwareId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'firmwareId',
        lower: [lowerFirmwareId],
        includeLower: includeLower,
        upper: [upperFirmwareId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeEqualToAnyFirmwareId(String colorCode) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'colorCode_firmwareId',
        value: [colorCode],
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeNotEqualToAnyFirmwareId(String colorCode) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [],
              upper: [colorCode],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [colorCode],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [colorCode],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [],
              upper: [colorCode],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeFirmwareIdEqualTo(String colorCode, int firmwareId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'colorCode_firmwareId',
        value: [colorCode, firmwareId],
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeEqualToFirmwareIdNotEqualTo(String colorCode, int firmwareId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [colorCode],
              upper: [colorCode, firmwareId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [colorCode, firmwareId],
              includeLower: false,
              upper: [colorCode],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [colorCode, firmwareId],
              includeLower: false,
              upper: [colorCode],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'colorCode_firmwareId',
              lower: [colorCode],
              upper: [colorCode, firmwareId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeEqualToFirmwareIdGreaterThan(
    String colorCode,
    int firmwareId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'colorCode_firmwareId',
        lower: [colorCode, firmwareId],
        includeLower: include,
        upper: [colorCode],
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeEqualToFirmwareIdLessThan(
    String colorCode,
    int firmwareId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'colorCode_firmwareId',
        lower: [colorCode],
        upper: [colorCode, firmwareId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterWhereClause>
      colorCodeEqualToFirmwareIdBetween(
    String colorCode,
    int lowerFirmwareId,
    int upperFirmwareId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'colorCode_firmwareId',
        lower: [colorCode, lowerFirmwareId],
        includeLower: includeLower,
        upper: [colorCode, upperFirmwareId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WatchColorModelQueryFilter
    on QueryBuilder<WatchColorModel, WatchColorModel, QFilterCondition> {
  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      bothRatioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bothRatio',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      bothRatioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bothRatio',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      bothRatioEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bothRatio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      bothRatioGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bothRatio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      bothRatioLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bothRatio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      bothRatioBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bothRatio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'colorImage',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'colorImage',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorImage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorImage',
        value: '',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      colorImageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorImage',
        value: '',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'defaultThumb',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'defaultThumb',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultThumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defaultThumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defaultThumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defaultThumb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'defaultThumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'defaultThumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'defaultThumb',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'defaultThumb',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultThumb',
        value: '',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      defaultThumbIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'defaultThumb',
        value: '',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      distanceTopRatioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'distanceTopRatio',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      distanceTopRatioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'distanceTopRatio',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      distanceTopRatioEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distanceTopRatio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      distanceTopRatioGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'distanceTopRatio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      distanceTopRatioLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'distanceTopRatio',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      distanceTopRatioBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'distanceTopRatio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      firmwareIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firmwareId',
        value: value,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      firmwareIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firmwareId',
        value: value,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      firmwareIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firmwareId',
        value: value,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      firmwareIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firmwareId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
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

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
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

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterFilterCondition>
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
}

extension WatchColorModelQueryObject
    on QueryBuilder<WatchColorModel, WatchColorModel, QFilterCondition> {}

extension WatchColorModelQueryLinks
    on QueryBuilder<WatchColorModel, WatchColorModel, QFilterCondition> {}

extension WatchColorModelQuerySortBy
    on QueryBuilder<WatchColorModel, WatchColorModel, QSortBy> {
  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByBothRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bothRatio', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByBothRatioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bothRatio', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByColorImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorImage', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByColorImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorImage', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByDefaultThumb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultThumb', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByDefaultThumbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultThumb', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByDistanceTopRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distanceTopRatio', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByDistanceTopRatioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distanceTopRatio', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByFirmwareId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firmwareId', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      sortByFirmwareIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firmwareId', Sort.desc);
    });
  }
}

extension WatchColorModelQuerySortThenBy
    on QueryBuilder<WatchColorModel, WatchColorModel, QSortThenBy> {
  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByBothRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bothRatio', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByBothRatioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bothRatio', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByColorImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorImage', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByColorImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorImage', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByDefaultThumb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultThumb', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByDefaultThumbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultThumb', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByDistanceTopRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distanceTopRatio', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByDistanceTopRatioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distanceTopRatio', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByFirmwareId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firmwareId', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy>
      thenByFirmwareIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firmwareId', Sort.desc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension WatchColorModelQueryWhereDistinct
    on QueryBuilder<WatchColorModel, WatchColorModel, QDistinct> {
  QueryBuilder<WatchColorModel, WatchColorModel, QDistinct>
      distinctByBothRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bothRatio');
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QDistinct> distinctByColorCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QDistinct>
      distinctByColorImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorImage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QDistinct>
      distinctByDefaultThumb({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'defaultThumb', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QDistinct>
      distinctByDistanceTopRatio() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distanceTopRatio');
    });
  }

  QueryBuilder<WatchColorModel, WatchColorModel, QDistinct>
      distinctByFirmwareId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firmwareId');
    });
  }
}

extension WatchColorModelQueryProperty
    on QueryBuilder<WatchColorModel, WatchColorModel, QQueryProperty> {
  QueryBuilder<WatchColorModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WatchColorModel, double?, QQueryOperations> bothRatioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bothRatio');
    });
  }

  QueryBuilder<WatchColorModel, String, QQueryOperations> colorCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorCode');
    });
  }

  QueryBuilder<WatchColorModel, String?, QQueryOperations>
      colorImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorImage');
    });
  }

  QueryBuilder<WatchColorModel, String?, QQueryOperations>
      defaultThumbProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'defaultThumb');
    });
  }

  QueryBuilder<WatchColorModel, double?, QQueryOperations>
      distanceTopRatioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distanceTopRatio');
    });
  }

  QueryBuilder<WatchColorModel, int, QQueryOperations> firmwareIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firmwareId');
    });
  }
}
