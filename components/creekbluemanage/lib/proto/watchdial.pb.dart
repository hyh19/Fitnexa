///
//  Generated code. Do not modify.
//  source: watchdial.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'watchdial.pbenum.dart';

export 'watchdial.pbenum.dart';

class protocol_watch_dial_plate_list_item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_watch_dial_plate_list_item', createEmptyInstance: create)
    ..e<dial_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dialType', $pb.PbFieldType.OE, defaultOrMaker: dial_type.DIAL_TYPE_NULL, valueOf: dial_type.valueOf, enumValues: dial_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dialSize', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dialName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  protocol_watch_dial_plate_list_item._() : super();
  factory protocol_watch_dial_plate_list_item({
    dial_type? dialType,
    $core.int? version,
    $core.int? dialSize,
    $core.List<$core.int>? dialName,
  }) {
    final _result = create();
    if (dialType != null) {
      _result.dialType = dialType;
    }
    if (version != null) {
      _result.version = version;
    }
    if (dialSize != null) {
      _result.dialSize = dialSize;
    }
    if (dialName != null) {
      _result.dialName = dialName;
    }
    return _result;
  }
  factory protocol_watch_dial_plate_list_item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_watch_dial_plate_list_item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_watch_dial_plate_list_item clone() => protocol_watch_dial_plate_list_item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_watch_dial_plate_list_item copyWith(void Function(protocol_watch_dial_plate_list_item) updates) => super.copyWith((message) => updates(message as protocol_watch_dial_plate_list_item)) as protocol_watch_dial_plate_list_item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_watch_dial_plate_list_item create() => protocol_watch_dial_plate_list_item._();
  protocol_watch_dial_plate_list_item createEmptyInstance() => create();
  static $pb.PbList<protocol_watch_dial_plate_list_item> createRepeated() => $pb.PbList<protocol_watch_dial_plate_list_item>();
  @$core.pragma('dart2js:noInline')
  static protocol_watch_dial_plate_list_item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_watch_dial_plate_list_item>(create);
  static protocol_watch_dial_plate_list_item? _defaultInstance;

  @$pb.TagNumber(1)
  dial_type get dialType => $_getN(0);
  @$pb.TagNumber(1)
  set dialType(dial_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDialType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDialType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get dialSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set dialSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDialSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearDialSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get dialName => $_getN(3);
  @$pb.TagNumber(4)
  set dialName($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDialName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDialName() => clearField(4);
}

class protocol_watch_dial_plate_operate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_watch_dial_plate_operate', createEmptyInstance: create)
    ..e<dial_operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: dial_operate_type.DIAL_OPERATE_TYPE_INQUIRE, valueOf: dial_operate_type.valueOf, enumValues: dial_operate_type.values)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dialName', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dialListSort', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  protocol_watch_dial_plate_operate._() : super();
  factory protocol_watch_dial_plate_operate({
    dial_operate_type? operate,
    $core.Iterable<$core.List<$core.int>>? dialName,
    $core.Iterable<$core.List<$core.int>>? dialListSort,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (dialName != null) {
      _result.dialName.addAll(dialName);
    }
    if (dialListSort != null) {
      _result.dialListSort.addAll(dialListSort);
    }
    return _result;
  }
  factory protocol_watch_dial_plate_operate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_watch_dial_plate_operate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_watch_dial_plate_operate clone() => protocol_watch_dial_plate_operate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_watch_dial_plate_operate copyWith(void Function(protocol_watch_dial_plate_operate) updates) => super.copyWith((message) => updates(message as protocol_watch_dial_plate_operate)) as protocol_watch_dial_plate_operate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_watch_dial_plate_operate create() => protocol_watch_dial_plate_operate._();
  protocol_watch_dial_plate_operate createEmptyInstance() => create();
  static $pb.PbList<protocol_watch_dial_plate_operate> createRepeated() => $pb.PbList<protocol_watch_dial_plate_operate>();
  @$core.pragma('dart2js:noInline')
  static protocol_watch_dial_plate_operate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_watch_dial_plate_operate>(create);
  static protocol_watch_dial_plate_operate? _defaultInstance;

  @$pb.TagNumber(1)
  dial_operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(dial_operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.List<$core.int>> get dialName => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get dialListSort => $_getList(2);
}

class protocol_watch_dial_plate_inquire_reply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protocol_watch_dial_plate_inquire_reply', createEmptyInstance: create)
    ..e<dial_operate_type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: dial_operate_type.DIAL_OPERATE_TYPE_INQUIRE, valueOf: dial_operate_type.valueOf, enumValues: dial_operate_type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'formulaMode', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'plateVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cloudPlateNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userCloudPlateNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photoPlateNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPhotoPlateNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wallpaperPlateNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userWallpaperPlateNum', $pb.PbFieldType.OU3)
    ..pc<protocol_watch_dial_plate_list_item>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listItem', $pb.PbFieldType.PM, subBuilder: protocol_watch_dial_plate_list_item.create)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userCloudSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userPhotoSize', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nowShowPlateName', $pb.PbFieldType.OY)
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enableCompress', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'platePhotoPicSupportNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allPlateSupportMax', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  protocol_watch_dial_plate_inquire_reply._() : super();
  factory protocol_watch_dial_plate_inquire_reply({
    dial_operate_type? operate,
    $core.int? formulaMode,
    $core.int? plateVersion,
    $core.int? cloudPlateNum,
    $core.int? userCloudPlateNum,
    $core.int? photoPlateNum,
    $core.int? userPhotoPlateNum,
    $core.int? wallpaperPlateNum,
    $core.int? userWallpaperPlateNum,
    $core.Iterable<protocol_watch_dial_plate_list_item>? listItem,
    $core.int? totalSize,
    $core.int? userCloudSize,
    $core.int? userPhotoSize,
    $core.List<$core.int>? nowShowPlateName,
    $core.int? enableCompress,
    $core.int? funcTable,
    $core.int? platePhotoPicSupportNum,
    $core.int? allPlateSupportMax,
  }) {
    final _result = create();
    if (operate != null) {
      _result.operate = operate;
    }
    if (formulaMode != null) {
      _result.formulaMode = formulaMode;
    }
    if (plateVersion != null) {
      _result.plateVersion = plateVersion;
    }
    if (cloudPlateNum != null) {
      _result.cloudPlateNum = cloudPlateNum;
    }
    if (userCloudPlateNum != null) {
      _result.userCloudPlateNum = userCloudPlateNum;
    }
    if (photoPlateNum != null) {
      _result.photoPlateNum = photoPlateNum;
    }
    if (userPhotoPlateNum != null) {
      _result.userPhotoPlateNum = userPhotoPlateNum;
    }
    if (wallpaperPlateNum != null) {
      _result.wallpaperPlateNum = wallpaperPlateNum;
    }
    if (userWallpaperPlateNum != null) {
      _result.userWallpaperPlateNum = userWallpaperPlateNum;
    }
    if (listItem != null) {
      _result.listItem.addAll(listItem);
    }
    if (totalSize != null) {
      _result.totalSize = totalSize;
    }
    if (userCloudSize != null) {
      _result.userCloudSize = userCloudSize;
    }
    if (userPhotoSize != null) {
      _result.userPhotoSize = userPhotoSize;
    }
    if (nowShowPlateName != null) {
      _result.nowShowPlateName = nowShowPlateName;
    }
    if (enableCompress != null) {
      _result.enableCompress = enableCompress;
    }
    if (funcTable != null) {
      _result.funcTable = funcTable;
    }
    if (platePhotoPicSupportNum != null) {
      _result.platePhotoPicSupportNum = platePhotoPicSupportNum;
    }
    if (allPlateSupportMax != null) {
      _result.allPlateSupportMax = allPlateSupportMax;
    }
    return _result;
  }
  factory protocol_watch_dial_plate_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_watch_dial_plate_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_watch_dial_plate_inquire_reply clone() => protocol_watch_dial_plate_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_watch_dial_plate_inquire_reply copyWith(void Function(protocol_watch_dial_plate_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_watch_dial_plate_inquire_reply)) as protocol_watch_dial_plate_inquire_reply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static protocol_watch_dial_plate_inquire_reply create() => protocol_watch_dial_plate_inquire_reply._();
  protocol_watch_dial_plate_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_watch_dial_plate_inquire_reply> createRepeated() => $pb.PbList<protocol_watch_dial_plate_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_watch_dial_plate_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_watch_dial_plate_inquire_reply>(create);
  static protocol_watch_dial_plate_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  dial_operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(dial_operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get formulaMode => $_getIZ(1);
  @$pb.TagNumber(2)
  set formulaMode($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFormulaMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearFormulaMode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get plateVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set plateVersion($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlateVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlateVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get cloudPlateNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set cloudPlateNum($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCloudPlateNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearCloudPlateNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get userCloudPlateNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set userCloudPlateNum($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserCloudPlateNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserCloudPlateNum() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get photoPlateNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set photoPlateNum($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhotoPlateNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhotoPlateNum() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get userPhotoPlateNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set userPhotoPlateNum($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserPhotoPlateNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserPhotoPlateNum() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get wallpaperPlateNum => $_getIZ(7);
  @$pb.TagNumber(8)
  set wallpaperPlateNum($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWallpaperPlateNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearWallpaperPlateNum() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get userWallpaperPlateNum => $_getIZ(8);
  @$pb.TagNumber(9)
  set userWallpaperPlateNum($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUserWallpaperPlateNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserWallpaperPlateNum() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<protocol_watch_dial_plate_list_item> get listItem => $_getList(9);

  @$pb.TagNumber(11)
  $core.int get totalSize => $_getIZ(10);
  @$pb.TagNumber(11)
  set totalSize($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTotalSize() => $_has(10);
  @$pb.TagNumber(11)
  void clearTotalSize() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get userCloudSize => $_getIZ(11);
  @$pb.TagNumber(12)
  set userCloudSize($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUserCloudSize() => $_has(11);
  @$pb.TagNumber(12)
  void clearUserCloudSize() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get userPhotoSize => $_getIZ(12);
  @$pb.TagNumber(13)
  set userPhotoSize($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUserPhotoSize() => $_has(12);
  @$pb.TagNumber(13)
  void clearUserPhotoSize() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get nowShowPlateName => $_getN(13);
  @$pb.TagNumber(14)
  set nowShowPlateName($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNowShowPlateName() => $_has(13);
  @$pb.TagNumber(14)
  void clearNowShowPlateName() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get enableCompress => $_getIZ(14);
  @$pb.TagNumber(15)
  set enableCompress($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasEnableCompress() => $_has(14);
  @$pb.TagNumber(15)
  void clearEnableCompress() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get funcTable => $_getIZ(15);
  @$pb.TagNumber(16)
  set funcTable($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasFuncTable() => $_has(15);
  @$pb.TagNumber(16)
  void clearFuncTable() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get platePhotoPicSupportNum => $_getIZ(16);
  @$pb.TagNumber(17)
  set platePhotoPicSupportNum($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPlatePhotoPicSupportNum() => $_has(16);
  @$pb.TagNumber(17)
  void clearPlatePhotoPicSupportNum() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get allPlateSupportMax => $_getIZ(17);
  @$pb.TagNumber(18)
  set allPlateSupportMax($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasAllPlateSupportMax() => $_has(17);
  @$pb.TagNumber(18)
  void clearAllPlateSupportMax() => clearField(18);
}

