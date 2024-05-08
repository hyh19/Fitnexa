///
//  Generated code. Do not modify.
//  source: healthhead.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'healthhead.pbenum.dart';

export 'healthhead.pbenum.dart';

class protocol_health_sync_head extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_sync_head', createEmptyInstance: create)
    ..e<sync_operate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncOperate', $pb.PbFieldType.OE, defaultOrMaker: sync_operate.START_SYNC, valueOf: sync_operate.valueOf, enumValues: sync_operate.values)
    ..e<sync_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncType', $pb.PbFieldType.OE, defaultOrMaker: sync_type.SYNC_HEART_RATE, valueOf: sync_type.valueOf, enumValues: sync_type.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataOffset', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_health_sync_head._() : super();
  factory protocol_health_sync_head({
    sync_operate? syncOperate,
    sync_type? syncType,
    $core.int? dataOffset,
  }) {
    final _result = create();
    if (syncOperate != null) {
      _result.syncOperate = syncOperate;
    }
    if (syncType != null) {
      _result.syncType = syncType;
    }
    if (dataOffset != null) {
      _result.dataOffset = dataOffset;
    }
    return _result;
  }
  factory protocol_health_sync_head.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_sync_head.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_sync_head clone() => protocol_health_sync_head()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_sync_head copyWith(void Function(protocol_health_sync_head) updates) => super.copyWith((message) => updates(message as protocol_health_sync_head)) as protocol_health_sync_head; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_sync_head create() => protocol_health_sync_head._();
  protocol_health_sync_head createEmptyInstance() => create();
  static $pb.PbList<protocol_health_sync_head> createRepeated() => $pb.PbList<protocol_health_sync_head>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_sync_head getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_sync_head>(create);
  static protocol_health_sync_head? _defaultInstance;

  @$pb.TagNumber(1)
  sync_operate get syncOperate => $_getN(0);
  @$pb.TagNumber(1)
  set syncOperate(sync_operate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyncOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncOperate() => clearField(1);

  @$pb.TagNumber(2)
  sync_type get syncType => $_getN(1);
  @$pb.TagNumber(2)
  set syncType(sync_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSyncType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSyncType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get dataOffset => $_getIZ(2);
  @$pb.TagNumber(3)
  set dataOffset($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataOffset() => clearField(3);
}

class protocol_health_sync_head_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_health_sync_head_reply', createEmptyInstance: create)
    ..e<sync_operate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncOperate', $pb.PbFieldType.OE, defaultOrMaker: sync_operate.START_SYNC, valueOf: sync_operate.valueOf, enumValues: sync_operate.values)
    ..e<sync_type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncType', $pb.PbFieldType.OE, defaultOrMaker: sync_type.SYNC_HEART_RATE, valueOf: sync_type.valueOf, enumValues: sync_type.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataOffsetr', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataSize', $pb.PbFieldType.OU3)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'haveNextData')
    ..hasRequiredFields = false
  ;

  protocol_health_sync_head_reply._() : super();
  factory protocol_health_sync_head_reply({
    sync_operate? syncOperate,
    sync_type? syncType,
    $core.int? dataOffsetr,
    $core.int? dataSize,
    $core.bool? haveNextData,
  }) {
    final _result = create();
    if (syncOperate != null) {
      _result.syncOperate = syncOperate;
    }
    if (syncType != null) {
      _result.syncType = syncType;
    }
    if (dataOffsetr != null) {
      _result.dataOffsetr = dataOffsetr;
    }
    if (dataSize != null) {
      _result.dataSize = dataSize;
    }
    if (haveNextData != null) {
      _result.haveNextData = haveNextData;
    }
    return _result;
  }
  factory protocol_health_sync_head_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_health_sync_head_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_health_sync_head_reply clone() => protocol_health_sync_head_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_health_sync_head_reply copyWith(void Function(protocol_health_sync_head_reply) updates) => super.copyWith((message) => updates(message as protocol_health_sync_head_reply)) as protocol_health_sync_head_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_health_sync_head_reply create() => protocol_health_sync_head_reply._();
  protocol_health_sync_head_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_health_sync_head_reply> createRepeated() => $pb.PbList<protocol_health_sync_head_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_health_sync_head_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_health_sync_head_reply>(create);
  static protocol_health_sync_head_reply? _defaultInstance;

  @$pb.TagNumber(1)
  sync_operate get syncOperate => $_getN(0);
  @$pb.TagNumber(1)
  set syncOperate(sync_operate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyncOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncOperate() => clearField(1);

  @$pb.TagNumber(2)
  sync_type get syncType => $_getN(1);
  @$pb.TagNumber(2)
  set syncType(sync_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSyncType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSyncType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get dataOffsetr => $_getIZ(2);
  @$pb.TagNumber(3)
  set dataOffsetr($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataOffsetr() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataOffsetr() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get dataSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set dataSize($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDataSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearDataSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get haveNextData => $_getBF(4);
  @$pb.TagNumber(5)
  set haveNextData($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHaveNextData() => $_has(4);
  @$pb.TagNumber(5)
  void clearHaveNextData() => clearField(5);
}

