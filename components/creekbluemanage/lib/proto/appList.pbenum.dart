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

import 'package:protobuf/protobuf.dart' as $pb;


class app_list extends $pb.ProtobufEnum {
  static const app_list APP_LIST_ACTIVITY = app_list._(0, _omitEnumNames ? '' : 'APP_LIST_ACTIVITY');
  static const app_list APP_LIST_WORKOUT = app_list._(1, _omitEnumNames ? '' : 'APP_LIST_WORKOUT');
  static const app_list APP_LIST_STEPS = app_list._(2, _omitEnumNames ? '' : 'APP_LIST_STEPS');
  static const app_list APP_LIST_HEARTRATE = app_list._(3, _omitEnumNames ? '' : 'APP_LIST_HEARTRATE');
  static const app_list APP_LIST_SLEEP = app_list._(4, _omitEnumNames ? '' : 'APP_LIST_SLEEP');
  static const app_list APP_LIST_STRESS = app_list._(5, _omitEnumNames ? '' : 'APP_LIST_STRESS');
  static const app_list APP_LIST_MENSTRUATION = app_list._(6, _omitEnumNames ? '' : 'APP_LIST_MENSTRUATION');
  static const app_list APP_LIST_BREATHE = app_list._(7, _omitEnumNames ? '' : 'APP_LIST_BREATHE');
  static const app_list APP_LIST_ALARMS = app_list._(8, _omitEnumNames ? '' : 'APP_LIST_ALARMS');
  static const app_list APP_LIST_PHONE = app_list._(9, _omitEnumNames ? '' : 'APP_LIST_PHONE');
  static const app_list APP_LIST_TIMERS = app_list._(10, _omitEnumNames ? '' : 'APP_LIST_TIMERS');
  static const app_list APP_LIST_STOPWATCH = app_list._(11, _omitEnumNames ? '' : 'APP_LIST_STOPWATCH');
  static const app_list APP_LIST_SPO2 = app_list._(12, _omitEnumNames ? '' : 'APP_LIST_SPO2');
  static const app_list APP_LIST_WEATHER = app_list._(13, _omitEnumNames ? '' : 'APP_LIST_WEATHER');
  static const app_list APP_LIST_CAMERA_REMOTE = app_list._(14, _omitEnumNames ? '' : 'APP_LIST_CAMERA_REMOTE');
  static const app_list APP_LIST_MUSIC = app_list._(15, _omitEnumNames ? '' : 'APP_LIST_MUSIC');
  static const app_list APP_LIST_FIND_PHONE = app_list._(16, _omitEnumNames ? '' : 'APP_LIST_FIND_PHONE');
  static const app_list APP_LIST_WORLD_CLOCK = app_list._(17, _omitEnumNames ? '' : 'APP_LIST_WORLD_CLOCK');
  static const app_list APP_LIST_SETTINGS = app_list._(18, _omitEnumNames ? '' : 'APP_LIST_SETTINGS');

  static const $core.List<app_list> values = <app_list> [
    APP_LIST_ACTIVITY,
    APP_LIST_WORKOUT,
    APP_LIST_STEPS,
    APP_LIST_HEARTRATE,
    APP_LIST_SLEEP,
    APP_LIST_STRESS,
    APP_LIST_MENSTRUATION,
    APP_LIST_BREATHE,
    APP_LIST_ALARMS,
    APP_LIST_PHONE,
    APP_LIST_TIMERS,
    APP_LIST_STOPWATCH,
    APP_LIST_SPO2,
    APP_LIST_WEATHER,
    APP_LIST_CAMERA_REMOTE,
    APP_LIST_MUSIC,
    APP_LIST_FIND_PHONE,
    APP_LIST_WORLD_CLOCK,
    APP_LIST_SETTINGS,
  ];

  static final $core.Map<$core.int, app_list> _byValue = $pb.ProtobufEnum.initByValue(values);
  static app_list? valueOf($core.int value) => _byValue[value];

  const app_list._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
