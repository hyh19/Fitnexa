// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNoticeResultModelCollection on Isar {
  IsarCollection<NoticeResultModel> get noticeResultModels => this.collection();
}

const NoticeResultModelSchema = CollectionSchema(
  name: r'NoticeResultModel',
  id: -3700246426666456301,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.string,
    ),
    r'contentReply': PropertySchema(
      id: 1,
      name: r'contentReply',
      type: IsarType.string,
    ),
    r'isRead': PropertySchema(
      id: 2,
      name: r'isRead',
      type: IsarType.bool,
    ),
    r'isSyncToFirmware': PropertySchema(
      id: 3,
      name: r'isSyncToFirmware',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'newDialClassifyId': PropertySchema(
      id: 5,
      name: r'newDialClassifyId',
      type: IsarType.long,
    ),
    r'noticeId': PropertySchema(
      id: 6,
      name: r'noticeId',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.long,
    ),
    r'updateTime': PropertySchema(
      id: 9,
      name: r'updateTime',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 10,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _noticeResultModelEstimateSize,
  serialize: _noticeResultModelSerialize,
  deserialize: _noticeResultModelDeserialize,
  deserializeProp: _noticeResultModelDeserializeProp,
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
    r'noticeId_userId': IndexSchema(
      id: -8352312023912745113,
      name: r'noticeId_userId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'noticeId',
          type: IndexType.value,
          caseSensitive: false,
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
  getId: _noticeResultModelGetId,
  getLinks: _noticeResultModelGetLinks,
  attach: _noticeResultModelAttach,
  version: '3.1.0+1',
);

int _noticeResultModelEstimateSize(
  NoticeResultModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.contentReply.length * 3;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  {
    final value = object.updateTime;
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

void _noticeResultModelSerialize(
  NoticeResultModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeString(offsets[1], object.contentReply);
  writer.writeBool(offsets[2], object.isRead);
  writer.writeBool(offsets[3], object.isSyncToFirmware);
  writer.writeString(offsets[4], object.name);
  writer.writeLong(offsets[5], object.newDialClassifyId);
  writer.writeLong(offsets[6], object.noticeId);
  writer.writeString(offsets[7], object.title);
  writer.writeLong(offsets[8], object.type);
  writer.writeString(offsets[9], object.updateTime);
  writer.writeString(offsets[10], object.userId);
}

NoticeResultModel _noticeResultModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NoticeResultModel(
    content: reader.readStringOrNull(offsets[0]) ?? '',
    contentReply: reader.readStringOrNull(offsets[1]) ?? '',
    isRead: reader.readBoolOrNull(offsets[2]) ?? false,
    isSyncToFirmware: reader.readBoolOrNull(offsets[3]) ?? false,
    name: reader.readStringOrNull(offsets[4]),
    newDialClassifyId: reader.readLongOrNull(offsets[5]),
    noticeId: reader.readLongOrNull(offsets[6]),
    title: reader.readStringOrNull(offsets[7]) ?? '',
    type: reader.readLongOrNull(offsets[8]),
    updateTime: reader.readStringOrNull(offsets[9]),
    userId: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _noticeResultModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 3:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _noticeResultModelGetId(NoticeResultModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _noticeResultModelGetLinks(
    NoticeResultModel object) {
  return [];
}

void _noticeResultModelAttach(
    IsarCollection<dynamic> col, Id id, NoticeResultModel object) {
  object.id = id;
}

extension NoticeResultModelByIndex on IsarCollection<NoticeResultModel> {
  Future<NoticeResultModel?> getByNoticeIdUserId(
      int? noticeId, String? userId) {
    return getByIndex(r'noticeId_userId', [noticeId, userId]);
  }

  NoticeResultModel? getByNoticeIdUserIdSync(int? noticeId, String? userId) {
    return getByIndexSync(r'noticeId_userId', [noticeId, userId]);
  }

  Future<bool> deleteByNoticeIdUserId(int? noticeId, String? userId) {
    return deleteByIndex(r'noticeId_userId', [noticeId, userId]);
  }

  bool deleteByNoticeIdUserIdSync(int? noticeId, String? userId) {
    return deleteByIndexSync(r'noticeId_userId', [noticeId, userId]);
  }

  Future<List<NoticeResultModel?>> getAllByNoticeIdUserId(
      List<int?> noticeIdValues, List<String?> userIdValues) {
    final len = noticeIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([noticeIdValues[i], userIdValues[i]]);
    }

    return getAllByIndex(r'noticeId_userId', values);
  }

  List<NoticeResultModel?> getAllByNoticeIdUserIdSync(
      List<int?> noticeIdValues, List<String?> userIdValues) {
    final len = noticeIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([noticeIdValues[i], userIdValues[i]]);
    }

    return getAllByIndexSync(r'noticeId_userId', values);
  }

  Future<int> deleteAllByNoticeIdUserId(
      List<int?> noticeIdValues, List<String?> userIdValues) {
    final len = noticeIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([noticeIdValues[i], userIdValues[i]]);
    }

    return deleteAllByIndex(r'noticeId_userId', values);
  }

  int deleteAllByNoticeIdUserIdSync(
      List<int?> noticeIdValues, List<String?> userIdValues) {
    final len = noticeIdValues.length;
    assert(userIdValues.length == len,
        'All index values must have the same length');
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([noticeIdValues[i], userIdValues[i]]);
    }

    return deleteAllByIndexSync(r'noticeId_userId', values);
  }

  Future<Id> putByNoticeIdUserId(NoticeResultModel object) {
    return putByIndex(r'noticeId_userId', object);
  }

  Id putByNoticeIdUserIdSync(NoticeResultModel object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'noticeId_userId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByNoticeIdUserId(List<NoticeResultModel> objects) {
    return putAllByIndex(r'noticeId_userId', objects);
  }

  List<Id> putAllByNoticeIdUserIdSync(List<NoticeResultModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'noticeId_userId', objects, saveLinks: saveLinks);
  }
}

extension NoticeResultModelQueryWhereSort
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QWhere> {
  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NoticeResultModelQueryWhere
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QWhereClause> {
  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [null],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      userIdEqualTo(String? userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdIsNullAnyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noticeId_userId',
        value: [null],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdIsNotNullAnyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noticeId_userId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdEqualToAnyUserId(int? noticeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noticeId_userId',
        value: [noticeId],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdNotEqualToAnyUserId(int? noticeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [],
              upper: [noticeId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [noticeId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [noticeId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [],
              upper: [noticeId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdGreaterThanAnyUserId(
    int? noticeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noticeId_userId',
        lower: [noticeId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdLessThanAnyUserId(
    int? noticeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noticeId_userId',
        lower: [],
        upper: [noticeId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdBetweenAnyUserId(
    int? lowerNoticeId,
    int? upperNoticeId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noticeId_userId',
        lower: [lowerNoticeId],
        includeLower: includeLower,
        upper: [upperNoticeId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdEqualToUserIdIsNull(int? noticeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noticeId_userId',
        value: [noticeId, null],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdEqualToUserIdIsNotNull(int? noticeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noticeId_userId',
        lower: [noticeId, null],
        includeLower: false,
        upper: [
          noticeId,
        ],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdUserIdEqualTo(int? noticeId, String? userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noticeId_userId',
        value: [noticeId, userId],
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterWhereClause>
      noticeIdEqualToUserIdNotEqualTo(int? noticeId, String? userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [noticeId],
              upper: [noticeId, userId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [noticeId, userId],
              includeLower: false,
              upper: [noticeId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [noticeId, userId],
              includeLower: false,
              upper: [noticeId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noticeId_userId',
              lower: [noticeId],
              upper: [noticeId, userId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension NoticeResultModelQueryFilter
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QFilterCondition> {
  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentReply',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contentReply',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contentReply',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contentReply',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contentReply',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contentReply',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contentReply',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contentReply',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentReply',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      contentReplyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contentReply',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      isReadEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRead',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      isSyncToFirmwareEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSyncToFirmware',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      newDialClassifyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'newDialClassifyId',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      newDialClassifyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'newDialClassifyId',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      newDialClassifyIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newDialClassifyId',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      newDialClassifyIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newDialClassifyId',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      newDialClassifyIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newDialClassifyId',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      newDialClassifyIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newDialClassifyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      noticeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noticeId',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      noticeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noticeId',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      noticeIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noticeId',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      noticeIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noticeId',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      noticeIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noticeId',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      noticeIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noticeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleEqualTo(
    String value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleLessThan(
    String value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleBetween(
    String lower,
    String upper, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      typeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      typeGreaterThan(
    int? value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      typeLessThan(
    int? value, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      typeBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateTime',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updateTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      updateTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
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

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension NoticeResultModelQueryObject
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QFilterCondition> {}

extension NoticeResultModelQueryLinks
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QFilterCondition> {}

extension NoticeResultModelQuerySortBy
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QSortBy> {
  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByContentReply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentReply', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByContentReplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentReply', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByIsReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByIsSyncToFirmware() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSyncToFirmware', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByIsSyncToFirmwareDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSyncToFirmware', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByNewDialClassifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newDialClassifyId', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByNewDialClassifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newDialClassifyId', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByNoticeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noticeId', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByNoticeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noticeId', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension NoticeResultModelQuerySortThenBy
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QSortThenBy> {
  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByContentReply() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentReply', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByContentReplyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contentReply', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByIsReadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRead', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByIsSyncToFirmware() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSyncToFirmware', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByIsSyncToFirmwareDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSyncToFirmware', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByNewDialClassifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newDialClassifyId', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByNewDialClassifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newDialClassifyId', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByNoticeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noticeId', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByNoticeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noticeId', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateTime', Sort.desc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension NoticeResultModelQueryWhereDistinct
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct> {
  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByContent({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByContentReply({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contentReply', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByIsRead() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRead');
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByIsSyncToFirmware() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSyncToFirmware');
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByNewDialClassifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newDialClassifyId');
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByNoticeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noticeId');
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByUpdateTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NoticeResultModel, NoticeResultModel, QDistinct>
      distinctByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension NoticeResultModelQueryProperty
    on QueryBuilder<NoticeResultModel, NoticeResultModel, QQueryProperty> {
  QueryBuilder<NoticeResultModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NoticeResultModel, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<NoticeResultModel, String, QQueryOperations>
      contentReplyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contentReply');
    });
  }

  QueryBuilder<NoticeResultModel, bool, QQueryOperations> isReadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRead');
    });
  }

  QueryBuilder<NoticeResultModel, bool, QQueryOperations>
      isSyncToFirmwareProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSyncToFirmware');
    });
  }

  QueryBuilder<NoticeResultModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<NoticeResultModel, int?, QQueryOperations>
      newDialClassifyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newDialClassifyId');
    });
  }

  QueryBuilder<NoticeResultModel, int?, QQueryOperations> noticeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noticeId');
    });
  }

  QueryBuilder<NoticeResultModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<NoticeResultModel, int?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<NoticeResultModel, String?, QQueryOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateTime');
    });
  }

  QueryBuilder<NoticeResultModel, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
