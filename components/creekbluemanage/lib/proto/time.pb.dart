///
//  Generated code. Do not modify.
//  source: time.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'time.pbenum.dart';

export 'time.pbenum.dart';

class protocol_time extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_time', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'month', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'day', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hour', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minute', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'second', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'week', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utcTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeZone', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_time._() : super();
  factory protocol_time({
    $core.int? year,
    $core.int? month,
    $core.int? day,
    $core.int? hour,
    $core.int? minute,
    $core.int? second,
    $core.int? week,
    $core.int? utcTime,
    $core.int? timeZone,
  }) {
    final _result = create();
    if (year != null) {
      _result.year = year;
    }
    if (month != null) {
      _result.month = month;
    }
    if (day != null) {
      _result.day = day;
    }
    if (hour != null) {
      _result.hour = hour;
    }
    if (minute != null) {
      _result.minute = minute;
    }
    if (second != null) {
      _result.second = second;
    }
    if (week != null) {
      _result.week = week;
    }
    if (utcTime != null) {
      _result.utcTime = utcTime;
    }
    if (timeZone != null) {
      _result.timeZone = timeZone;
    }
    return _result;
  }
  factory protocol_time.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_time.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_time clone() => protocol_time()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_time copyWith(void Function(protocol_time) updates) => super.copyWith((message) => updates(message as protocol_time)) as protocol_time; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_time create() => protocol_time._();
  protocol_time createEmptyInstance() => create();
  static $pb.PbList<protocol_time> createRepeated() => $pb.PbList<protocol_time>();
  @$core.pragma('dart2js:noInline')
  static protocol_time getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_time>(create);
  static protocol_time? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get year => $_getIZ(0);
  @$pb.TagNumber(1)
  set year($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasYear() => $_has(0);
  @$pb.TagNumber(1)
  void clearYear() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get month => $_getIZ(1);
  @$pb.TagNumber(2)
  set month($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get day => $_getIZ(2);
  @$pb.TagNumber(3)
  set day($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDay() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get hour => $_getIZ(3);
  @$pb.TagNumber(4)
  set hour($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get minute => $_getIZ(4);
  @$pb.TagNumber(5)
  set minute($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinute() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinute() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get second => $_getIZ(5);
  @$pb.TagNumber(6)
  set second($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSecond() => $_has(5);
  @$pb.TagNumber(6)
  void clearSecond() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get week => $_getIZ(6);
  @$pb.TagNumber(7)
  set week($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWeek() => $_has(6);
  @$pb.TagNumber(7)
  void clearWeek() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get utcTime => $_getIZ(7);
  @$pb.TagNumber(8)
  set utcTime($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUtcTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearUtcTime() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get timeZone => $_getIZ(8);
  @$pb.TagNumber(9)
  set timeZone($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimeZone() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimeZone() => clearField(9);
}

class protocol_device_time_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_device_time_operate', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_time>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: protocol_time.create)
    ..hasRequiredFields = false
  ;

  protocol_device_time_operate._() : super();
  factory protocol_device_time_operate({
    operate_type? operate,
    protocol_time? time,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (time != null) {
      _result.time = time;
    }
    return _result;
  }
  factory protocol_device_time_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_device_time_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_device_time_operate clone() => protocol_device_time_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_device_time_operate copyWith(void Function(protocol_device_time_operate) updates) => super.copyWith((message) => updates(message as protocol_device_time_operate)) as protocol_device_time_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_device_time_operate create() => protocol_device_time_operate._();
  protocol_device_time_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_device_time_operate> createRepeated() => $pb.PbList<protocol_device_time_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_device_time_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_device_time_operate>(create);
  static protocol_device_time_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  protocol_time get time => $_getN(1);
  @$pb.TagNumber(2)
  set time(protocol_time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
  @$pb.TagNumber(2)
  protocol_time ensureTime() => $_ensure(1);
}

class protocol_device_time_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_device_time_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOM<protocol_time>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: protocol_time.create)
    ..hasRequiredFields = false
  ;

  protocol_device_time_inquire_reply._() : super();
  factory protocol_device_time_inquire_reply({
    operate_type? operate,
    protocol_time? time,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (time != null) {
      _result.time = time;
    }
    return _result;
  }
  factory protocol_device_time_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_device_time_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_device_time_inquire_reply clone() => protocol_device_time_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_device_time_inquire_reply copyWith(void Function(protocol_device_time_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_device_time_inquire_reply)) as protocol_device_time_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_device_time_inquire_reply create() => protocol_device_time_inquire_reply._();
  protocol_device_time_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_device_time_inquire_reply> createRepeated() => $pb.PbList<protocol_device_time_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_device_time_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_device_time_inquire_reply>(create);
  static protocol_device_time_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  protocol_time get time => $_getN(1);
  @$pb.TagNumber(2)
  set time(protocol_time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
  @$pb.TagNumber(2)
  protocol_time ensureTime() => $_ensure(1);
}

