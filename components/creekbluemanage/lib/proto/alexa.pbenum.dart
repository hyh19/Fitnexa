//
//  Generated code. Do not modify.
//  source: alexa.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class tran_direction_type extends $pb.ProtobufEnum {
  static const tran_direction_type WATCH_TRAN = tran_direction_type._(0, _omitEnumNames ? '' : 'WATCH_TRAN');
  static const tran_direction_type APP_TRAN = tran_direction_type._(1, _omitEnumNames ? '' : 'APP_TRAN');

  static const $core.List<tran_direction_type> values = <tran_direction_type> [
    WATCH_TRAN,
    APP_TRAN,
  ];

  static final $core.Map<$core.int, tran_direction_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static tran_direction_type? valueOf($core.int value) => _byValue[value];

  const tran_direction_type._($core.int v, $core.String n) : super(v, n);
}

class alexa_operate_type extends $pb.ProtobufEnum {
  static const alexa_operate_type ALEXA_OPERATE_NULL = alexa_operate_type._(0, _omitEnumNames ? '' : 'ALEXA_OPERATE_NULL');
  static const alexa_operate_type ALEXA_MIC_OPEN = alexa_operate_type._(1, _omitEnumNames ? '' : 'ALEXA_MIC_OPEN');
  static const alexa_operate_type ALEXA_MIC_CLOSE = alexa_operate_type._(2, _omitEnumNames ? '' : 'ALEXA_MIC_CLOSE');
  static const alexa_operate_type ALEXA_VOICE_OPEN = alexa_operate_type._(4, _omitEnumNames ? '' : 'ALEXA_VOICE_OPEN');
  static const alexa_operate_type ALEXA_VOICE_CLOSE = alexa_operate_type._(5, _omitEnumNames ? '' : 'ALEXA_VOICE_CLOSE');

  static const $core.List<alexa_operate_type> values = <alexa_operate_type> [
    ALEXA_OPERATE_NULL,
    ALEXA_MIC_OPEN,
    ALEXA_MIC_CLOSE,
    ALEXA_VOICE_OPEN,
    ALEXA_VOICE_CLOSE,
  ];

  static final $core.Map<$core.int, alexa_operate_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static alexa_operate_type? valueOf($core.int value) => _byValue[value];

  const alexa_operate_type._($core.int v, $core.String n) : super(v, n);
}

class alexa_status_type extends $pb.ProtobufEnum {
  static const alexa_status_type ALEXA_STATUS_NULL = alexa_status_type._(0, _omitEnumNames ? '' : 'ALEXA_STATUS_NULL');
  static const alexa_status_type ALEXA_STATUS_SUCCESS = alexa_status_type._(1, _omitEnumNames ? '' : 'ALEXA_STATUS_SUCCESS');
  static const alexa_status_type ALEXA_STATUS_SET_UP = alexa_status_type._(2, _omitEnumNames ? '' : 'ALEXA_STATUS_SET_UP');
  static const alexa_status_type ALEXA_STATUS_DISCONNECT = alexa_status_type._(3, _omitEnumNames ? '' : 'ALEXA_STATUS_DISCONNECT');
  static const alexa_status_type ALEXA_STATUS_NETWORK_ERROR = alexa_status_type._(4, _omitEnumNames ? '' : 'ALEXA_STATUS_NETWORK_ERROR');
  static const alexa_status_type ALEXA_STATUS_UNIDENTIFY = alexa_status_type._(5, _omitEnumNames ? '' : 'ALEXA_STATUS_UNIDENTIFY');
  static const alexa_status_type ALEXA_STATUS_RELOGIN = alexa_status_type._(6, _omitEnumNames ? '' : 'ALEXA_STATUS_RELOGIN');

  static const $core.List<alexa_status_type> values = <alexa_status_type> [
    ALEXA_STATUS_NULL,
    ALEXA_STATUS_SUCCESS,
    ALEXA_STATUS_SET_UP,
    ALEXA_STATUS_DISCONNECT,
    ALEXA_STATUS_NETWORK_ERROR,
    ALEXA_STATUS_UNIDENTIFY,
    ALEXA_STATUS_RELOGIN,
  ];

  static final $core.Map<$core.int, alexa_status_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static alexa_status_type? valueOf($core.int value) => _byValue[value];

  const alexa_status_type._($core.int v, $core.String n) : super(v, n);
}

class alexa_noitce_type extends $pb.ProtobufEnum {
  static const alexa_noitce_type ALEXA_NOTICE_NULL = alexa_noitce_type._(0, _omitEnumNames ? '' : 'ALEXA_NOTICE_NULL');
  static const alexa_noitce_type ALEXA_NOTICE_REQUEST = alexa_noitce_type._(1, _omitEnumNames ? '' : 'ALEXA_NOTICE_REQUEST');
  static const alexa_noitce_type ALEXA_NOTICE_EXIT = alexa_noitce_type._(2, _omitEnumNames ? '' : 'ALEXA_NOTICE_EXIT');
  static const alexa_noitce_type ALEXA_NOTICE_IRQ_REQUEST = alexa_noitce_type._(3, _omitEnumNames ? '' : 'ALEXA_NOTICE_IRQ_REQUEST');

  static const $core.List<alexa_noitce_type> values = <alexa_noitce_type> [
    ALEXA_NOTICE_NULL,
    ALEXA_NOTICE_REQUEST,
    ALEXA_NOTICE_EXIT,
    ALEXA_NOTICE_IRQ_REQUEST,
  ];

  static final $core.Map<$core.int, alexa_noitce_type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static alexa_noitce_type? valueOf($core.int value) => _byValue[value];

  const alexa_noitce_type._($core.int v, $core.String n) : super(v, n);
}

/// /定时器
class alexa_timer_operate extends $pb.ProtobufEnum {
  static const alexa_timer_operate TIMER_INSERT = alexa_timer_operate._(0, _omitEnumNames ? '' : 'TIMER_INSERT');
  static const alexa_timer_operate TIMER_DELETE = alexa_timer_operate._(1, _omitEnumNames ? '' : 'TIMER_DELETE');
  static const alexa_timer_operate TIMER_DELETE_ALL = alexa_timer_operate._(2, _omitEnumNames ? '' : 'TIMER_DELETE_ALL');

  static const $core.List<alexa_timer_operate> values = <alexa_timer_operate> [
    TIMER_INSERT,
    TIMER_DELETE,
    TIMER_DELETE_ALL,
  ];

  static final $core.Map<$core.int, alexa_timer_operate> _byValue = $pb.ProtobufEnum.initByValue(values);
  static alexa_timer_operate? valueOf($core.int value) => _byValue[value];

  const alexa_timer_operate._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
