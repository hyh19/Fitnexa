///
//  Generated code. Do not modify.
//  source: call.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'call.pbenum.dart';

export 'call.pbenum.dart';

class protocol_call_switch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_call_switch', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'callSwitch')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'callDelay', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_call_switch._() : super();
  factory protocol_call_switch({
    operate_type? operate,
    $core.bool? callSwitch,
    $core.int? callDelay,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (callSwitch != null) {
      _result.callSwitch = callSwitch;
    }
    if (callDelay != null) {
      _result.callDelay = callDelay;
    }
    return _result;
  }
  factory protocol_call_switch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_call_switch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_call_switch clone() => protocol_call_switch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_call_switch copyWith(void Function(protocol_call_switch) updates) => super.copyWith((message) => updates(message as protocol_call_switch)) as protocol_call_switch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_call_switch create() => protocol_call_switch._();
  protocol_call_switch createEmptyInstance() => create();
  static $pb.PbList<protocol_call_switch> createRepeated() => $pb.PbList<protocol_call_switch>();
  @$core.pragma('dart2js:noInline')
  static protocol_call_switch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_call_switch>(create);
  static protocol_call_switch? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get callSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set callSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get callDelay => $_getIZ(2);
  @$pb.TagNumber(3)
  set callDelay($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallDelay() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallDelay() => clearField(3);
}

class protocol_call_switch_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_call_switch_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'callSwitch')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'callDelay', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_call_switch_inquire_reply._() : super();
  factory protocol_call_switch_inquire_reply({
    operate_type? operate,
    $core.bool? callSwitch,
    $core.int? callDelay,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (callSwitch != null) {
      _result.callSwitch = callSwitch;
    }
    if (callDelay != null) {
      _result.callDelay = callDelay;
    }
    return _result;
  }
  factory protocol_call_switch_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_call_switch_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_call_switch_inquire_reply clone() => protocol_call_switch_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_call_switch_inquire_reply copyWith(void Function(protocol_call_switch_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_call_switch_inquire_reply)) as protocol_call_switch_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_call_switch_inquire_reply create() => protocol_call_switch_inquire_reply._();
  protocol_call_switch_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_call_switch_inquire_reply> createRepeated() => $pb.PbList<protocol_call_switch_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_call_switch_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_call_switch_inquire_reply>(create);
  static protocol_call_switch_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get callSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set callSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get callDelay => $_getIZ(2);
  @$pb.TagNumber(3)
  set callDelay($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCallDelay() => $_has(2);
  @$pb.TagNumber(3)
  void clearCallDelay() => clearField(3);
}

class protocol_call_remind extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_call_remind', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contactLen', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contactText')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumberLen', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..hasRequiredFields = false
  ;

  protocol_call_remind._() : super();
  factory protocol_call_remind({
    $core.int? contactLen,
    $core.String? contactText,
    $core.int? phoneNumberLen,
    $core.String? phoneNumber,
  }) {
    final _result = create();
    if (contactLen != null) {
      _result.contactLen = contactLen;
    }
    if (contactText != null) {
      _result.contactText = contactText;
    }
    if (phoneNumberLen != null) {
      _result.phoneNumberLen = phoneNumberLen;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    return _result;
  }
  factory protocol_call_remind.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_call_remind.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_call_remind clone() => protocol_call_remind()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_call_remind copyWith(void Function(protocol_call_remind) updates) => super.copyWith((message) => updates(message as protocol_call_remind)) as protocol_call_remind; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_call_remind create() => protocol_call_remind._();
  protocol_call_remind createEmptyInstance() => create();
  static $pb.PbList<protocol_call_remind> createRepeated() => $pb.PbList<protocol_call_remind>();
  @$core.pragma('dart2js:noInline')
  static protocol_call_remind getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_call_remind>(create);
  static protocol_call_remind? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get contactLen => $_getIZ(0);
  @$pb.TagNumber(1)
  set contactLen($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContactLen() => $_has(0);
  @$pb.TagNumber(1)
  void clearContactLen() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contactText => $_getSZ(1);
  @$pb.TagNumber(2)
  set contactText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContactText() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactText() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get phoneNumberLen => $_getIZ(2);
  @$pb.TagNumber(3)
  set phoneNumberLen($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhoneNumberLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhoneNumberLen() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);
}

class protocol_call_remind_status extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_call_remind_status', createEmptyInstance: create)
    ..e<call_status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: call_status.RECEIVED_CALL, valueOf: call_status.valueOf, enumValues: call_status.values)
    ..hasRequiredFields = false
  ;

  protocol_call_remind_status._() : super();
  factory protocol_call_remind_status({
    call_status? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory protocol_call_remind_status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_call_remind_status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_call_remind_status clone() => protocol_call_remind_status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_call_remind_status copyWith(void Function(protocol_call_remind_status) updates) => super.copyWith((message) => updates(message as protocol_call_remind_status)) as protocol_call_remind_status; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_call_remind_status create() => protocol_call_remind_status._();
  protocol_call_remind_status createEmptyInstance() => create();
  static $pb.PbList<protocol_call_remind_status> createRepeated() => $pb.PbList<protocol_call_remind_status>();
  @$core.pragma('dart2js:noInline')
  static protocol_call_remind_status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_call_remind_status>(create);
  static protocol_call_remind_status? _defaultInstance;

  @$pb.TagNumber(1)
  call_status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(call_status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

