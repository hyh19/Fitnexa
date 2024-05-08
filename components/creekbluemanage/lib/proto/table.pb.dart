//
//  Generated code. Do not modify.
//  source: table.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class function_table extends $pb.GeneratedMessage {
  factory function_table({
    $core.bool? isSupport,
    $core.int? cmdId,
  }) {
    final $result = create();
    if (isSupport != null) {
      $result.isSupport = isSupport;
    }
    if (cmdId != null) {
      $result.cmdId = cmdId;
    }
    return $result;
  }
  function_table._() : super();
  factory function_table.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory function_table.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'function_table', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSupport')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'cmdId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  function_table clone() => function_table()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  function_table copyWith(void Function(function_table) updates) => super.copyWith((message) => updates(message as function_table)) as function_table;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static function_table create() => function_table._();
  function_table createEmptyInstance() => create();
  static $pb.PbList<function_table> createRepeated() => $pb.PbList<function_table>();
  @$core.pragma('dart2js:noInline')
  static function_table getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<function_table>(create);
  static function_table? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSupport => $_getBF(0);
  @$pb.TagNumber(1)
  set isSupport($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSupport() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSupport() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get cmdId => $_getIZ(1);
  @$pb.TagNumber(2)
  set cmdId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCmdId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCmdId() => clearField(2);
}

class protocol_function_table extends $pb.GeneratedMessage {
  factory protocol_function_table({
    function_table? disturb,
    function_table? waterRemind,
    function_table? standingRemind,
    function_table? femaleHealth,
    function_table? weather,
    function_table? messageData,
    function_table? btCall,
    function_table? bleCall,
    function_table? scheduleRemind,
    function_table? voiceAssistant,
    function_table? quickCard,
    function_table? worldTime,
    function_table? frequentContacts,
    function_table? gps,
    function_table? onlineGnss,
    function_table? offlineGnss,
    function_table? emergencyContacts,
    function_table? hrv,
    function_table? buttonCrown,
    function_table? focusMode,
    function_table? findWatch,
    function_table? alexa,
    function_table? appList,
    function_table? eventTracking,
  }) {
    final $result = create();
    if (disturb != null) {
      $result.disturb = disturb;
    }
    if (waterRemind != null) {
      $result.waterRemind = waterRemind;
    }
    if (standingRemind != null) {
      $result.standingRemind = standingRemind;
    }
    if (femaleHealth != null) {
      $result.femaleHealth = femaleHealth;
    }
    if (weather != null) {
      $result.weather = weather;
    }
    if (messageData != null) {
      $result.messageData = messageData;
    }
    if (btCall != null) {
      $result.btCall = btCall;
    }
    if (bleCall != null) {
      $result.bleCall = bleCall;
    }
    if (scheduleRemind != null) {
      $result.scheduleRemind = scheduleRemind;
    }
    if (voiceAssistant != null) {
      $result.voiceAssistant = voiceAssistant;
    }
    if (quickCard != null) {
      $result.quickCard = quickCard;
    }
    if (worldTime != null) {
      $result.worldTime = worldTime;
    }
    if (frequentContacts != null) {
      $result.frequentContacts = frequentContacts;
    }
    if (gps != null) {
      $result.gps = gps;
    }
    if (onlineGnss != null) {
      $result.onlineGnss = onlineGnss;
    }
    if (offlineGnss != null) {
      $result.offlineGnss = offlineGnss;
    }
    if (emergencyContacts != null) {
      $result.emergencyContacts = emergencyContacts;
    }
    if (hrv != null) {
      $result.hrv = hrv;
    }
    if (buttonCrown != null) {
      $result.buttonCrown = buttonCrown;
    }
    if (focusMode != null) {
      $result.focusMode = focusMode;
    }
    if (findWatch != null) {
      $result.findWatch = findWatch;
    }
    if (alexa != null) {
      $result.alexa = alexa;
    }
    if (appList != null) {
      $result.appList = appList;
    }
    if (eventTracking != null) {
      $result.eventTracking = eventTracking;
    }
    return $result;
  }
  protocol_function_table._() : super();
  factory protocol_function_table.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_function_table.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_function_table', createEmptyInstance: create)
    ..aOM<function_table>(1, _omitFieldNames ? '' : 'disturb', subBuilder: function_table.create)
    ..aOM<function_table>(2, _omitFieldNames ? '' : 'waterRemind', subBuilder: function_table.create)
    ..aOM<function_table>(3, _omitFieldNames ? '' : 'standingRemind', subBuilder: function_table.create)
    ..aOM<function_table>(4, _omitFieldNames ? '' : 'femaleHealth', subBuilder: function_table.create)
    ..aOM<function_table>(5, _omitFieldNames ? '' : 'weather', subBuilder: function_table.create)
    ..aOM<function_table>(6, _omitFieldNames ? '' : 'messageData', subBuilder: function_table.create)
    ..aOM<function_table>(7, _omitFieldNames ? '' : 'btCall', subBuilder: function_table.create)
    ..aOM<function_table>(8, _omitFieldNames ? '' : 'bleCall', subBuilder: function_table.create)
    ..aOM<function_table>(9, _omitFieldNames ? '' : 'scheduleRemind', subBuilder: function_table.create)
    ..aOM<function_table>(10, _omitFieldNames ? '' : 'voiceAssistant', subBuilder: function_table.create)
    ..aOM<function_table>(11, _omitFieldNames ? '' : 'quickCard', subBuilder: function_table.create)
    ..aOM<function_table>(12, _omitFieldNames ? '' : 'worldTime', subBuilder: function_table.create)
    ..aOM<function_table>(13, _omitFieldNames ? '' : 'frequentContacts', subBuilder: function_table.create)
    ..aOM<function_table>(14, _omitFieldNames ? '' : 'gps', subBuilder: function_table.create)
    ..aOM<function_table>(15, _omitFieldNames ? '' : 'onlineGnss', subBuilder: function_table.create)
    ..aOM<function_table>(16, _omitFieldNames ? '' : 'offlineGnss', subBuilder: function_table.create)
    ..aOM<function_table>(17, _omitFieldNames ? '' : 'emergencyContacts', subBuilder: function_table.create)
    ..aOM<function_table>(18, _omitFieldNames ? '' : 'hrv', subBuilder: function_table.create)
    ..aOM<function_table>(19, _omitFieldNames ? '' : 'buttonCrown', subBuilder: function_table.create)
    ..aOM<function_table>(20, _omitFieldNames ? '' : 'focusMode', subBuilder: function_table.create)
    ..aOM<function_table>(21, _omitFieldNames ? '' : 'findWatch', subBuilder: function_table.create)
    ..aOM<function_table>(22, _omitFieldNames ? '' : 'alexa', subBuilder: function_table.create)
    ..aOM<function_table>(23, _omitFieldNames ? '' : 'appList', subBuilder: function_table.create)
    ..aOM<function_table>(24, _omitFieldNames ? '' : 'eventTracking', subBuilder: function_table.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_function_table clone() => protocol_function_table()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_function_table copyWith(void Function(protocol_function_table) updates) => super.copyWith((message) => updates(message as protocol_function_table)) as protocol_function_table;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_function_table create() => protocol_function_table._();
  protocol_function_table createEmptyInstance() => create();
  static $pb.PbList<protocol_function_table> createRepeated() => $pb.PbList<protocol_function_table>();
  @$core.pragma('dart2js:noInline')
  static protocol_function_table getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_function_table>(create);
  static protocol_function_table? _defaultInstance;

  @$pb.TagNumber(1)
  function_table get disturb => $_getN(0);
  @$pb.TagNumber(1)
  set disturb(function_table v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisturb() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisturb() => clearField(1);
  @$pb.TagNumber(1)
  function_table ensureDisturb() => $_ensure(0);

  @$pb.TagNumber(2)
  function_table get waterRemind => $_getN(1);
  @$pb.TagNumber(2)
  set waterRemind(function_table v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWaterRemind() => $_has(1);
  @$pb.TagNumber(2)
  void clearWaterRemind() => clearField(2);
  @$pb.TagNumber(2)
  function_table ensureWaterRemind() => $_ensure(1);

  @$pb.TagNumber(3)
  function_table get standingRemind => $_getN(2);
  @$pb.TagNumber(3)
  set standingRemind(function_table v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStandingRemind() => $_has(2);
  @$pb.TagNumber(3)
  void clearStandingRemind() => clearField(3);
  @$pb.TagNumber(3)
  function_table ensureStandingRemind() => $_ensure(2);

  @$pb.TagNumber(4)
  function_table get femaleHealth => $_getN(3);
  @$pb.TagNumber(4)
  set femaleHealth(function_table v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFemaleHealth() => $_has(3);
  @$pb.TagNumber(4)
  void clearFemaleHealth() => clearField(4);
  @$pb.TagNumber(4)
  function_table ensureFemaleHealth() => $_ensure(3);

  @$pb.TagNumber(5)
  function_table get weather => $_getN(4);
  @$pb.TagNumber(5)
  set weather(function_table v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasWeather() => $_has(4);
  @$pb.TagNumber(5)
  void clearWeather() => clearField(5);
  @$pb.TagNumber(5)
  function_table ensureWeather() => $_ensure(4);

  @$pb.TagNumber(6)
  function_table get messageData => $_getN(5);
  @$pb.TagNumber(6)
  set messageData(function_table v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessageData() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessageData() => clearField(6);
  @$pb.TagNumber(6)
  function_table ensureMessageData() => $_ensure(5);

  @$pb.TagNumber(7)
  function_table get btCall => $_getN(6);
  @$pb.TagNumber(7)
  set btCall(function_table v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBtCall() => $_has(6);
  @$pb.TagNumber(7)
  void clearBtCall() => clearField(7);
  @$pb.TagNumber(7)
  function_table ensureBtCall() => $_ensure(6);

  @$pb.TagNumber(8)
  function_table get bleCall => $_getN(7);
  @$pb.TagNumber(8)
  set bleCall(function_table v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBleCall() => $_has(7);
  @$pb.TagNumber(8)
  void clearBleCall() => clearField(8);
  @$pb.TagNumber(8)
  function_table ensureBleCall() => $_ensure(7);

  @$pb.TagNumber(9)
  function_table get scheduleRemind => $_getN(8);
  @$pb.TagNumber(9)
  set scheduleRemind(function_table v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasScheduleRemind() => $_has(8);
  @$pb.TagNumber(9)
  void clearScheduleRemind() => clearField(9);
  @$pb.TagNumber(9)
  function_table ensureScheduleRemind() => $_ensure(8);

  @$pb.TagNumber(10)
  function_table get voiceAssistant => $_getN(9);
  @$pb.TagNumber(10)
  set voiceAssistant(function_table v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasVoiceAssistant() => $_has(9);
  @$pb.TagNumber(10)
  void clearVoiceAssistant() => clearField(10);
  @$pb.TagNumber(10)
  function_table ensureVoiceAssistant() => $_ensure(9);

  @$pb.TagNumber(11)
  function_table get quickCard => $_getN(10);
  @$pb.TagNumber(11)
  set quickCard(function_table v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasQuickCard() => $_has(10);
  @$pb.TagNumber(11)
  void clearQuickCard() => clearField(11);
  @$pb.TagNumber(11)
  function_table ensureQuickCard() => $_ensure(10);

  @$pb.TagNumber(12)
  function_table get worldTime => $_getN(11);
  @$pb.TagNumber(12)
  set worldTime(function_table v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasWorldTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearWorldTime() => clearField(12);
  @$pb.TagNumber(12)
  function_table ensureWorldTime() => $_ensure(11);

  @$pb.TagNumber(13)
  function_table get frequentContacts => $_getN(12);
  @$pb.TagNumber(13)
  set frequentContacts(function_table v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasFrequentContacts() => $_has(12);
  @$pb.TagNumber(13)
  void clearFrequentContacts() => clearField(13);
  @$pb.TagNumber(13)
  function_table ensureFrequentContacts() => $_ensure(12);

  @$pb.TagNumber(14)
  function_table get gps => $_getN(13);
  @$pb.TagNumber(14)
  set gps(function_table v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasGps() => $_has(13);
  @$pb.TagNumber(14)
  void clearGps() => clearField(14);
  @$pb.TagNumber(14)
  function_table ensureGps() => $_ensure(13);

  @$pb.TagNumber(15)
  function_table get onlineGnss => $_getN(14);
  @$pb.TagNumber(15)
  set onlineGnss(function_table v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasOnlineGnss() => $_has(14);
  @$pb.TagNumber(15)
  void clearOnlineGnss() => clearField(15);
  @$pb.TagNumber(15)
  function_table ensureOnlineGnss() => $_ensure(14);

  @$pb.TagNumber(16)
  function_table get offlineGnss => $_getN(15);
  @$pb.TagNumber(16)
  set offlineGnss(function_table v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasOfflineGnss() => $_has(15);
  @$pb.TagNumber(16)
  void clearOfflineGnss() => clearField(16);
  @$pb.TagNumber(16)
  function_table ensureOfflineGnss() => $_ensure(15);

  @$pb.TagNumber(17)
  function_table get emergencyContacts => $_getN(16);
  @$pb.TagNumber(17)
  set emergencyContacts(function_table v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasEmergencyContacts() => $_has(16);
  @$pb.TagNumber(17)
  void clearEmergencyContacts() => clearField(17);
  @$pb.TagNumber(17)
  function_table ensureEmergencyContacts() => $_ensure(16);

  @$pb.TagNumber(18)
  function_table get hrv => $_getN(17);
  @$pb.TagNumber(18)
  set hrv(function_table v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasHrv() => $_has(17);
  @$pb.TagNumber(18)
  void clearHrv() => clearField(18);
  @$pb.TagNumber(18)
  function_table ensureHrv() => $_ensure(17);

  @$pb.TagNumber(19)
  function_table get buttonCrown => $_getN(18);
  @$pb.TagNumber(19)
  set buttonCrown(function_table v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasButtonCrown() => $_has(18);
  @$pb.TagNumber(19)
  void clearButtonCrown() => clearField(19);
  @$pb.TagNumber(19)
  function_table ensureButtonCrown() => $_ensure(18);

  @$pb.TagNumber(20)
  function_table get focusMode => $_getN(19);
  @$pb.TagNumber(20)
  set focusMode(function_table v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasFocusMode() => $_has(19);
  @$pb.TagNumber(20)
  void clearFocusMode() => clearField(20);
  @$pb.TagNumber(20)
  function_table ensureFocusMode() => $_ensure(19);

  @$pb.TagNumber(21)
  function_table get findWatch => $_getN(20);
  @$pb.TagNumber(21)
  set findWatch(function_table v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasFindWatch() => $_has(20);
  @$pb.TagNumber(21)
  void clearFindWatch() => clearField(21);
  @$pb.TagNumber(21)
  function_table ensureFindWatch() => $_ensure(20);

  @$pb.TagNumber(22)
  function_table get alexa => $_getN(21);
  @$pb.TagNumber(22)
  set alexa(function_table v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasAlexa() => $_has(21);
  @$pb.TagNumber(22)
  void clearAlexa() => clearField(22);
  @$pb.TagNumber(22)
  function_table ensureAlexa() => $_ensure(21);

  @$pb.TagNumber(23)
  function_table get appList => $_getN(22);
  @$pb.TagNumber(23)
  set appList(function_table v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasAppList() => $_has(22);
  @$pb.TagNumber(23)
  void clearAppList() => clearField(23);
  @$pb.TagNumber(23)
  function_table ensureAppList() => $_ensure(22);

  @$pb.TagNumber(24)
  function_table get eventTracking => $_getN(23);
  @$pb.TagNumber(24)
  set eventTracking(function_table v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasEventTracking() => $_has(23);
  @$pb.TagNumber(24)
  void clearEventTracking() => clearField(24);
  @$pb.TagNumber(24)
  function_table ensureEventTracking() => $_ensure(23);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
