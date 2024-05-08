//
//  Generated code. Do not modify.
//  source: deviceinfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'deviceinfo.pbenum.dart';

export 'deviceinfo.pbenum.dart';

class protocol_device_batt_info extends $pb.GeneratedMessage {
  factory protocol_device_batt_info({
    $core.int? voltage,
    Batt_status? status,
    $core.int? battLevel,
    $core.int? lastChargingYear,
    $core.int? lastChargingMonth,
    $core.int? lastChargingDay,
    $core.int? lastChargingHour,
    $core.int? lastChargingMinute,
    $core.int? lastChargingSecond,
    Batt_mode? mode,
  }) {
    final $result = create();
    if (voltage != null) {
      $result.voltage = voltage;
    }
    if (status != null) {
      $result.status = status;
    }
    if (battLevel != null) {
      $result.battLevel = battLevel;
    }
    if (lastChargingYear != null) {
      $result.lastChargingYear = lastChargingYear;
    }
    if (lastChargingMonth != null) {
      $result.lastChargingMonth = lastChargingMonth;
    }
    if (lastChargingDay != null) {
      $result.lastChargingDay = lastChargingDay;
    }
    if (lastChargingHour != null) {
      $result.lastChargingHour = lastChargingHour;
    }
    if (lastChargingMinute != null) {
      $result.lastChargingMinute = lastChargingMinute;
    }
    if (lastChargingSecond != null) {
      $result.lastChargingSecond = lastChargingSecond;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  protocol_device_batt_info._() : super();
  factory protocol_device_batt_info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_device_batt_info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_device_batt_info', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'voltage', $pb.PbFieldType.OU3)
    ..e<Batt_status>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Batt_status.NORMAL, valueOf: Batt_status.valueOf, enumValues: Batt_status.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'battLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'lastChargingYear', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'lastChargingMonth', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'lastChargingDay', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'lastChargingHour', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'lastChargingMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'lastChargingSecond', $pb.PbFieldType.OU3)
    ..e<Batt_mode>(10, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: Batt_mode.INVALID, valueOf: Batt_mode.valueOf, enumValues: Batt_mode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_device_batt_info clone() => protocol_device_batt_info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_device_batt_info copyWith(void Function(protocol_device_batt_info) updates) => super.copyWith((message) => updates(message as protocol_device_batt_info)) as protocol_device_batt_info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_device_batt_info create() => protocol_device_batt_info._();
  protocol_device_batt_info createEmptyInstance() => create();
  static $pb.PbList<protocol_device_batt_info> createRepeated() => $pb.PbList<protocol_device_batt_info>();
  @$core.pragma('dart2js:noInline')
  static protocol_device_batt_info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_device_batt_info>(create);
  static protocol_device_batt_info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get voltage => $_getIZ(0);
  @$pb.TagNumber(1)
  set voltage($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVoltage() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoltage() => clearField(1);

  @$pb.TagNumber(2)
  Batt_status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(Batt_status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get battLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set battLevel($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBattLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearBattLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get lastChargingYear => $_getIZ(3);
  @$pb.TagNumber(4)
  set lastChargingYear($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastChargingYear() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastChargingYear() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get lastChargingMonth => $_getIZ(4);
  @$pb.TagNumber(5)
  set lastChargingMonth($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastChargingMonth() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastChargingMonth() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get lastChargingDay => $_getIZ(5);
  @$pb.TagNumber(6)
  set lastChargingDay($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastChargingDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastChargingDay() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get lastChargingHour => $_getIZ(6);
  @$pb.TagNumber(7)
  set lastChargingHour($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastChargingHour() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastChargingHour() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get lastChargingMinute => $_getIZ(7);
  @$pb.TagNumber(8)
  set lastChargingMinute($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastChargingMinute() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastChargingMinute() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get lastChargingSecond => $_getIZ(8);
  @$pb.TagNumber(9)
  set lastChargingSecond($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastChargingSecond() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastChargingSecond() => clearField(9);

  @$pb.TagNumber(10)
  Batt_mode get mode => $_getN(9);
  @$pb.TagNumber(10)
  set mode(Batt_mode v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearMode() => clearField(10);
}

class protocol_bt_name extends $pb.GeneratedMessage {
  factory protocol_bt_name({
    $core.bool? isSupport,
    $core.List<$core.int>? btName,
  }) {
    final $result = create();
    if (isSupport != null) {
      $result.isSupport = isSupport;
    }
    if (btName != null) {
      $result.btName = btName;
    }
    return $result;
  }
  protocol_bt_name._() : super();
  factory protocol_bt_name.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_bt_name.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_bt_name', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSupport')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'btName', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_bt_name clone() => protocol_bt_name()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_bt_name copyWith(void Function(protocol_bt_name) updates) => super.copyWith((message) => updates(message as protocol_bt_name)) as protocol_bt_name;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_bt_name create() => protocol_bt_name._();
  protocol_bt_name createEmptyInstance() => create();
  static $pb.PbList<protocol_bt_name> createRepeated() => $pb.PbList<protocol_bt_name>();
  @$core.pragma('dart2js:noInline')
  static protocol_bt_name getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_bt_name>(create);
  static protocol_bt_name? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSupport => $_getBF(0);
  @$pb.TagNumber(1)
  set isSupport($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSupport() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSupport() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get btName => $_getN(1);
  @$pb.TagNumber(2)
  set btName($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBtName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBtName() => clearField(2);
}

class device_size_info extends $pb.GeneratedMessage {
  factory device_size_info({
    $core.int? width,
    $core.int? height,
    $core.int? angle,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (angle != null) {
      $result.angle = angle;
    }
    return $result;
  }
  device_size_info._() : super();
  factory device_size_info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory device_size_info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'device_size_info', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'angle', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  device_size_info clone() => device_size_info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  device_size_info copyWith(void Function(device_size_info) updates) => super.copyWith((message) => updates(message as device_size_info)) as device_size_info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static device_size_info create() => device_size_info._();
  device_size_info createEmptyInstance() => create();
  static $pb.PbList<device_size_info> createRepeated() => $pb.PbList<device_size_info>();
  @$core.pragma('dart2js:noInline')
  static device_size_info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<device_size_info>(create);
  static device_size_info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(1)
  set width($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get angle => $_getIZ(2);
  @$pb.TagNumber(3)
  set angle($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAngle() => $_has(2);
  @$pb.TagNumber(3)
  void clearAngle() => clearField(3);
}

class hardware_support extends $pb.GeneratedMessage {
  factory hardware_support({
    $core.bool? heartrateHardware,
    $core.bool? accHardware,
    $core.bool? gyroHardware,
    $core.bool? buttonHardware,
    $core.bool? lcdHardware,
    $core.bool? tpHardware,
    $core.bool? motorHardware,
    $core.bool? micHardware,
    $core.bool? speakHardware,
    $core.bool? gpsHardware,
    $core.bool? norflashHardware,
    $core.bool? nandflashHardware,
  }) {
    final $result = create();
    if (heartrateHardware != null) {
      $result.heartrateHardware = heartrateHardware;
    }
    if (accHardware != null) {
      $result.accHardware = accHardware;
    }
    if (gyroHardware != null) {
      $result.gyroHardware = gyroHardware;
    }
    if (buttonHardware != null) {
      $result.buttonHardware = buttonHardware;
    }
    if (lcdHardware != null) {
      $result.lcdHardware = lcdHardware;
    }
    if (tpHardware != null) {
      $result.tpHardware = tpHardware;
    }
    if (motorHardware != null) {
      $result.motorHardware = motorHardware;
    }
    if (micHardware != null) {
      $result.micHardware = micHardware;
    }
    if (speakHardware != null) {
      $result.speakHardware = speakHardware;
    }
    if (gpsHardware != null) {
      $result.gpsHardware = gpsHardware;
    }
    if (norflashHardware != null) {
      $result.norflashHardware = norflashHardware;
    }
    if (nandflashHardware != null) {
      $result.nandflashHardware = nandflashHardware;
    }
    return $result;
  }
  hardware_support._() : super();
  factory hardware_support.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory hardware_support.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'hardware_support', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'heartrateHardware')
    ..aOB(2, _omitFieldNames ? '' : 'accHardware')
    ..aOB(3, _omitFieldNames ? '' : 'gyroHardware')
    ..aOB(4, _omitFieldNames ? '' : 'buttonHardware')
    ..aOB(5, _omitFieldNames ? '' : 'lcdHardware')
    ..aOB(6, _omitFieldNames ? '' : 'tpHardware')
    ..aOB(7, _omitFieldNames ? '' : 'motorHardware')
    ..aOB(8, _omitFieldNames ? '' : 'micHardware')
    ..aOB(9, _omitFieldNames ? '' : 'speakHardware')
    ..aOB(10, _omitFieldNames ? '' : 'gpsHardware')
    ..aOB(11, _omitFieldNames ? '' : 'norflashHardware')
    ..aOB(12, _omitFieldNames ? '' : 'nandflashHardware')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  hardware_support clone() => hardware_support()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  hardware_support copyWith(void Function(hardware_support) updates) => super.copyWith((message) => updates(message as hardware_support)) as hardware_support;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static hardware_support create() => hardware_support._();
  hardware_support createEmptyInstance() => create();
  static $pb.PbList<hardware_support> createRepeated() => $pb.PbList<hardware_support>();
  @$core.pragma('dart2js:noInline')
  static hardware_support getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<hardware_support>(create);
  static hardware_support? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get heartrateHardware => $_getBF(0);
  @$pb.TagNumber(1)
  set heartrateHardware($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeartrateHardware() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeartrateHardware() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get accHardware => $_getBF(1);
  @$pb.TagNumber(2)
  set accHardware($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccHardware() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccHardware() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get gyroHardware => $_getBF(2);
  @$pb.TagNumber(3)
  set gyroHardware($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGyroHardware() => $_has(2);
  @$pb.TagNumber(3)
  void clearGyroHardware() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get buttonHardware => $_getBF(3);
  @$pb.TagNumber(4)
  set buttonHardware($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasButtonHardware() => $_has(3);
  @$pb.TagNumber(4)
  void clearButtonHardware() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get lcdHardware => $_getBF(4);
  @$pb.TagNumber(5)
  set lcdHardware($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLcdHardware() => $_has(4);
  @$pb.TagNumber(5)
  void clearLcdHardware() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get tpHardware => $_getBF(5);
  @$pb.TagNumber(6)
  set tpHardware($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTpHardware() => $_has(5);
  @$pb.TagNumber(6)
  void clearTpHardware() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get motorHardware => $_getBF(6);
  @$pb.TagNumber(7)
  set motorHardware($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMotorHardware() => $_has(6);
  @$pb.TagNumber(7)
  void clearMotorHardware() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get micHardware => $_getBF(7);
  @$pb.TagNumber(8)
  set micHardware($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMicHardware() => $_has(7);
  @$pb.TagNumber(8)
  void clearMicHardware() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get speakHardware => $_getBF(8);
  @$pb.TagNumber(9)
  set speakHardware($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSpeakHardware() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpeakHardware() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get gpsHardware => $_getBF(9);
  @$pb.TagNumber(10)
  set gpsHardware($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGpsHardware() => $_has(9);
  @$pb.TagNumber(10)
  void clearGpsHardware() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get norflashHardware => $_getBF(10);
  @$pb.TagNumber(11)
  set norflashHardware($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNorflashHardware() => $_has(10);
  @$pb.TagNumber(11)
  void clearNorflashHardware() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get nandflashHardware => $_getBF(11);
  @$pb.TagNumber(12)
  set nandflashHardware($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNandflashHardware() => $_has(11);
  @$pb.TagNumber(12)
  void clearNandflashHardware() => clearField(12);
}

class device_sn_info extends $pb.GeneratedMessage {
  factory device_sn_info({
    $core.int? productId,
    $core.int? factoryId,
    $core.int? customerId,
    $core.int? productionDate,
    $core.int? batchNum,
    $core.int? serialNum,
    $core.int? colorCode,
  }) {
    final $result = create();
    if (productId != null) {
      $result.productId = productId;
    }
    if (factoryId != null) {
      $result.factoryId = factoryId;
    }
    if (customerId != null) {
      $result.customerId = customerId;
    }
    if (productionDate != null) {
      $result.productionDate = productionDate;
    }
    if (batchNum != null) {
      $result.batchNum = batchNum;
    }
    if (serialNum != null) {
      $result.serialNum = serialNum;
    }
    if (colorCode != null) {
      $result.colorCode = colorCode;
    }
    return $result;
  }
  device_sn_info._() : super();
  factory device_sn_info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory device_sn_info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'device_sn_info', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'productId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'factoryId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'customerId', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'productionDate', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'batchNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'serialNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'colorCode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  device_sn_info clone() => device_sn_info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  device_sn_info copyWith(void Function(device_sn_info) updates) => super.copyWith((message) => updates(message as device_sn_info)) as device_sn_info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static device_sn_info create() => device_sn_info._();
  device_sn_info createEmptyInstance() => create();
  static $pb.PbList<device_sn_info> createRepeated() => $pb.PbList<device_sn_info>();
  @$core.pragma('dart2js:noInline')
  static device_sn_info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<device_sn_info>(create);
  static device_sn_info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get productId => $_getIZ(0);
  @$pb.TagNumber(1)
  set productId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get factoryId => $_getIZ(1);
  @$pb.TagNumber(2)
  set factoryId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFactoryId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFactoryId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get customerId => $_getIZ(2);
  @$pb.TagNumber(3)
  set customerId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCustomerId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustomerId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get productionDate => $_getIZ(3);
  @$pb.TagNumber(4)
  set productionDate($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProductionDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearProductionDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get batchNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set batchNum($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBatchNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearBatchNum() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get serialNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set serialNum($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSerialNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearSerialNum() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get colorCode => $_getIZ(6);
  @$pb.TagNumber(7)
  set colorCode($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasColorCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearColorCode() => clearField(7);
}

class device_voice_assistant extends $pb.GeneratedMessage {
  factory device_voice_assistant({
    $core.int? fwMajorVersion,
    $core.int? fwMinorVersion,
    $core.int? fwType,
    $core.int? nwMajorVersion,
    $core.int? nwMinorrVersion,
    $core.int? nwType,
    $core.int? currentLanguage,
    $core.int? switchLanguage,
  }) {
    final $result = create();
    if (fwMajorVersion != null) {
      $result.fwMajorVersion = fwMajorVersion;
    }
    if (fwMinorVersion != null) {
      $result.fwMinorVersion = fwMinorVersion;
    }
    if (fwType != null) {
      $result.fwType = fwType;
    }
    if (nwMajorVersion != null) {
      $result.nwMajorVersion = nwMajorVersion;
    }
    if (nwMinorrVersion != null) {
      $result.nwMinorrVersion = nwMinorrVersion;
    }
    if (nwType != null) {
      $result.nwType = nwType;
    }
    if (currentLanguage != null) {
      $result.currentLanguage = currentLanguage;
    }
    if (switchLanguage != null) {
      $result.switchLanguage = switchLanguage;
    }
    return $result;
  }
  device_voice_assistant._() : super();
  factory device_voice_assistant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory device_voice_assistant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'device_voice_assistant', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'fwMajorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fwMinorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'fwType', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'nwMajorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'nwMinorrVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'nwType', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'currentLanguage', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'switchLanguage', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  device_voice_assistant clone() => device_voice_assistant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  device_voice_assistant copyWith(void Function(device_voice_assistant) updates) => super.copyWith((message) => updates(message as device_voice_assistant)) as device_voice_assistant;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static device_voice_assistant create() => device_voice_assistant._();
  device_voice_assistant createEmptyInstance() => create();
  static $pb.PbList<device_voice_assistant> createRepeated() => $pb.PbList<device_voice_assistant>();
  @$core.pragma('dart2js:noInline')
  static device_voice_assistant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<device_voice_assistant>(create);
  static device_voice_assistant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get fwMajorVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set fwMajorVersion($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFwMajorVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearFwMajorVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fwMinorVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set fwMinorVersion($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFwMinorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearFwMinorVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fwType => $_getIZ(2);
  @$pb.TagNumber(3)
  set fwType($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFwType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFwType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get nwMajorVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set nwMajorVersion($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNwMajorVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearNwMajorVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get nwMinorrVersion => $_getIZ(4);
  @$pb.TagNumber(5)
  set nwMinorrVersion($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNwMinorrVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearNwMinorrVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get nwType => $_getIZ(5);
  @$pb.TagNumber(6)
  set nwType($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNwType() => $_has(5);
  @$pb.TagNumber(6)
  void clearNwType() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get currentLanguage => $_getIZ(6);
  @$pb.TagNumber(7)
  set currentLanguage($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCurrentLanguage() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrentLanguage() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get switchLanguage => $_getIZ(7);
  @$pb.TagNumber(8)
  set switchLanguage($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSwitchLanguage() => $_has(7);
  @$pb.TagNumber(8)
  void clearSwitchLanguage() => clearField(8);
}

class protocol_device_info extends $pb.GeneratedMessage {
  factory protocol_device_info({
    $core.int? deviceId,
    $core.int? majorVersion,
    $core.int? minorVersion,
    $core.int? microVersion,
    $core.int? pairFlag,
    Platform? platform,
    Shape? shape,
    Dev_type? devType,
    $core.List<$core.int>? macAddr,
    $core.List<$core.int>? btAddr,
    protocol_device_batt_info? battInfo,
    protocol_bt_name? btName,
    $core.int? fontMajorVersion,
    $core.int? fontMinorVersion,
    $core.int? fontMicroVersion,
    $core.int? rebootFlag,
    hardware_support? hwSupport,
    $core.String? gpsSocName,
    device_size_info? sizeInfo,
    $core.bool? isRecoveryMode,
    $core.int? deviceColor,
    $core.int? platePhotoPicSupportNum,
    device_sn_info? snInfo,
    device_voice_assistant? voiceAssistant,
    $core.bool? heartratePush,
  }) {
    final $result = create();
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    if (majorVersion != null) {
      $result.majorVersion = majorVersion;
    }
    if (minorVersion != null) {
      $result.minorVersion = minorVersion;
    }
    if (microVersion != null) {
      $result.microVersion = microVersion;
    }
    if (pairFlag != null) {
      $result.pairFlag = pairFlag;
    }
    if (platform != null) {
      $result.platform = platform;
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (devType != null) {
      $result.devType = devType;
    }
    if (macAddr != null) {
      $result.macAddr = macAddr;
    }
    if (btAddr != null) {
      $result.btAddr = btAddr;
    }
    if (battInfo != null) {
      $result.battInfo = battInfo;
    }
    if (btName != null) {
      $result.btName = btName;
    }
    if (fontMajorVersion != null) {
      $result.fontMajorVersion = fontMajorVersion;
    }
    if (fontMinorVersion != null) {
      $result.fontMinorVersion = fontMinorVersion;
    }
    if (fontMicroVersion != null) {
      $result.fontMicroVersion = fontMicroVersion;
    }
    if (rebootFlag != null) {
      $result.rebootFlag = rebootFlag;
    }
    if (hwSupport != null) {
      $result.hwSupport = hwSupport;
    }
    if (gpsSocName != null) {
      $result.gpsSocName = gpsSocName;
    }
    if (sizeInfo != null) {
      $result.sizeInfo = sizeInfo;
    }
    if (isRecoveryMode != null) {
      $result.isRecoveryMode = isRecoveryMode;
    }
    if (deviceColor != null) {
      $result.deviceColor = deviceColor;
    }
    if (platePhotoPicSupportNum != null) {
      $result.platePhotoPicSupportNum = platePhotoPicSupportNum;
    }
    if (snInfo != null) {
      $result.snInfo = snInfo;
    }
    if (voiceAssistant != null) {
      $result.voiceAssistant = voiceAssistant;
    }
    if (heartratePush != null) {
      $result.heartratePush = heartratePush;
    }
    return $result;
  }
  protocol_device_info._() : super();
  factory protocol_device_info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_device_info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_device_info', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'deviceId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'majorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'minorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'microVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pairFlag', $pb.PbFieldType.OU3)
    ..e<Platform>(6, _omitFieldNames ? '' : 'platform', $pb.PbFieldType.OE, defaultOrMaker: Platform.JX_3085C_PLATFORM, valueOf: Platform.valueOf, enumValues: Platform.values)
    ..e<Shape>(7, _omitFieldNames ? '' : 'shape', $pb.PbFieldType.OE, defaultOrMaker: Shape.SQUARE_SHAPE, valueOf: Shape.valueOf, enumValues: Shape.values)
    ..e<Dev_type>(8, _omitFieldNames ? '' : 'devType', $pb.PbFieldType.OE, defaultOrMaker: Dev_type.WATCH_TYPE, valueOf: Dev_type.valueOf, enumValues: Dev_type.values)
    ..a<$core.List<$core.int>>(9, _omitFieldNames ? '' : 'macAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'btAddr', $pb.PbFieldType.OY)
    ..aOM<protocol_device_batt_info>(11, _omitFieldNames ? '' : 'battInfo', subBuilder: protocol_device_batt_info.create)
    ..aOM<protocol_bt_name>(12, _omitFieldNames ? '' : 'btName', subBuilder: protocol_bt_name.create)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'fontMajorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'fontMinorVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'fontMicroVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'rebootFlag', $pb.PbFieldType.OU3)
    ..aOM<hardware_support>(17, _omitFieldNames ? '' : 'hwSupport', subBuilder: hardware_support.create)
    ..aOS(18, _omitFieldNames ? '' : 'gpsSocName')
    ..aOM<device_size_info>(19, _omitFieldNames ? '' : 'sizeInfo', subBuilder: device_size_info.create)
    ..aOB(20, _omitFieldNames ? '' : 'isRecoveryMode')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'deviceColor', $pb.PbFieldType.OU3)
    ..a<$core.int>(22, _omitFieldNames ? '' : 'platePhotoPicSupportNum', $pb.PbFieldType.OU3)
    ..aOM<device_sn_info>(23, _omitFieldNames ? '' : 'snInfo', subBuilder: device_sn_info.create)
    ..aOM<device_voice_assistant>(24, _omitFieldNames ? '' : 'voiceAssistant', subBuilder: device_voice_assistant.create)
    ..aOB(25, _omitFieldNames ? '' : 'heartratePush')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_device_info clone() => protocol_device_info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_device_info copyWith(void Function(protocol_device_info) updates) => super.copyWith((message) => updates(message as protocol_device_info)) as protocol_device_info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_device_info create() => protocol_device_info._();
  protocol_device_info createEmptyInstance() => create();
  static $pb.PbList<protocol_device_info> createRepeated() => $pb.PbList<protocol_device_info>();
  @$core.pragma('dart2js:noInline')
  static protocol_device_info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_device_info>(create);
  static protocol_device_info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get deviceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get majorVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set majorVersion($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMajorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearMajorVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minorVersion => $_getIZ(2);
  @$pb.TagNumber(3)
  set minorVersion($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMinorVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinorVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get microVersion => $_getIZ(3);
  @$pb.TagNumber(4)
  set microVersion($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMicroVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearMicroVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pairFlag => $_getIZ(4);
  @$pb.TagNumber(5)
  set pairFlag($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPairFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearPairFlag() => clearField(5);

  @$pb.TagNumber(6)
  Platform get platform => $_getN(5);
  @$pb.TagNumber(6)
  set platform(Platform v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlatform() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlatform() => clearField(6);

  @$pb.TagNumber(7)
  Shape get shape => $_getN(6);
  @$pb.TagNumber(7)
  set shape(Shape v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasShape() => $_has(6);
  @$pb.TagNumber(7)
  void clearShape() => clearField(7);

  @$pb.TagNumber(8)
  Dev_type get devType => $_getN(7);
  @$pb.TagNumber(8)
  set devType(Dev_type v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDevType() => $_has(7);
  @$pb.TagNumber(8)
  void clearDevType() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get macAddr => $_getN(8);
  @$pb.TagNumber(9)
  set macAddr($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMacAddr() => $_has(8);
  @$pb.TagNumber(9)
  void clearMacAddr() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get btAddr => $_getN(9);
  @$pb.TagNumber(10)
  set btAddr($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBtAddr() => $_has(9);
  @$pb.TagNumber(10)
  void clearBtAddr() => clearField(10);

  @$pb.TagNumber(11)
  protocol_device_batt_info get battInfo => $_getN(10);
  @$pb.TagNumber(11)
  set battInfo(protocol_device_batt_info v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasBattInfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearBattInfo() => clearField(11);
  @$pb.TagNumber(11)
  protocol_device_batt_info ensureBattInfo() => $_ensure(10);

  @$pb.TagNumber(12)
  protocol_bt_name get btName => $_getN(11);
  @$pb.TagNumber(12)
  set btName(protocol_bt_name v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasBtName() => $_has(11);
  @$pb.TagNumber(12)
  void clearBtName() => clearField(12);
  @$pb.TagNumber(12)
  protocol_bt_name ensureBtName() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.int get fontMajorVersion => $_getIZ(12);
  @$pb.TagNumber(13)
  set fontMajorVersion($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFontMajorVersion() => $_has(12);
  @$pb.TagNumber(13)
  void clearFontMajorVersion() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get fontMinorVersion => $_getIZ(13);
  @$pb.TagNumber(14)
  set fontMinorVersion($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFontMinorVersion() => $_has(13);
  @$pb.TagNumber(14)
  void clearFontMinorVersion() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get fontMicroVersion => $_getIZ(14);
  @$pb.TagNumber(15)
  set fontMicroVersion($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasFontMicroVersion() => $_has(14);
  @$pb.TagNumber(15)
  void clearFontMicroVersion() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get rebootFlag => $_getIZ(15);
  @$pb.TagNumber(16)
  set rebootFlag($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasRebootFlag() => $_has(15);
  @$pb.TagNumber(16)
  void clearRebootFlag() => clearField(16);

  @$pb.TagNumber(17)
  hardware_support get hwSupport => $_getN(16);
  @$pb.TagNumber(17)
  set hwSupport(hardware_support v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasHwSupport() => $_has(16);
  @$pb.TagNumber(17)
  void clearHwSupport() => clearField(17);
  @$pb.TagNumber(17)
  hardware_support ensureHwSupport() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.String get gpsSocName => $_getSZ(17);
  @$pb.TagNumber(18)
  set gpsSocName($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasGpsSocName() => $_has(17);
  @$pb.TagNumber(18)
  void clearGpsSocName() => clearField(18);

  @$pb.TagNumber(19)
  device_size_info get sizeInfo => $_getN(18);
  @$pb.TagNumber(19)
  set sizeInfo(device_size_info v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasSizeInfo() => $_has(18);
  @$pb.TagNumber(19)
  void clearSizeInfo() => clearField(19);
  @$pb.TagNumber(19)
  device_size_info ensureSizeInfo() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.bool get isRecoveryMode => $_getBF(19);
  @$pb.TagNumber(20)
  set isRecoveryMode($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsRecoveryMode() => $_has(19);
  @$pb.TagNumber(20)
  void clearIsRecoveryMode() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get deviceColor => $_getIZ(20);
  @$pb.TagNumber(21)
  set deviceColor($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasDeviceColor() => $_has(20);
  @$pb.TagNumber(21)
  void clearDeviceColor() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get platePhotoPicSupportNum => $_getIZ(21);
  @$pb.TagNumber(22)
  set platePhotoPicSupportNum($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasPlatePhotoPicSupportNum() => $_has(21);
  @$pb.TagNumber(22)
  void clearPlatePhotoPicSupportNum() => clearField(22);

  @$pb.TagNumber(23)
  device_sn_info get snInfo => $_getN(22);
  @$pb.TagNumber(23)
  set snInfo(device_sn_info v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasSnInfo() => $_has(22);
  @$pb.TagNumber(23)
  void clearSnInfo() => clearField(23);
  @$pb.TagNumber(23)
  device_sn_info ensureSnInfo() => $_ensure(22);

  @$pb.TagNumber(24)
  device_voice_assistant get voiceAssistant => $_getN(23);
  @$pb.TagNumber(24)
  set voiceAssistant(device_voice_assistant v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasVoiceAssistant() => $_has(23);
  @$pb.TagNumber(24)
  void clearVoiceAssistant() => clearField(24);
  @$pb.TagNumber(24)
  device_voice_assistant ensureVoiceAssistant() => $_ensure(23);

  @$pb.TagNumber(25)
  $core.bool get heartratePush => $_getBF(24);
  @$pb.TagNumber(25)
  set heartratePush($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasHeartratePush() => $_has(24);
  @$pb.TagNumber(25)
  void clearHeartratePush() => clearField(25);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
