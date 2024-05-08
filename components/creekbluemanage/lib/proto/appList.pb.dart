//
//  Generated code. Do not modify.
//  source: appList.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'appList.pbenum.dart';

export 'appList.pbenum.dart';

class protocol_app_list_operate extends $pb.GeneratedMessage {
  factory protocol_app_list_operate({
    operate_type? operate,
    $core.Iterable<app_list>? list,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (list != null) {
      $result.list.addAll(list);
    }
    return $result;
  }
  protocol_app_list_operate._() : super();
  factory protocol_app_list_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_app_list_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_app_list_operate', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..pc<app_list>(2, _omitFieldNames ? '' : 'list', $pb.PbFieldType.KE, valueOf: app_list.valueOf, enumValues: app_list.values, defaultEnumValue: app_list.APP_LIST_ACTIVITY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_app_list_operate clone() => protocol_app_list_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_app_list_operate copyWith(void Function(protocol_app_list_operate) updates) => super.copyWith((message) => updates(message as protocol_app_list_operate)) as protocol_app_list_operate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_app_list_operate create() => protocol_app_list_operate._();
  protocol_app_list_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_app_list_operate> createRepeated() => $pb.PbList<protocol_app_list_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_app_list_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_app_list_operate>(create);
  static protocol_app_list_operate? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<app_list> get list => $_getList(1);
}

class protocol_app_list_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_app_list_inquire_reply({
    operate_type? operate,
    $core.int? funcTable,
    $core.int? supportShowNum,
    $core.Iterable<app_list>? list,
    $core.bool? appListActivitySupport,
    $core.bool? appListWorkoutSupport,
    $core.bool? appListStepsSupport,
    $core.bool? appListHeartrateSupport,
    $core.bool? appListSleepSupport,
    $core.bool? appListStressSupport,
    $core.bool? appListMenstruationSupport,
    $core.bool? appListBreatheSupport,
    $core.bool? appListAlarmsSupport,
    $core.bool? appListPhoneSupport,
    $core.bool? appListTimersSupport,
    $core.bool? appListStopwatchSupport,
    $core.bool? appListSpo2Support,
    $core.bool? appListWeatherSupport,
    $core.bool? appListCameraRemoteSupport,
    $core.bool? appListMusicSupport,
    $core.bool? appListFindPhoneSupport,
    $core.bool? appListWorldClockSupport,
    $core.bool? appListSettingsSupport,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (supportShowNum != null) {
      $result.supportShowNum = supportShowNum;
    }
    if (list != null) {
      $result.list.addAll(list);
    }
    if (appListActivitySupport != null) {
      $result.appListActivitySupport = appListActivitySupport;
    }
    if (appListWorkoutSupport != null) {
      $result.appListWorkoutSupport = appListWorkoutSupport;
    }
    if (appListStepsSupport != null) {
      $result.appListStepsSupport = appListStepsSupport;
    }
    if (appListHeartrateSupport != null) {
      $result.appListHeartrateSupport = appListHeartrateSupport;
    }
    if (appListSleepSupport != null) {
      $result.appListSleepSupport = appListSleepSupport;
    }
    if (appListStressSupport != null) {
      $result.appListStressSupport = appListStressSupport;
    }
    if (appListMenstruationSupport != null) {
      $result.appListMenstruationSupport = appListMenstruationSupport;
    }
    if (appListBreatheSupport != null) {
      $result.appListBreatheSupport = appListBreatheSupport;
    }
    if (appListAlarmsSupport != null) {
      $result.appListAlarmsSupport = appListAlarmsSupport;
    }
    if (appListPhoneSupport != null) {
      $result.appListPhoneSupport = appListPhoneSupport;
    }
    if (appListTimersSupport != null) {
      $result.appListTimersSupport = appListTimersSupport;
    }
    if (appListStopwatchSupport != null) {
      $result.appListStopwatchSupport = appListStopwatchSupport;
    }
    if (appListSpo2Support != null) {
      $result.appListSpo2Support = appListSpo2Support;
    }
    if (appListWeatherSupport != null) {
      $result.appListWeatherSupport = appListWeatherSupport;
    }
    if (appListCameraRemoteSupport != null) {
      $result.appListCameraRemoteSupport = appListCameraRemoteSupport;
    }
    if (appListMusicSupport != null) {
      $result.appListMusicSupport = appListMusicSupport;
    }
    if (appListFindPhoneSupport != null) {
      $result.appListFindPhoneSupport = appListFindPhoneSupport;
    }
    if (appListWorldClockSupport != null) {
      $result.appListWorldClockSupport = appListWorldClockSupport;
    }
    if (appListSettingsSupport != null) {
      $result.appListSettingsSupport = appListSettingsSupport;
    }
    return $result;
  }
  protocol_app_list_inquire_reply._() : super();
  factory protocol_app_list_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_app_list_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_app_list_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'supportShowNum', $pb.PbFieldType.OU3)
    ..pc<app_list>(4, _omitFieldNames ? '' : 'list', $pb.PbFieldType.KE, valueOf: app_list.valueOf, enumValues: app_list.values, defaultEnumValue: app_list.APP_LIST_ACTIVITY)
    ..aOB(5, _omitFieldNames ? '' : 'appListActivitySupport')
    ..aOB(6, _omitFieldNames ? '' : 'appListWorkoutSupport')
    ..aOB(7, _omitFieldNames ? '' : 'appListStepsSupport')
    ..aOB(8, _omitFieldNames ? '' : 'appListHeartrateSupport')
    ..aOB(9, _omitFieldNames ? '' : 'appListSleepSupport')
    ..aOB(10, _omitFieldNames ? '' : 'appListStressSupport')
    ..aOB(11, _omitFieldNames ? '' : 'appListMenstruationSupport')
    ..aOB(12, _omitFieldNames ? '' : 'appListBreatheSupport')
    ..aOB(13, _omitFieldNames ? '' : 'appListAlarmsSupport')
    ..aOB(14, _omitFieldNames ? '' : 'appListPhoneSupport')
    ..aOB(15, _omitFieldNames ? '' : 'appListTimersSupport')
    ..aOB(16, _omitFieldNames ? '' : 'appListStopwatchSupport')
    ..aOB(17, _omitFieldNames ? '' : 'appListSpo2Support')
    ..aOB(18, _omitFieldNames ? '' : 'appListWeatherSupport')
    ..aOB(19, _omitFieldNames ? '' : 'appListCameraRemoteSupport')
    ..aOB(20, _omitFieldNames ? '' : 'appListMusicSupport')
    ..aOB(21, _omitFieldNames ? '' : 'appListFindPhoneSupport')
    ..aOB(22, _omitFieldNames ? '' : 'appListWorldClockSupport')
    ..aOB(23, _omitFieldNames ? '' : 'appListSettingsSupport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_app_list_inquire_reply clone() => protocol_app_list_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_app_list_inquire_reply copyWith(void Function(protocol_app_list_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_app_list_inquire_reply)) as protocol_app_list_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_app_list_inquire_reply create() => protocol_app_list_inquire_reply._();
  protocol_app_list_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_app_list_inquire_reply> createRepeated() => $pb.PbList<protocol_app_list_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_app_list_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_app_list_inquire_reply>(create);
  static protocol_app_list_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get funcTable => $_getIZ(1);
  @$pb.TagNumber(2)
  set funcTable($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFuncTable() => $_has(1);
  @$pb.TagNumber(2)
  void clearFuncTable() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get supportShowNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set supportShowNum($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSupportShowNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupportShowNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<app_list> get list => $_getList(3);

  @$pb.TagNumber(5)
  $core.bool get appListActivitySupport => $_getBF(4);
  @$pb.TagNumber(5)
  set appListActivitySupport($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppListActivitySupport() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppListActivitySupport() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get appListWorkoutSupport => $_getBF(5);
  @$pb.TagNumber(6)
  set appListWorkoutSupport($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppListWorkoutSupport() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppListWorkoutSupport() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get appListStepsSupport => $_getBF(6);
  @$pb.TagNumber(7)
  set appListStepsSupport($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppListStepsSupport() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppListStepsSupport() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get appListHeartrateSupport => $_getBF(7);
  @$pb.TagNumber(8)
  set appListHeartrateSupport($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppListHeartrateSupport() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppListHeartrateSupport() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get appListSleepSupport => $_getBF(8);
  @$pb.TagNumber(9)
  set appListSleepSupport($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAppListSleepSupport() => $_has(8);
  @$pb.TagNumber(9)
  void clearAppListSleepSupport() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get appListStressSupport => $_getBF(9);
  @$pb.TagNumber(10)
  set appListStressSupport($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAppListStressSupport() => $_has(9);
  @$pb.TagNumber(10)
  void clearAppListStressSupport() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get appListMenstruationSupport => $_getBF(10);
  @$pb.TagNumber(11)
  set appListMenstruationSupport($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAppListMenstruationSupport() => $_has(10);
  @$pb.TagNumber(11)
  void clearAppListMenstruationSupport() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get appListBreatheSupport => $_getBF(11);
  @$pb.TagNumber(12)
  set appListBreatheSupport($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAppListBreatheSupport() => $_has(11);
  @$pb.TagNumber(12)
  void clearAppListBreatheSupport() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get appListAlarmsSupport => $_getBF(12);
  @$pb.TagNumber(13)
  set appListAlarmsSupport($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAppListAlarmsSupport() => $_has(12);
  @$pb.TagNumber(13)
  void clearAppListAlarmsSupport() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get appListPhoneSupport => $_getBF(13);
  @$pb.TagNumber(14)
  set appListPhoneSupport($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAppListPhoneSupport() => $_has(13);
  @$pb.TagNumber(14)
  void clearAppListPhoneSupport() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get appListTimersSupport => $_getBF(14);
  @$pb.TagNumber(15)
  set appListTimersSupport($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAppListTimersSupport() => $_has(14);
  @$pb.TagNumber(15)
  void clearAppListTimersSupport() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get appListStopwatchSupport => $_getBF(15);
  @$pb.TagNumber(16)
  set appListStopwatchSupport($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAppListStopwatchSupport() => $_has(15);
  @$pb.TagNumber(16)
  void clearAppListStopwatchSupport() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get appListSpo2Support => $_getBF(16);
  @$pb.TagNumber(17)
  set appListSpo2Support($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasAppListSpo2Support() => $_has(16);
  @$pb.TagNumber(17)
  void clearAppListSpo2Support() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get appListWeatherSupport => $_getBF(17);
  @$pb.TagNumber(18)
  set appListWeatherSupport($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasAppListWeatherSupport() => $_has(17);
  @$pb.TagNumber(18)
  void clearAppListWeatherSupport() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get appListCameraRemoteSupport => $_getBF(18);
  @$pb.TagNumber(19)
  set appListCameraRemoteSupport($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasAppListCameraRemoteSupport() => $_has(18);
  @$pb.TagNumber(19)
  void clearAppListCameraRemoteSupport() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get appListMusicSupport => $_getBF(19);
  @$pb.TagNumber(20)
  set appListMusicSupport($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasAppListMusicSupport() => $_has(19);
  @$pb.TagNumber(20)
  void clearAppListMusicSupport() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get appListFindPhoneSupport => $_getBF(20);
  @$pb.TagNumber(21)
  set appListFindPhoneSupport($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasAppListFindPhoneSupport() => $_has(20);
  @$pb.TagNumber(21)
  void clearAppListFindPhoneSupport() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get appListWorldClockSupport => $_getBF(21);
  @$pb.TagNumber(22)
  set appListWorldClockSupport($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasAppListWorldClockSupport() => $_has(21);
  @$pb.TagNumber(22)
  void clearAppListWorldClockSupport() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get appListSettingsSupport => $_getBF(22);
  @$pb.TagNumber(23)
  set appListSettingsSupport($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasAppListSettingsSupport() => $_has(22);
  @$pb.TagNumber(23)
  void clearAppListSettingsSupport() => clearField(23);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
