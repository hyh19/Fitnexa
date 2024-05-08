///
//  Generated code. Do not modify.
//  source: log.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'log.pbenum.dart';

export 'log.pbenum.dart';

class protocol_log_tran_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_log_tran_operate', createEmptyInstance: create)
    ..e<log_operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logOperate', $pb.PbFieldType.OE, defaultOrMaker: log_operate_type.LOG_START, valueOf: log_operate_type.valueOf, enumValues: log_operate_type.values)
    ..hasRequiredFields = false
  ;

  protocol_log_tran_operate._() : super();
  factory protocol_log_tran_operate({
    log_operate_type? logOperate,
  }) {
    final _result = create();
    if (logOperate != null) {
      _result.logOperate = logOperate;
    }
    return _result;
  }
  factory protocol_log_tran_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_log_tran_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_log_tran_operate clone() => protocol_log_tran_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_log_tran_operate copyWith(void Function(protocol_log_tran_operate) updates) => super.copyWith((message) => updates(message as protocol_log_tran_operate)) as protocol_log_tran_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_log_tran_operate create() => protocol_log_tran_operate._();
  protocol_log_tran_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_log_tran_operate> createRepeated() => $pb.PbList<protocol_log_tran_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_log_tran_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_log_tran_operate>(create);
  static protocol_log_tran_operate? _defaultInstance;

  @$pb.TagNumber(1)
  log_operate_type get logOperate => $_getN(0);
  @$pb.TagNumber(1)
  set logOperate(log_operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogOperate() => clearField(1);
}

