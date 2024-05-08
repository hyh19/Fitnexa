///
//  Generated code. Do not modify.
//  source: mtu.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'mtu.pbenum.dart';

export 'mtu.pbenum.dart';

class protocol_connect_status_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_connect_status_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reconnectOperate')
    ..hasRequiredFields = false
  ;

  protocol_connect_status_operate._() : super();
  factory protocol_connect_status_operate({
    operate_type? operate,
    $core.bool? reconnectOperate,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (reconnectOperate != null) {
      _result.reconnectOperate = reconnectOperate;
    }
    return _result;
  }
  factory protocol_connect_status_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_connect_status_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_connect_status_operate clone() => protocol_connect_status_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_connect_status_operate copyWith(void Function(protocol_connect_status_operate) updates) => super.copyWith((message) => updates(message as protocol_connect_status_operate)) as protocol_connect_status_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_connect_status_operate create() => protocol_connect_status_operate._();
  protocol_connect_status_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_connect_status_operate> createRepeated() => $pb.PbList<protocol_connect_status_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_connect_status_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_connect_status_operate>(create);
  static protocol_connect_status_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get reconnectOperate => $_getBF(1);
  @$pb.TagNumber(2)
  set reconnectOperate($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReconnectOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearReconnectOperate() => clearField(2);
}

class protocol_connect_status_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_connect_status_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getTranMtuSize', $pb.PbFieldType.OU3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blePairingStatus')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'btPairingStatus')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'btConnectStatus')
    ..hasRequiredFields = false
  ;

  protocol_connect_status_inquire_reply._() : super();
  factory protocol_connect_status_inquire_reply({
    operate_type? operate,
    $core.int? getTranMtuSize,
    $core.bool? blePairingStatus,
    $core.bool? btPairingStatus,
    $core.bool? btConnectStatus,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (getTranMtuSize != null) {
      _result.getTranMtuSize = getTranMtuSize;
    }
    if (blePairingStatus != null) {
      _result.blePairingStatus = blePairingStatus;
    }
    if (btPairingStatus != null) {
      _result.btPairingStatus = btPairingStatus;
    }
    if (btConnectStatus != null) {
      _result.btConnectStatus = btConnectStatus;
    }
    return _result;
  }
  factory protocol_connect_status_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_connect_status_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_connect_status_inquire_reply clone() => protocol_connect_status_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_connect_status_inquire_reply copyWith(void Function(protocol_connect_status_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_connect_status_inquire_reply)) as protocol_connect_status_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_connect_status_inquire_reply create() => protocol_connect_status_inquire_reply._();
  protocol_connect_status_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_connect_status_inquire_reply> createRepeated() => $pb.PbList<protocol_connect_status_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_connect_status_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_connect_status_inquire_reply>(create);
  static protocol_connect_status_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get getTranMtuSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set getTranMtuSize($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGetTranMtuSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetTranMtuSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get blePairingStatus => $_getBF(2);
  @$pb.TagNumber(3)
  set blePairingStatus($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlePairingStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlePairingStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get btPairingStatus => $_getBF(3);
  @$pb.TagNumber(4)
  set btPairingStatus($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBtPairingStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearBtPairingStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get btConnectStatus => $_getBF(4);
  @$pb.TagNumber(5)
  set btConnectStatus($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBtConnectStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearBtConnectStatus() => clearField(5);
}

