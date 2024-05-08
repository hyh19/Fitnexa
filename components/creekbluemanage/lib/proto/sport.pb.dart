//
//  Generated code. Do not modify.
//  source: sport.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'sport.pbenum.dart';

export 'sport.pbenum.dart';

/// 获取设备支持运动类型
class protocol_exercise_func_support_reply extends $pb.GeneratedMessage {
  factory protocol_exercise_func_support_reply({
    $core.int? funcTable,
    $core.bool? orun,
    $core.bool? irun,
    $core.bool? owalk,
    $core.bool? iwalk,
    $core.bool? hiking,
    $core.bool? ocycle,
    $core.bool? icycle,
    $core.bool? cricket,
    $core.bool? football,
    $core.bool? pswim,
    $core.bool? oswim,
    $core.bool? yoga,
    $core.bool? pilates,
    $core.bool? dance,
    $core.bool? zumba,
    $core.bool? rower,
    $core.bool? elliptical,
    $core.bool? ctraining,
    $core.bool? tstraining,
    $core.bool? fstraining,
    $core.bool? hiit,
    $core.bool? cooldown,
    $core.bool? workout,
    $core.bool? fitness,
    $core.bool? trailRunning,
    $core.bool? treadmill,
    $core.bool? aerobics,
    $core.bool? sitUp,
    $core.bool? plank,
    $core.bool? jumpingJack,
    $core.bool? chinUp,
    $core.bool? pushUp,
    $core.bool? deepSquat,
    $core.bool? highKneeLift,
    $core.bool? dumbbell,
    $core.bool? barbell,
    $core.bool? boxing,
    $core.bool? kickboxing,
    $core.bool? horizontalBar,
    $core.bool? parallelBars,
    $core.bool? walkingMachine,
    $core.bool? summitTrainers,
    $core.bool? bowling,
    $core.bool? tennis,
    $core.bool? tableTennis,
    $core.bool? golf,
    $core.bool? basketball,
    $core.bool? badminton,
    $core.bool? hockey,
    $core.bool? rugby,
    $core.bool? handball,
    $core.bool? squash,
    $core.bool? baseball,
    $core.bool? softball,
    $core.bool? shuttlecock,
    $core.bool? sepaktakraw,
    $core.bool? streetDance,
    $core.bool? mountainClinbing,
    $core.bool? ropeSkipping,
    $core.bool? climbStairs,
    $core.bool? ballet,
    $core.bool? socialDance,
    $core.bool? darts,
    $core.bool? horsebackRiding,
    $core.bool? rollerSkating,
    $core.bool? taiChi,
    $core.bool? frisbee,
    $core.bool? hulaHoop,
    $core.bool? sleigh,
    $core.bool? skating,
    $core.bool? bobsleighAndTobogganing,
    $core.bool? curling,
    $core.bool? iceHockey,
    $core.bool? surfing,
    $core.bool? sailboat,
    $core.bool? sailboard,
    $core.bool? foldboating,
    $core.bool? canoeing,
    $core.bool? boatRace,
    $core.bool? motorboat,
    $core.bool? waterPolo,
    $core.bool? slidingPlate,
    $core.bool? rockClimbing,
    $core.bool? bungeeJumping,
    $core.bool? parkour,
    $core.bool? other,
    $core.bool? spinning,
    $core.bool? martialArts,
    $core.bool? taekwondo,
    $core.bool? karate,
    $core.bool? gymnastics,
    $core.bool? padel,
    $core.bool? pickleball,
    $core.bool? snowboarding,
    $core.bool? skiing,
    $core.bool? paddling,
    $core.bool? bmx,
    $core.bool? fencing,
    $core.bool? billiards,
    $core.bool? beachSoccer,
    $core.bool? beachVolleyball,
    $core.bool? dodgeball,
    $core.bool? jazz,
    $core.bool? latin,
    $core.bool? squareDance,
    $core.bool? volleyball,
    $core.bool? kiteFlying,
    $core.bool? fishing,
    $core.bool? archery,
    $core.bool? shooting,
    $core.bool? whiteWaterRafting,
    $core.bool? alpineSkiing,
    $core.bool? crossCountrySkiing,
    $core.bool? biathon,
    $core.bool? dragonBoatRacing,
    $core.bool? racing,
  }) {
    final $result = create();
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (orun != null) {
      $result.orun = orun;
    }
    if (irun != null) {
      $result.irun = irun;
    }
    if (owalk != null) {
      $result.owalk = owalk;
    }
    if (iwalk != null) {
      $result.iwalk = iwalk;
    }
    if (hiking != null) {
      $result.hiking = hiking;
    }
    if (ocycle != null) {
      $result.ocycle = ocycle;
    }
    if (icycle != null) {
      $result.icycle = icycle;
    }
    if (cricket != null) {
      $result.cricket = cricket;
    }
    if (football != null) {
      $result.football = football;
    }
    if (pswim != null) {
      $result.pswim = pswim;
    }
    if (oswim != null) {
      $result.oswim = oswim;
    }
    if (yoga != null) {
      $result.yoga = yoga;
    }
    if (pilates != null) {
      $result.pilates = pilates;
    }
    if (dance != null) {
      $result.dance = dance;
    }
    if (zumba != null) {
      $result.zumba = zumba;
    }
    if (rower != null) {
      $result.rower = rower;
    }
    if (elliptical != null) {
      $result.elliptical = elliptical;
    }
    if (ctraining != null) {
      $result.ctraining = ctraining;
    }
    if (tstraining != null) {
      $result.tstraining = tstraining;
    }
    if (fstraining != null) {
      $result.fstraining = fstraining;
    }
    if (hiit != null) {
      $result.hiit = hiit;
    }
    if (cooldown != null) {
      $result.cooldown = cooldown;
    }
    if (workout != null) {
      $result.workout = workout;
    }
    if (fitness != null) {
      $result.fitness = fitness;
    }
    if (trailRunning != null) {
      $result.trailRunning = trailRunning;
    }
    if (treadmill != null) {
      $result.treadmill = treadmill;
    }
    if (aerobics != null) {
      $result.aerobics = aerobics;
    }
    if (sitUp != null) {
      $result.sitUp = sitUp;
    }
    if (plank != null) {
      $result.plank = plank;
    }
    if (jumpingJack != null) {
      $result.jumpingJack = jumpingJack;
    }
    if (chinUp != null) {
      $result.chinUp = chinUp;
    }
    if (pushUp != null) {
      $result.pushUp = pushUp;
    }
    if (deepSquat != null) {
      $result.deepSquat = deepSquat;
    }
    if (highKneeLift != null) {
      $result.highKneeLift = highKneeLift;
    }
    if (dumbbell != null) {
      $result.dumbbell = dumbbell;
    }
    if (barbell != null) {
      $result.barbell = barbell;
    }
    if (boxing != null) {
      $result.boxing = boxing;
    }
    if (kickboxing != null) {
      $result.kickboxing = kickboxing;
    }
    if (horizontalBar != null) {
      $result.horizontalBar = horizontalBar;
    }
    if (parallelBars != null) {
      $result.parallelBars = parallelBars;
    }
    if (walkingMachine != null) {
      $result.walkingMachine = walkingMachine;
    }
    if (summitTrainers != null) {
      $result.summitTrainers = summitTrainers;
    }
    if (bowling != null) {
      $result.bowling = bowling;
    }
    if (tennis != null) {
      $result.tennis = tennis;
    }
    if (tableTennis != null) {
      $result.tableTennis = tableTennis;
    }
    if (golf != null) {
      $result.golf = golf;
    }
    if (basketball != null) {
      $result.basketball = basketball;
    }
    if (badminton != null) {
      $result.badminton = badminton;
    }
    if (hockey != null) {
      $result.hockey = hockey;
    }
    if (rugby != null) {
      $result.rugby = rugby;
    }
    if (handball != null) {
      $result.handball = handball;
    }
    if (squash != null) {
      $result.squash = squash;
    }
    if (baseball != null) {
      $result.baseball = baseball;
    }
    if (softball != null) {
      $result.softball = softball;
    }
    if (shuttlecock != null) {
      $result.shuttlecock = shuttlecock;
    }
    if (sepaktakraw != null) {
      $result.sepaktakraw = sepaktakraw;
    }
    if (streetDance != null) {
      $result.streetDance = streetDance;
    }
    if (mountainClinbing != null) {
      $result.mountainClinbing = mountainClinbing;
    }
    if (ropeSkipping != null) {
      $result.ropeSkipping = ropeSkipping;
    }
    if (climbStairs != null) {
      $result.climbStairs = climbStairs;
    }
    if (ballet != null) {
      $result.ballet = ballet;
    }
    if (socialDance != null) {
      $result.socialDance = socialDance;
    }
    if (darts != null) {
      $result.darts = darts;
    }
    if (horsebackRiding != null) {
      $result.horsebackRiding = horsebackRiding;
    }
    if (rollerSkating != null) {
      $result.rollerSkating = rollerSkating;
    }
    if (taiChi != null) {
      $result.taiChi = taiChi;
    }
    if (frisbee != null) {
      $result.frisbee = frisbee;
    }
    if (hulaHoop != null) {
      $result.hulaHoop = hulaHoop;
    }
    if (sleigh != null) {
      $result.sleigh = sleigh;
    }
    if (skating != null) {
      $result.skating = skating;
    }
    if (bobsleighAndTobogganing != null) {
      $result.bobsleighAndTobogganing = bobsleighAndTobogganing;
    }
    if (curling != null) {
      $result.curling = curling;
    }
    if (iceHockey != null) {
      $result.iceHockey = iceHockey;
    }
    if (surfing != null) {
      $result.surfing = surfing;
    }
    if (sailboat != null) {
      $result.sailboat = sailboat;
    }
    if (sailboard != null) {
      $result.sailboard = sailboard;
    }
    if (foldboating != null) {
      $result.foldboating = foldboating;
    }
    if (canoeing != null) {
      $result.canoeing = canoeing;
    }
    if (boatRace != null) {
      $result.boatRace = boatRace;
    }
    if (motorboat != null) {
      $result.motorboat = motorboat;
    }
    if (waterPolo != null) {
      $result.waterPolo = waterPolo;
    }
    if (slidingPlate != null) {
      $result.slidingPlate = slidingPlate;
    }
    if (rockClimbing != null) {
      $result.rockClimbing = rockClimbing;
    }
    if (bungeeJumping != null) {
      $result.bungeeJumping = bungeeJumping;
    }
    if (parkour != null) {
      $result.parkour = parkour;
    }
    if (other != null) {
      $result.other = other;
    }
    if (spinning != null) {
      $result.spinning = spinning;
    }
    if (martialArts != null) {
      $result.martialArts = martialArts;
    }
    if (taekwondo != null) {
      $result.taekwondo = taekwondo;
    }
    if (karate != null) {
      $result.karate = karate;
    }
    if (gymnastics != null) {
      $result.gymnastics = gymnastics;
    }
    if (padel != null) {
      $result.padel = padel;
    }
    if (pickleball != null) {
      $result.pickleball = pickleball;
    }
    if (snowboarding != null) {
      $result.snowboarding = snowboarding;
    }
    if (skiing != null) {
      $result.skiing = skiing;
    }
    if (paddling != null) {
      $result.paddling = paddling;
    }
    if (bmx != null) {
      $result.bmx = bmx;
    }
    if (fencing != null) {
      $result.fencing = fencing;
    }
    if (billiards != null) {
      $result.billiards = billiards;
    }
    if (beachSoccer != null) {
      $result.beachSoccer = beachSoccer;
    }
    if (beachVolleyball != null) {
      $result.beachVolleyball = beachVolleyball;
    }
    if (dodgeball != null) {
      $result.dodgeball = dodgeball;
    }
    if (jazz != null) {
      $result.jazz = jazz;
    }
    if (latin != null) {
      $result.latin = latin;
    }
    if (squareDance != null) {
      $result.squareDance = squareDance;
    }
    if (volleyball != null) {
      $result.volleyball = volleyball;
    }
    if (kiteFlying != null) {
      $result.kiteFlying = kiteFlying;
    }
    if (fishing != null) {
      $result.fishing = fishing;
    }
    if (archery != null) {
      $result.archery = archery;
    }
    if (shooting != null) {
      $result.shooting = shooting;
    }
    if (whiteWaterRafting != null) {
      $result.whiteWaterRafting = whiteWaterRafting;
    }
    if (alpineSkiing != null) {
      $result.alpineSkiing = alpineSkiing;
    }
    if (crossCountrySkiing != null) {
      $result.crossCountrySkiing = crossCountrySkiing;
    }
    if (biathon != null) {
      $result.biathon = biathon;
    }
    if (dragonBoatRacing != null) {
      $result.dragonBoatRacing = dragonBoatRacing;
    }
    if (racing != null) {
      $result.racing = racing;
    }
    return $result;
  }
  protocol_exercise_func_support_reply._() : super();
  factory protocol_exercise_func_support_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_func_support_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_func_support_reply', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..aOB(2, _omitFieldNames ? '' : 'orun')
    ..aOB(3, _omitFieldNames ? '' : 'irun')
    ..aOB(4, _omitFieldNames ? '' : 'owalk')
    ..aOB(5, _omitFieldNames ? '' : 'iwalk')
    ..aOB(6, _omitFieldNames ? '' : 'hiking')
    ..aOB(7, _omitFieldNames ? '' : 'ocycle')
    ..aOB(8, _omitFieldNames ? '' : 'icycle')
    ..aOB(9, _omitFieldNames ? '' : 'cricket')
    ..aOB(10, _omitFieldNames ? '' : 'football')
    ..aOB(11, _omitFieldNames ? '' : 'pswim')
    ..aOB(12, _omitFieldNames ? '' : 'oswim')
    ..aOB(13, _omitFieldNames ? '' : 'yoga')
    ..aOB(14, _omitFieldNames ? '' : 'pilates')
    ..aOB(15, _omitFieldNames ? '' : 'dance')
    ..aOB(16, _omitFieldNames ? '' : 'zumba')
    ..aOB(17, _omitFieldNames ? '' : 'rower')
    ..aOB(18, _omitFieldNames ? '' : 'elliptical')
    ..aOB(19, _omitFieldNames ? '' : 'ctraining')
    ..aOB(20, _omitFieldNames ? '' : 'tstraining')
    ..aOB(21, _omitFieldNames ? '' : 'fstraining')
    ..aOB(22, _omitFieldNames ? '' : 'hiit')
    ..aOB(23, _omitFieldNames ? '' : 'cooldown')
    ..aOB(24, _omitFieldNames ? '' : 'workout')
    ..aOB(25, _omitFieldNames ? '' : 'fitness')
    ..aOB(26, _omitFieldNames ? '' : 'trailRunning')
    ..aOB(27, _omitFieldNames ? '' : 'treadmill')
    ..aOB(28, _omitFieldNames ? '' : 'aerobics')
    ..aOB(29, _omitFieldNames ? '' : 'sitUp')
    ..aOB(30, _omitFieldNames ? '' : 'plank')
    ..aOB(31, _omitFieldNames ? '' : 'jumpingJack')
    ..aOB(32, _omitFieldNames ? '' : 'chinUp')
    ..aOB(33, _omitFieldNames ? '' : 'pushUp')
    ..aOB(34, _omitFieldNames ? '' : 'deepSquat')
    ..aOB(35, _omitFieldNames ? '' : 'highKneeLift')
    ..aOB(36, _omitFieldNames ? '' : 'dumbbell')
    ..aOB(37, _omitFieldNames ? '' : 'barbell')
    ..aOB(38, _omitFieldNames ? '' : 'boxing')
    ..aOB(39, _omitFieldNames ? '' : 'kickboxing')
    ..aOB(40, _omitFieldNames ? '' : 'horizontalBar')
    ..aOB(41, _omitFieldNames ? '' : 'parallelBars')
    ..aOB(42, _omitFieldNames ? '' : 'walkingMachine')
    ..aOB(43, _omitFieldNames ? '' : 'summitTrainers')
    ..aOB(44, _omitFieldNames ? '' : 'bowling')
    ..aOB(45, _omitFieldNames ? '' : 'tennis')
    ..aOB(46, _omitFieldNames ? '' : 'tableTennis')
    ..aOB(47, _omitFieldNames ? '' : 'golf')
    ..aOB(48, _omitFieldNames ? '' : 'basketball')
    ..aOB(49, _omitFieldNames ? '' : 'badminton')
    ..aOB(50, _omitFieldNames ? '' : 'hockey')
    ..aOB(51, _omitFieldNames ? '' : 'rugby')
    ..aOB(52, _omitFieldNames ? '' : 'handball')
    ..aOB(53, _omitFieldNames ? '' : 'squash')
    ..aOB(54, _omitFieldNames ? '' : 'baseball')
    ..aOB(55, _omitFieldNames ? '' : 'softball')
    ..aOB(56, _omitFieldNames ? '' : 'shuttlecock')
    ..aOB(57, _omitFieldNames ? '' : 'sepaktakraw')
    ..aOB(58, _omitFieldNames ? '' : 'streetDance')
    ..aOB(59, _omitFieldNames ? '' : 'mountainClinbing')
    ..aOB(60, _omitFieldNames ? '' : 'ropeSkipping')
    ..aOB(61, _omitFieldNames ? '' : 'climbStairs')
    ..aOB(62, _omitFieldNames ? '' : 'ballet')
    ..aOB(63, _omitFieldNames ? '' : 'socialDance')
    ..aOB(64, _omitFieldNames ? '' : 'darts')
    ..aOB(65, _omitFieldNames ? '' : 'horsebackRiding')
    ..aOB(66, _omitFieldNames ? '' : 'rollerSkating')
    ..aOB(67, _omitFieldNames ? '' : 'taiChi')
    ..aOB(68, _omitFieldNames ? '' : 'frisbee')
    ..aOB(69, _omitFieldNames ? '' : 'hulaHoop')
    ..aOB(70, _omitFieldNames ? '' : 'sleigh')
    ..aOB(71, _omitFieldNames ? '' : 'skating')
    ..aOB(72, _omitFieldNames ? '' : 'bobsleighAndTobogganing')
    ..aOB(73, _omitFieldNames ? '' : 'curling')
    ..aOB(74, _omitFieldNames ? '' : 'iceHockey')
    ..aOB(75, _omitFieldNames ? '' : 'surfing')
    ..aOB(76, _omitFieldNames ? '' : 'sailboat')
    ..aOB(77, _omitFieldNames ? '' : 'sailboard')
    ..aOB(78, _omitFieldNames ? '' : 'foldboating')
    ..aOB(79, _omitFieldNames ? '' : 'canoeing')
    ..aOB(80, _omitFieldNames ? '' : 'boatRace')
    ..aOB(81, _omitFieldNames ? '' : 'motorboat')
    ..aOB(82, _omitFieldNames ? '' : 'waterPolo')
    ..aOB(83, _omitFieldNames ? '' : 'slidingPlate')
    ..aOB(84, _omitFieldNames ? '' : 'rockClimbing')
    ..aOB(85, _omitFieldNames ? '' : 'bungeeJumping')
    ..aOB(86, _omitFieldNames ? '' : 'parkour')
    ..aOB(87, _omitFieldNames ? '' : 'other')
    ..aOB(88, _omitFieldNames ? '' : 'spinning')
    ..aOB(89, _omitFieldNames ? '' : 'martialArts')
    ..aOB(90, _omitFieldNames ? '' : 'taekwondo')
    ..aOB(91, _omitFieldNames ? '' : 'karate')
    ..aOB(92, _omitFieldNames ? '' : 'gymnastics')
    ..aOB(93, _omitFieldNames ? '' : 'padel')
    ..aOB(94, _omitFieldNames ? '' : 'pickleball')
    ..aOB(95, _omitFieldNames ? '' : 'snowboarding')
    ..aOB(96, _omitFieldNames ? '' : 'skiing')
    ..aOB(97, _omitFieldNames ? '' : 'paddling')
    ..aOB(98, _omitFieldNames ? '' : 'bmx')
    ..aOB(99, _omitFieldNames ? '' : 'fencing')
    ..aOB(100, _omitFieldNames ? '' : 'billiards')
    ..aOB(101, _omitFieldNames ? '' : 'beachSoccer')
    ..aOB(102, _omitFieldNames ? '' : 'beachVolleyball')
    ..aOB(103, _omitFieldNames ? '' : 'dodgeball')
    ..aOB(104, _omitFieldNames ? '' : 'jazz')
    ..aOB(105, _omitFieldNames ? '' : 'latin')
    ..aOB(106, _omitFieldNames ? '' : 'squareDance')
    ..aOB(107, _omitFieldNames ? '' : 'volleyball')
    ..aOB(108, _omitFieldNames ? '' : 'kiteFlying')
    ..aOB(109, _omitFieldNames ? '' : 'fishing')
    ..aOB(110, _omitFieldNames ? '' : 'archery')
    ..aOB(111, _omitFieldNames ? '' : 'shooting')
    ..aOB(112, _omitFieldNames ? '' : 'whiteWaterRafting')
    ..aOB(113, _omitFieldNames ? '' : 'alpineSkiing')
    ..aOB(114, _omitFieldNames ? '' : 'crossCountrySkiing')
    ..aOB(115, _omitFieldNames ? '' : 'biathon')
    ..aOB(116, _omitFieldNames ? '' : 'dragonBoatRacing')
    ..aOB(117, _omitFieldNames ? '' : 'racing')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_func_support_reply clone() => protocol_exercise_func_support_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_func_support_reply copyWith(void Function(protocol_exercise_func_support_reply) updates) => super.copyWith((message) => updates(message as protocol_exercise_func_support_reply)) as protocol_exercise_func_support_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_func_support_reply create() => protocol_exercise_func_support_reply._();
  protocol_exercise_func_support_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_func_support_reply> createRepeated() => $pb.PbList<protocol_exercise_func_support_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_func_support_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_func_support_reply>(create);
  static protocol_exercise_func_support_reply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get funcTable => $_getIZ(0);
  @$pb.TagNumber(1)
  set funcTable($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuncTable() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuncTable() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get orun => $_getBF(1);
  @$pb.TagNumber(2)
  set orun($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrun() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrun() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get irun => $_getBF(2);
  @$pb.TagNumber(3)
  set irun($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIrun() => $_has(2);
  @$pb.TagNumber(3)
  void clearIrun() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get owalk => $_getBF(3);
  @$pb.TagNumber(4)
  set owalk($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwalk() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwalk() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get iwalk => $_getBF(4);
  @$pb.TagNumber(5)
  set iwalk($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIwalk() => $_has(4);
  @$pb.TagNumber(5)
  void clearIwalk() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hiking => $_getBF(5);
  @$pb.TagNumber(6)
  set hiking($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHiking() => $_has(5);
  @$pb.TagNumber(6)
  void clearHiking() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get ocycle => $_getBF(6);
  @$pb.TagNumber(7)
  set ocycle($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOcycle() => $_has(6);
  @$pb.TagNumber(7)
  void clearOcycle() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get icycle => $_getBF(7);
  @$pb.TagNumber(8)
  set icycle($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIcycle() => $_has(7);
  @$pb.TagNumber(8)
  void clearIcycle() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get cricket => $_getBF(8);
  @$pb.TagNumber(9)
  set cricket($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCricket() => $_has(8);
  @$pb.TagNumber(9)
  void clearCricket() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get football => $_getBF(9);
  @$pb.TagNumber(10)
  set football($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFootball() => $_has(9);
  @$pb.TagNumber(10)
  void clearFootball() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get pswim => $_getBF(10);
  @$pb.TagNumber(11)
  set pswim($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPswim() => $_has(10);
  @$pb.TagNumber(11)
  void clearPswim() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get oswim => $_getBF(11);
  @$pb.TagNumber(12)
  set oswim($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasOswim() => $_has(11);
  @$pb.TagNumber(12)
  void clearOswim() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get yoga => $_getBF(12);
  @$pb.TagNumber(13)
  set yoga($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasYoga() => $_has(12);
  @$pb.TagNumber(13)
  void clearYoga() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get pilates => $_getBF(13);
  @$pb.TagNumber(14)
  set pilates($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPilates() => $_has(13);
  @$pb.TagNumber(14)
  void clearPilates() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get dance => $_getBF(14);
  @$pb.TagNumber(15)
  set dance($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDance() => $_has(14);
  @$pb.TagNumber(15)
  void clearDance() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get zumba => $_getBF(15);
  @$pb.TagNumber(16)
  set zumba($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasZumba() => $_has(15);
  @$pb.TagNumber(16)
  void clearZumba() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get rower => $_getBF(16);
  @$pb.TagNumber(17)
  set rower($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasRower() => $_has(16);
  @$pb.TagNumber(17)
  void clearRower() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get elliptical => $_getBF(17);
  @$pb.TagNumber(18)
  set elliptical($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasElliptical() => $_has(17);
  @$pb.TagNumber(18)
  void clearElliptical() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get ctraining => $_getBF(18);
  @$pb.TagNumber(19)
  set ctraining($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasCtraining() => $_has(18);
  @$pb.TagNumber(19)
  void clearCtraining() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get tstraining => $_getBF(19);
  @$pb.TagNumber(20)
  set tstraining($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasTstraining() => $_has(19);
  @$pb.TagNumber(20)
  void clearTstraining() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get fstraining => $_getBF(20);
  @$pb.TagNumber(21)
  set fstraining($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasFstraining() => $_has(20);
  @$pb.TagNumber(21)
  void clearFstraining() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get hiit => $_getBF(21);
  @$pb.TagNumber(22)
  set hiit($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasHiit() => $_has(21);
  @$pb.TagNumber(22)
  void clearHiit() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get cooldown => $_getBF(22);
  @$pb.TagNumber(23)
  set cooldown($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasCooldown() => $_has(22);
  @$pb.TagNumber(23)
  void clearCooldown() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get workout => $_getBF(23);
  @$pb.TagNumber(24)
  set workout($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasWorkout() => $_has(23);
  @$pb.TagNumber(24)
  void clearWorkout() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get fitness => $_getBF(24);
  @$pb.TagNumber(25)
  set fitness($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasFitness() => $_has(24);
  @$pb.TagNumber(25)
  void clearFitness() => clearField(25);

  @$pb.TagNumber(26)
  $core.bool get trailRunning => $_getBF(25);
  @$pb.TagNumber(26)
  set trailRunning($core.bool v) { $_setBool(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasTrailRunning() => $_has(25);
  @$pb.TagNumber(26)
  void clearTrailRunning() => clearField(26);

  /// 健身
  @$pb.TagNumber(27)
  $core.bool get treadmill => $_getBF(26);
  @$pb.TagNumber(27)
  set treadmill($core.bool v) { $_setBool(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasTreadmill() => $_has(26);
  @$pb.TagNumber(27)
  void clearTreadmill() => clearField(27);

  @$pb.TagNumber(28)
  $core.bool get aerobics => $_getBF(27);
  @$pb.TagNumber(28)
  set aerobics($core.bool v) { $_setBool(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasAerobics() => $_has(27);
  @$pb.TagNumber(28)
  void clearAerobics() => clearField(28);

  @$pb.TagNumber(29)
  $core.bool get sitUp => $_getBF(28);
  @$pb.TagNumber(29)
  set sitUp($core.bool v) { $_setBool(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasSitUp() => $_has(28);
  @$pb.TagNumber(29)
  void clearSitUp() => clearField(29);

  @$pb.TagNumber(30)
  $core.bool get plank => $_getBF(29);
  @$pb.TagNumber(30)
  set plank($core.bool v) { $_setBool(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasPlank() => $_has(29);
  @$pb.TagNumber(30)
  void clearPlank() => clearField(30);

  @$pb.TagNumber(31)
  $core.bool get jumpingJack => $_getBF(30);
  @$pb.TagNumber(31)
  set jumpingJack($core.bool v) { $_setBool(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasJumpingJack() => $_has(30);
  @$pb.TagNumber(31)
  void clearJumpingJack() => clearField(31);

  @$pb.TagNumber(32)
  $core.bool get chinUp => $_getBF(31);
  @$pb.TagNumber(32)
  set chinUp($core.bool v) { $_setBool(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasChinUp() => $_has(31);
  @$pb.TagNumber(32)
  void clearChinUp() => clearField(32);

  @$pb.TagNumber(33)
  $core.bool get pushUp => $_getBF(32);
  @$pb.TagNumber(33)
  set pushUp($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasPushUp() => $_has(32);
  @$pb.TagNumber(33)
  void clearPushUp() => clearField(33);

  @$pb.TagNumber(34)
  $core.bool get deepSquat => $_getBF(33);
  @$pb.TagNumber(34)
  set deepSquat($core.bool v) { $_setBool(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasDeepSquat() => $_has(33);
  @$pb.TagNumber(34)
  void clearDeepSquat() => clearField(34);

  @$pb.TagNumber(35)
  $core.bool get highKneeLift => $_getBF(34);
  @$pb.TagNumber(35)
  set highKneeLift($core.bool v) { $_setBool(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasHighKneeLift() => $_has(34);
  @$pb.TagNumber(35)
  void clearHighKneeLift() => clearField(35);

  @$pb.TagNumber(36)
  $core.bool get dumbbell => $_getBF(35);
  @$pb.TagNumber(36)
  set dumbbell($core.bool v) { $_setBool(35, v); }
  @$pb.TagNumber(36)
  $core.bool hasDumbbell() => $_has(35);
  @$pb.TagNumber(36)
  void clearDumbbell() => clearField(36);

  @$pb.TagNumber(37)
  $core.bool get barbell => $_getBF(36);
  @$pb.TagNumber(37)
  set barbell($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasBarbell() => $_has(36);
  @$pb.TagNumber(37)
  void clearBarbell() => clearField(37);

  @$pb.TagNumber(38)
  $core.bool get boxing => $_getBF(37);
  @$pb.TagNumber(38)
  set boxing($core.bool v) { $_setBool(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasBoxing() => $_has(37);
  @$pb.TagNumber(38)
  void clearBoxing() => clearField(38);

  @$pb.TagNumber(39)
  $core.bool get kickboxing => $_getBF(38);
  @$pb.TagNumber(39)
  set kickboxing($core.bool v) { $_setBool(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasKickboxing() => $_has(38);
  @$pb.TagNumber(39)
  void clearKickboxing() => clearField(39);

  @$pb.TagNumber(40)
  $core.bool get horizontalBar => $_getBF(39);
  @$pb.TagNumber(40)
  set horizontalBar($core.bool v) { $_setBool(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasHorizontalBar() => $_has(39);
  @$pb.TagNumber(40)
  void clearHorizontalBar() => clearField(40);

  @$pb.TagNumber(41)
  $core.bool get parallelBars => $_getBF(40);
  @$pb.TagNumber(41)
  set parallelBars($core.bool v) { $_setBool(40, v); }
  @$pb.TagNumber(41)
  $core.bool hasParallelBars() => $_has(40);
  @$pb.TagNumber(41)
  void clearParallelBars() => clearField(41);

  @$pb.TagNumber(42)
  $core.bool get walkingMachine => $_getBF(41);
  @$pb.TagNumber(42)
  set walkingMachine($core.bool v) { $_setBool(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasWalkingMachine() => $_has(41);
  @$pb.TagNumber(42)
  void clearWalkingMachine() => clearField(42);

  @$pb.TagNumber(43)
  $core.bool get summitTrainers => $_getBF(42);
  @$pb.TagNumber(43)
  set summitTrainers($core.bool v) { $_setBool(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasSummitTrainers() => $_has(42);
  @$pb.TagNumber(43)
  void clearSummitTrainers() => clearField(43);

  /// 球类
  @$pb.TagNumber(44)
  $core.bool get bowling => $_getBF(43);
  @$pb.TagNumber(44)
  set bowling($core.bool v) { $_setBool(43, v); }
  @$pb.TagNumber(44)
  $core.bool hasBowling() => $_has(43);
  @$pb.TagNumber(44)
  void clearBowling() => clearField(44);

  @$pb.TagNumber(45)
  $core.bool get tennis => $_getBF(44);
  @$pb.TagNumber(45)
  set tennis($core.bool v) { $_setBool(44, v); }
  @$pb.TagNumber(45)
  $core.bool hasTennis() => $_has(44);
  @$pb.TagNumber(45)
  void clearTennis() => clearField(45);

  @$pb.TagNumber(46)
  $core.bool get tableTennis => $_getBF(45);
  @$pb.TagNumber(46)
  set tableTennis($core.bool v) { $_setBool(45, v); }
  @$pb.TagNumber(46)
  $core.bool hasTableTennis() => $_has(45);
  @$pb.TagNumber(46)
  void clearTableTennis() => clearField(46);

  @$pb.TagNumber(47)
  $core.bool get golf => $_getBF(46);
  @$pb.TagNumber(47)
  set golf($core.bool v) { $_setBool(46, v); }
  @$pb.TagNumber(47)
  $core.bool hasGolf() => $_has(46);
  @$pb.TagNumber(47)
  void clearGolf() => clearField(47);

  @$pb.TagNumber(48)
  $core.bool get basketball => $_getBF(47);
  @$pb.TagNumber(48)
  set basketball($core.bool v) { $_setBool(47, v); }
  @$pb.TagNumber(48)
  $core.bool hasBasketball() => $_has(47);
  @$pb.TagNumber(48)
  void clearBasketball() => clearField(48);

  @$pb.TagNumber(49)
  $core.bool get badminton => $_getBF(48);
  @$pb.TagNumber(49)
  set badminton($core.bool v) { $_setBool(48, v); }
  @$pb.TagNumber(49)
  $core.bool hasBadminton() => $_has(48);
  @$pb.TagNumber(49)
  void clearBadminton() => clearField(49);

  @$pb.TagNumber(50)
  $core.bool get hockey => $_getBF(49);
  @$pb.TagNumber(50)
  set hockey($core.bool v) { $_setBool(49, v); }
  @$pb.TagNumber(50)
  $core.bool hasHockey() => $_has(49);
  @$pb.TagNumber(50)
  void clearHockey() => clearField(50);

  @$pb.TagNumber(51)
  $core.bool get rugby => $_getBF(50);
  @$pb.TagNumber(51)
  set rugby($core.bool v) { $_setBool(50, v); }
  @$pb.TagNumber(51)
  $core.bool hasRugby() => $_has(50);
  @$pb.TagNumber(51)
  void clearRugby() => clearField(51);

  @$pb.TagNumber(52)
  $core.bool get handball => $_getBF(51);
  @$pb.TagNumber(52)
  set handball($core.bool v) { $_setBool(51, v); }
  @$pb.TagNumber(52)
  $core.bool hasHandball() => $_has(51);
  @$pb.TagNumber(52)
  void clearHandball() => clearField(52);

  @$pb.TagNumber(53)
  $core.bool get squash => $_getBF(52);
  @$pb.TagNumber(53)
  set squash($core.bool v) { $_setBool(52, v); }
  @$pb.TagNumber(53)
  $core.bool hasSquash() => $_has(52);
  @$pb.TagNumber(53)
  void clearSquash() => clearField(53);

  @$pb.TagNumber(54)
  $core.bool get baseball => $_getBF(53);
  @$pb.TagNumber(54)
  set baseball($core.bool v) { $_setBool(53, v); }
  @$pb.TagNumber(54)
  $core.bool hasBaseball() => $_has(53);
  @$pb.TagNumber(54)
  void clearBaseball() => clearField(54);

  @$pb.TagNumber(55)
  $core.bool get softball => $_getBF(54);
  @$pb.TagNumber(55)
  set softball($core.bool v) { $_setBool(54, v); }
  @$pb.TagNumber(55)
  $core.bool hasSoftball() => $_has(54);
  @$pb.TagNumber(55)
  void clearSoftball() => clearField(55);

  @$pb.TagNumber(56)
  $core.bool get shuttlecock => $_getBF(55);
  @$pb.TagNumber(56)
  set shuttlecock($core.bool v) { $_setBool(55, v); }
  @$pb.TagNumber(56)
  $core.bool hasShuttlecock() => $_has(55);
  @$pb.TagNumber(56)
  void clearShuttlecock() => clearField(56);

  @$pb.TagNumber(57)
  $core.bool get sepaktakraw => $_getBF(56);
  @$pb.TagNumber(57)
  set sepaktakraw($core.bool v) { $_setBool(56, v); }
  @$pb.TagNumber(57)
  $core.bool hasSepaktakraw() => $_has(56);
  @$pb.TagNumber(57)
  void clearSepaktakraw() => clearField(57);

  /// 休闲运动
  @$pb.TagNumber(58)
  $core.bool get streetDance => $_getBF(57);
  @$pb.TagNumber(58)
  set streetDance($core.bool v) { $_setBool(57, v); }
  @$pb.TagNumber(58)
  $core.bool hasStreetDance() => $_has(57);
  @$pb.TagNumber(58)
  void clearStreetDance() => clearField(58);

  @$pb.TagNumber(59)
  $core.bool get mountainClinbing => $_getBF(58);
  @$pb.TagNumber(59)
  set mountainClinbing($core.bool v) { $_setBool(58, v); }
  @$pb.TagNumber(59)
  $core.bool hasMountainClinbing() => $_has(58);
  @$pb.TagNumber(59)
  void clearMountainClinbing() => clearField(59);

  @$pb.TagNumber(60)
  $core.bool get ropeSkipping => $_getBF(59);
  @$pb.TagNumber(60)
  set ropeSkipping($core.bool v) { $_setBool(59, v); }
  @$pb.TagNumber(60)
  $core.bool hasRopeSkipping() => $_has(59);
  @$pb.TagNumber(60)
  void clearRopeSkipping() => clearField(60);

  @$pb.TagNumber(61)
  $core.bool get climbStairs => $_getBF(60);
  @$pb.TagNumber(61)
  set climbStairs($core.bool v) { $_setBool(60, v); }
  @$pb.TagNumber(61)
  $core.bool hasClimbStairs() => $_has(60);
  @$pb.TagNumber(61)
  void clearClimbStairs() => clearField(61);

  @$pb.TagNumber(62)
  $core.bool get ballet => $_getBF(61);
  @$pb.TagNumber(62)
  set ballet($core.bool v) { $_setBool(61, v); }
  @$pb.TagNumber(62)
  $core.bool hasBallet() => $_has(61);
  @$pb.TagNumber(62)
  void clearBallet() => clearField(62);

  @$pb.TagNumber(63)
  $core.bool get socialDance => $_getBF(62);
  @$pb.TagNumber(63)
  set socialDance($core.bool v) { $_setBool(62, v); }
  @$pb.TagNumber(63)
  $core.bool hasSocialDance() => $_has(62);
  @$pb.TagNumber(63)
  void clearSocialDance() => clearField(63);

  @$pb.TagNumber(64)
  $core.bool get darts => $_getBF(63);
  @$pb.TagNumber(64)
  set darts($core.bool v) { $_setBool(63, v); }
  @$pb.TagNumber(64)
  $core.bool hasDarts() => $_has(63);
  @$pb.TagNumber(64)
  void clearDarts() => clearField(64);

  @$pb.TagNumber(65)
  $core.bool get horsebackRiding => $_getBF(64);
  @$pb.TagNumber(65)
  set horsebackRiding($core.bool v) { $_setBool(64, v); }
  @$pb.TagNumber(65)
  $core.bool hasHorsebackRiding() => $_has(64);
  @$pb.TagNumber(65)
  void clearHorsebackRiding() => clearField(65);

  @$pb.TagNumber(66)
  $core.bool get rollerSkating => $_getBF(65);
  @$pb.TagNumber(66)
  set rollerSkating($core.bool v) { $_setBool(65, v); }
  @$pb.TagNumber(66)
  $core.bool hasRollerSkating() => $_has(65);
  @$pb.TagNumber(66)
  void clearRollerSkating() => clearField(66);

  @$pb.TagNumber(67)
  $core.bool get taiChi => $_getBF(66);
  @$pb.TagNumber(67)
  set taiChi($core.bool v) { $_setBool(66, v); }
  @$pb.TagNumber(67)
  $core.bool hasTaiChi() => $_has(66);
  @$pb.TagNumber(67)
  void clearTaiChi() => clearField(67);

  @$pb.TagNumber(68)
  $core.bool get frisbee => $_getBF(67);
  @$pb.TagNumber(68)
  set frisbee($core.bool v) { $_setBool(67, v); }
  @$pb.TagNumber(68)
  $core.bool hasFrisbee() => $_has(67);
  @$pb.TagNumber(68)
  void clearFrisbee() => clearField(68);

  @$pb.TagNumber(69)
  $core.bool get hulaHoop => $_getBF(68);
  @$pb.TagNumber(69)
  set hulaHoop($core.bool v) { $_setBool(68, v); }
  @$pb.TagNumber(69)
  $core.bool hasHulaHoop() => $_has(68);
  @$pb.TagNumber(69)
  void clearHulaHoop() => clearField(69);

  /// 冰雪运动
  @$pb.TagNumber(70)
  $core.bool get sleigh => $_getBF(69);
  @$pb.TagNumber(70)
  set sleigh($core.bool v) { $_setBool(69, v); }
  @$pb.TagNumber(70)
  $core.bool hasSleigh() => $_has(69);
  @$pb.TagNumber(70)
  void clearSleigh() => clearField(70);

  @$pb.TagNumber(71)
  $core.bool get skating => $_getBF(70);
  @$pb.TagNumber(71)
  set skating($core.bool v) { $_setBool(70, v); }
  @$pb.TagNumber(71)
  $core.bool hasSkating() => $_has(70);
  @$pb.TagNumber(71)
  void clearSkating() => clearField(71);

  @$pb.TagNumber(72)
  $core.bool get bobsleighAndTobogganing => $_getBF(71);
  @$pb.TagNumber(72)
  set bobsleighAndTobogganing($core.bool v) { $_setBool(71, v); }
  @$pb.TagNumber(72)
  $core.bool hasBobsleighAndTobogganing() => $_has(71);
  @$pb.TagNumber(72)
  void clearBobsleighAndTobogganing() => clearField(72);

  @$pb.TagNumber(73)
  $core.bool get curling => $_getBF(72);
  @$pb.TagNumber(73)
  set curling($core.bool v) { $_setBool(72, v); }
  @$pb.TagNumber(73)
  $core.bool hasCurling() => $_has(72);
  @$pb.TagNumber(73)
  void clearCurling() => clearField(73);

  @$pb.TagNumber(74)
  $core.bool get iceHockey => $_getBF(73);
  @$pb.TagNumber(74)
  set iceHockey($core.bool v) { $_setBool(73, v); }
  @$pb.TagNumber(74)
  $core.bool hasIceHockey() => $_has(73);
  @$pb.TagNumber(74)
  void clearIceHockey() => clearField(74);

  /// 水上运动
  @$pb.TagNumber(75)
  $core.bool get surfing => $_getBF(74);
  @$pb.TagNumber(75)
  set surfing($core.bool v) { $_setBool(74, v); }
  @$pb.TagNumber(75)
  $core.bool hasSurfing() => $_has(74);
  @$pb.TagNumber(75)
  void clearSurfing() => clearField(75);

  @$pb.TagNumber(76)
  $core.bool get sailboat => $_getBF(75);
  @$pb.TagNumber(76)
  set sailboat($core.bool v) { $_setBool(75, v); }
  @$pb.TagNumber(76)
  $core.bool hasSailboat() => $_has(75);
  @$pb.TagNumber(76)
  void clearSailboat() => clearField(76);

  @$pb.TagNumber(77)
  $core.bool get sailboard => $_getBF(76);
  @$pb.TagNumber(77)
  set sailboard($core.bool v) { $_setBool(76, v); }
  @$pb.TagNumber(77)
  $core.bool hasSailboard() => $_has(76);
  @$pb.TagNumber(77)
  void clearSailboard() => clearField(77);

  @$pb.TagNumber(78)
  $core.bool get foldboating => $_getBF(77);
  @$pb.TagNumber(78)
  set foldboating($core.bool v) { $_setBool(77, v); }
  @$pb.TagNumber(78)
  $core.bool hasFoldboating() => $_has(77);
  @$pb.TagNumber(78)
  void clearFoldboating() => clearField(78);

  @$pb.TagNumber(79)
  $core.bool get canoeing => $_getBF(78);
  @$pb.TagNumber(79)
  set canoeing($core.bool v) { $_setBool(78, v); }
  @$pb.TagNumber(79)
  $core.bool hasCanoeing() => $_has(78);
  @$pb.TagNumber(79)
  void clearCanoeing() => clearField(79);

  @$pb.TagNumber(80)
  $core.bool get boatRace => $_getBF(79);
  @$pb.TagNumber(80)
  set boatRace($core.bool v) { $_setBool(79, v); }
  @$pb.TagNumber(80)
  $core.bool hasBoatRace() => $_has(79);
  @$pb.TagNumber(80)
  void clearBoatRace() => clearField(80);

  @$pb.TagNumber(81)
  $core.bool get motorboat => $_getBF(80);
  @$pb.TagNumber(81)
  set motorboat($core.bool v) { $_setBool(80, v); }
  @$pb.TagNumber(81)
  $core.bool hasMotorboat() => $_has(80);
  @$pb.TagNumber(81)
  void clearMotorboat() => clearField(81);

  @$pb.TagNumber(82)
  $core.bool get waterPolo => $_getBF(81);
  @$pb.TagNumber(82)
  set waterPolo($core.bool v) { $_setBool(81, v); }
  @$pb.TagNumber(82)
  $core.bool hasWaterPolo() => $_has(81);
  @$pb.TagNumber(82)
  void clearWaterPolo() => clearField(82);

  /// 极限运动
  @$pb.TagNumber(83)
  $core.bool get slidingPlate => $_getBF(82);
  @$pb.TagNumber(83)
  set slidingPlate($core.bool v) { $_setBool(82, v); }
  @$pb.TagNumber(83)
  $core.bool hasSlidingPlate() => $_has(82);
  @$pb.TagNumber(83)
  void clearSlidingPlate() => clearField(83);

  @$pb.TagNumber(84)
  $core.bool get rockClimbing => $_getBF(83);
  @$pb.TagNumber(84)
  set rockClimbing($core.bool v) { $_setBool(83, v); }
  @$pb.TagNumber(84)
  $core.bool hasRockClimbing() => $_has(83);
  @$pb.TagNumber(84)
  void clearRockClimbing() => clearField(84);

  @$pb.TagNumber(85)
  $core.bool get bungeeJumping => $_getBF(84);
  @$pb.TagNumber(85)
  set bungeeJumping($core.bool v) { $_setBool(84, v); }
  @$pb.TagNumber(85)
  $core.bool hasBungeeJumping() => $_has(84);
  @$pb.TagNumber(85)
  void clearBungeeJumping() => clearField(85);

  @$pb.TagNumber(86)
  $core.bool get parkour => $_getBF(85);
  @$pb.TagNumber(86)
  set parkour($core.bool v) { $_setBool(85, v); }
  @$pb.TagNumber(86)
  $core.bool hasParkour() => $_has(85);
  @$pb.TagNumber(86)
  void clearParkour() => clearField(86);

  @$pb.TagNumber(87)
  $core.bool get other => $_getBF(86);
  @$pb.TagNumber(87)
  set other($core.bool v) { $_setBool(86, v); }
  @$pb.TagNumber(87)
  $core.bool hasOther() => $_has(86);
  @$pb.TagNumber(87)
  void clearOther() => clearField(87);

  /// 新增运动
  @$pb.TagNumber(88)
  $core.bool get spinning => $_getBF(87);
  @$pb.TagNumber(88)
  set spinning($core.bool v) { $_setBool(87, v); }
  @$pb.TagNumber(88)
  $core.bool hasSpinning() => $_has(87);
  @$pb.TagNumber(88)
  void clearSpinning() => clearField(88);

  @$pb.TagNumber(89)
  $core.bool get martialArts => $_getBF(88);
  @$pb.TagNumber(89)
  set martialArts($core.bool v) { $_setBool(88, v); }
  @$pb.TagNumber(89)
  $core.bool hasMartialArts() => $_has(88);
  @$pb.TagNumber(89)
  void clearMartialArts() => clearField(89);

  @$pb.TagNumber(90)
  $core.bool get taekwondo => $_getBF(89);
  @$pb.TagNumber(90)
  set taekwondo($core.bool v) { $_setBool(89, v); }
  @$pb.TagNumber(90)
  $core.bool hasTaekwondo() => $_has(89);
  @$pb.TagNumber(90)
  void clearTaekwondo() => clearField(90);

  @$pb.TagNumber(91)
  $core.bool get karate => $_getBF(90);
  @$pb.TagNumber(91)
  set karate($core.bool v) { $_setBool(90, v); }
  @$pb.TagNumber(91)
  $core.bool hasKarate() => $_has(90);
  @$pb.TagNumber(91)
  void clearKarate() => clearField(91);

  @$pb.TagNumber(92)
  $core.bool get gymnastics => $_getBF(91);
  @$pb.TagNumber(92)
  set gymnastics($core.bool v) { $_setBool(91, v); }
  @$pb.TagNumber(92)
  $core.bool hasGymnastics() => $_has(91);
  @$pb.TagNumber(92)
  void clearGymnastics() => clearField(92);

  @$pb.TagNumber(93)
  $core.bool get padel => $_getBF(92);
  @$pb.TagNumber(93)
  set padel($core.bool v) { $_setBool(92, v); }
  @$pb.TagNumber(93)
  $core.bool hasPadel() => $_has(92);
  @$pb.TagNumber(93)
  void clearPadel() => clearField(93);

  @$pb.TagNumber(94)
  $core.bool get pickleball => $_getBF(93);
  @$pb.TagNumber(94)
  set pickleball($core.bool v) { $_setBool(93, v); }
  @$pb.TagNumber(94)
  $core.bool hasPickleball() => $_has(93);
  @$pb.TagNumber(94)
  void clearPickleball() => clearField(94);

  @$pb.TagNumber(95)
  $core.bool get snowboarding => $_getBF(94);
  @$pb.TagNumber(95)
  set snowboarding($core.bool v) { $_setBool(94, v); }
  @$pb.TagNumber(95)
  $core.bool hasSnowboarding() => $_has(94);
  @$pb.TagNumber(95)
  void clearSnowboarding() => clearField(95);

  @$pb.TagNumber(96)
  $core.bool get skiing => $_getBF(95);
  @$pb.TagNumber(96)
  set skiing($core.bool v) { $_setBool(95, v); }
  @$pb.TagNumber(96)
  $core.bool hasSkiing() => $_has(95);
  @$pb.TagNumber(96)
  void clearSkiing() => clearField(96);

  @$pb.TagNumber(97)
  $core.bool get paddling => $_getBF(96);
  @$pb.TagNumber(97)
  set paddling($core.bool v) { $_setBool(96, v); }
  @$pb.TagNumber(97)
  $core.bool hasPaddling() => $_has(96);
  @$pb.TagNumber(97)
  void clearPaddling() => clearField(97);

  @$pb.TagNumber(98)
  $core.bool get bmx => $_getBF(97);
  @$pb.TagNumber(98)
  set bmx($core.bool v) { $_setBool(97, v); }
  @$pb.TagNumber(98)
  $core.bool hasBmx() => $_has(97);
  @$pb.TagNumber(98)
  void clearBmx() => clearField(98);

  @$pb.TagNumber(99)
  $core.bool get fencing => $_getBF(98);
  @$pb.TagNumber(99)
  set fencing($core.bool v) { $_setBool(98, v); }
  @$pb.TagNumber(99)
  $core.bool hasFencing() => $_has(98);
  @$pb.TagNumber(99)
  void clearFencing() => clearField(99);

  @$pb.TagNumber(100)
  $core.bool get billiards => $_getBF(99);
  @$pb.TagNumber(100)
  set billiards($core.bool v) { $_setBool(99, v); }
  @$pb.TagNumber(100)
  $core.bool hasBilliards() => $_has(99);
  @$pb.TagNumber(100)
  void clearBilliards() => clearField(100);

  @$pb.TagNumber(101)
  $core.bool get beachSoccer => $_getBF(100);
  @$pb.TagNumber(101)
  set beachSoccer($core.bool v) { $_setBool(100, v); }
  @$pb.TagNumber(101)
  $core.bool hasBeachSoccer() => $_has(100);
  @$pb.TagNumber(101)
  void clearBeachSoccer() => clearField(101);

  @$pb.TagNumber(102)
  $core.bool get beachVolleyball => $_getBF(101);
  @$pb.TagNumber(102)
  set beachVolleyball($core.bool v) { $_setBool(101, v); }
  @$pb.TagNumber(102)
  $core.bool hasBeachVolleyball() => $_has(101);
  @$pb.TagNumber(102)
  void clearBeachVolleyball() => clearField(102);

  @$pb.TagNumber(103)
  $core.bool get dodgeball => $_getBF(102);
  @$pb.TagNumber(103)
  set dodgeball($core.bool v) { $_setBool(102, v); }
  @$pb.TagNumber(103)
  $core.bool hasDodgeball() => $_has(102);
  @$pb.TagNumber(103)
  void clearDodgeball() => clearField(103);

  @$pb.TagNumber(104)
  $core.bool get jazz => $_getBF(103);
  @$pb.TagNumber(104)
  set jazz($core.bool v) { $_setBool(103, v); }
  @$pb.TagNumber(104)
  $core.bool hasJazz() => $_has(103);
  @$pb.TagNumber(104)
  void clearJazz() => clearField(104);

  @$pb.TagNumber(105)
  $core.bool get latin => $_getBF(104);
  @$pb.TagNumber(105)
  set latin($core.bool v) { $_setBool(104, v); }
  @$pb.TagNumber(105)
  $core.bool hasLatin() => $_has(104);
  @$pb.TagNumber(105)
  void clearLatin() => clearField(105);

  @$pb.TagNumber(106)
  $core.bool get squareDance => $_getBF(105);
  @$pb.TagNumber(106)
  set squareDance($core.bool v) { $_setBool(105, v); }
  @$pb.TagNumber(106)
  $core.bool hasSquareDance() => $_has(105);
  @$pb.TagNumber(106)
  void clearSquareDance() => clearField(106);

  @$pb.TagNumber(107)
  $core.bool get volleyball => $_getBF(106);
  @$pb.TagNumber(107)
  set volleyball($core.bool v) { $_setBool(106, v); }
  @$pb.TagNumber(107)
  $core.bool hasVolleyball() => $_has(106);
  @$pb.TagNumber(107)
  void clearVolleyball() => clearField(107);

  @$pb.TagNumber(108)
  $core.bool get kiteFlying => $_getBF(107);
  @$pb.TagNumber(108)
  set kiteFlying($core.bool v) { $_setBool(107, v); }
  @$pb.TagNumber(108)
  $core.bool hasKiteFlying() => $_has(107);
  @$pb.TagNumber(108)
  void clearKiteFlying() => clearField(108);

  @$pb.TagNumber(109)
  $core.bool get fishing => $_getBF(108);
  @$pb.TagNumber(109)
  set fishing($core.bool v) { $_setBool(108, v); }
  @$pb.TagNumber(109)
  $core.bool hasFishing() => $_has(108);
  @$pb.TagNumber(109)
  void clearFishing() => clearField(109);

  @$pb.TagNumber(110)
  $core.bool get archery => $_getBF(109);
  @$pb.TagNumber(110)
  set archery($core.bool v) { $_setBool(109, v); }
  @$pb.TagNumber(110)
  $core.bool hasArchery() => $_has(109);
  @$pb.TagNumber(110)
  void clearArchery() => clearField(110);

  @$pb.TagNumber(111)
  $core.bool get shooting => $_getBF(110);
  @$pb.TagNumber(111)
  set shooting($core.bool v) { $_setBool(110, v); }
  @$pb.TagNumber(111)
  $core.bool hasShooting() => $_has(110);
  @$pb.TagNumber(111)
  void clearShooting() => clearField(111);

  @$pb.TagNumber(112)
  $core.bool get whiteWaterRafting => $_getBF(111);
  @$pb.TagNumber(112)
  set whiteWaterRafting($core.bool v) { $_setBool(111, v); }
  @$pb.TagNumber(112)
  $core.bool hasWhiteWaterRafting() => $_has(111);
  @$pb.TagNumber(112)
  void clearWhiteWaterRafting() => clearField(112);

  @$pb.TagNumber(113)
  $core.bool get alpineSkiing => $_getBF(112);
  @$pb.TagNumber(113)
  set alpineSkiing($core.bool v) { $_setBool(112, v); }
  @$pb.TagNumber(113)
  $core.bool hasAlpineSkiing() => $_has(112);
  @$pb.TagNumber(113)
  void clearAlpineSkiing() => clearField(113);

  @$pb.TagNumber(114)
  $core.bool get crossCountrySkiing => $_getBF(113);
  @$pb.TagNumber(114)
  set crossCountrySkiing($core.bool v) { $_setBool(113, v); }
  @$pb.TagNumber(114)
  $core.bool hasCrossCountrySkiing() => $_has(113);
  @$pb.TagNumber(114)
  void clearCrossCountrySkiing() => clearField(114);

  @$pb.TagNumber(115)
  $core.bool get biathon => $_getBF(114);
  @$pb.TagNumber(115)
  set biathon($core.bool v) { $_setBool(114, v); }
  @$pb.TagNumber(115)
  $core.bool hasBiathon() => $_has(114);
  @$pb.TagNumber(115)
  void clearBiathon() => clearField(115);

  @$pb.TagNumber(116)
  $core.bool get dragonBoatRacing => $_getBF(115);
  @$pb.TagNumber(116)
  set dragonBoatRacing($core.bool v) { $_setBool(115, v); }
  @$pb.TagNumber(116)
  $core.bool hasDragonBoatRacing() => $_has(115);
  @$pb.TagNumber(116)
  void clearDragonBoatRacing() => clearField(116);

  @$pb.TagNumber(117)
  $core.bool get racing => $_getBF(116);
  @$pb.TagNumber(117)
  set racing($core.bool v) { $_setBool(116, v); }
  @$pb.TagNumber(117)
  $core.bool hasRacing() => $_has(116);
  @$pb.TagNumber(117)
  void clearRacing() => clearField(117);
}

/// 设备运动排列顺序
class protocol_exercise_sport_mode_sort extends $pb.GeneratedMessage {
  factory protocol_exercise_sport_mode_sort({
    operate_type? operate,
    $core.int? itemsLen,
    $core.Iterable<sport_type>? sportItems,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (itemsLen != null) {
      $result.itemsLen = itemsLen;
    }
    if (sportItems != null) {
      $result.sportItems.addAll(sportItems);
    }
    return $result;
  }
  protocol_exercise_sport_mode_sort._() : super();
  factory protocol_exercise_sport_mode_sort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_sport_mode_sort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_sport_mode_sort', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'itemsLen', $pb.PbFieldType.OU3)
    ..pc<sport_type>(3, _omitFieldNames ? '' : 'sportItems', $pb.PbFieldType.KE, valueOf: sport_type.valueOf, enumValues: sport_type.values, defaultEnumValue: sport_type.ORUN)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_sport_mode_sort clone() => protocol_exercise_sport_mode_sort()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_sport_mode_sort copyWith(void Function(protocol_exercise_sport_mode_sort) updates) => super.copyWith((message) => updates(message as protocol_exercise_sport_mode_sort)) as protocol_exercise_sport_mode_sort;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sport_mode_sort create() => protocol_exercise_sport_mode_sort._();
  protocol_exercise_sport_mode_sort createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_sport_mode_sort> createRepeated() => $pb.PbList<protocol_exercise_sport_mode_sort>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sport_mode_sort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_sport_mode_sort>(create);
  static protocol_exercise_sport_mode_sort? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get itemsLen => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemsLen($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemsLen() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemsLen() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<sport_type> get sportItems => $_getList(2);
}

class protocol_exercise_sport_mode_sort_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_exercise_sport_mode_sort_inquire_reply({
    operate_type? operate,
    $core.int? minShowNum,
    $core.int? maxShowNum,
    $core.int? allNum,
    $core.int? itemsLen,
    $core.Iterable<sport_type>? sportItems,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (minShowNum != null) {
      $result.minShowNum = minShowNum;
    }
    if (maxShowNum != null) {
      $result.maxShowNum = maxShowNum;
    }
    if (allNum != null) {
      $result.allNum = allNum;
    }
    if (itemsLen != null) {
      $result.itemsLen = itemsLen;
    }
    if (sportItems != null) {
      $result.sportItems.addAll(sportItems);
    }
    return $result;
  }
  protocol_exercise_sport_mode_sort_inquire_reply._() : super();
  factory protocol_exercise_sport_mode_sort_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_sport_mode_sort_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_sport_mode_sort_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'minShowNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxShowNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'allNum', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'itemsLen', $pb.PbFieldType.OU3)
    ..pc<sport_type>(6, _omitFieldNames ? '' : 'sportItems', $pb.PbFieldType.KE, valueOf: sport_type.valueOf, enumValues: sport_type.values, defaultEnumValue: sport_type.ORUN)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_sport_mode_sort_inquire_reply clone() => protocol_exercise_sport_mode_sort_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_sport_mode_sort_inquire_reply copyWith(void Function(protocol_exercise_sport_mode_sort_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_exercise_sport_mode_sort_inquire_reply)) as protocol_exercise_sport_mode_sort_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sport_mode_sort_inquire_reply create() => protocol_exercise_sport_mode_sort_inquire_reply._();
  protocol_exercise_sport_mode_sort_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_sport_mode_sort_inquire_reply> createRepeated() => $pb.PbList<protocol_exercise_sport_mode_sort_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sport_mode_sort_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_sport_mode_sort_inquire_reply>(create);
  static protocol_exercise_sport_mode_sort_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get minShowNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set minShowNum($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinShowNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinShowNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxShowNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxShowNum($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxShowNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxShowNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get allNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set allNum($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAllNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get itemsLen => $_getIZ(4);
  @$pb.TagNumber(5)
  set itemsLen($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasItemsLen() => $_has(4);
  @$pb.TagNumber(5)
  void clearItemsLen() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<sport_type> get sportItems => $_getList(5);
}

/// 运动中子项数据
class protocol_exercise_sporting_param_sort extends $pb.GeneratedMessage {
  factory protocol_exercise_sporting_param_sort({
    operate_type? operate,
    $core.int? sportType,
    $core.int? itemsLen,
    $core.List<$core.int>? items,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (sportType != null) {
      $result.sportType = sportType;
    }
    if (itemsLen != null) {
      $result.itemsLen = itemsLen;
    }
    if (items != null) {
      $result.items = items;
    }
    return $result;
  }
  protocol_exercise_sporting_param_sort._() : super();
  factory protocol_exercise_sporting_param_sort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_sporting_param_sort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_sporting_param_sort', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sportType', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'itemsLen', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_sporting_param_sort clone() => protocol_exercise_sporting_param_sort()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_sporting_param_sort copyWith(void Function(protocol_exercise_sporting_param_sort) updates) => super.copyWith((message) => updates(message as protocol_exercise_sporting_param_sort)) as protocol_exercise_sporting_param_sort;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sporting_param_sort create() => protocol_exercise_sporting_param_sort._();
  protocol_exercise_sporting_param_sort createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_sporting_param_sort> createRepeated() => $pb.PbList<protocol_exercise_sporting_param_sort>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sporting_param_sort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_sporting_param_sort>(create);
  static protocol_exercise_sporting_param_sort? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sportType => $_getIZ(1);
  @$pb.TagNumber(2)
  set sportType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSportType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSportType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemsLen => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemsLen($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemsLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemsLen() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get items => $_getN(3);
  @$pb.TagNumber(4)
  set items($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItems() => $_has(3);
  @$pb.TagNumber(4)
  void clearItems() => clearField(4);
}

class protocol_exercise_sporting_param_sort_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_exercise_sporting_param_sort_inquire_reply({
    operate_type? operate,
    sport_type? sportType,
    $core.int? itemsLen,
    $core.List<$core.int>? items,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (sportType != null) {
      $result.sportType = sportType;
    }
    if (itemsLen != null) {
      $result.itemsLen = itemsLen;
    }
    if (items != null) {
      $result.items = items;
    }
    return $result;
  }
  protocol_exercise_sporting_param_sort_inquire_reply._() : super();
  factory protocol_exercise_sporting_param_sort_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_sporting_param_sort_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_sporting_param_sort_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<sport_type>(2, _omitFieldNames ? '' : 'sportType', $pb.PbFieldType.OE, defaultOrMaker: sport_type.ORUN, valueOf: sport_type.valueOf, enumValues: sport_type.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'itemsLen', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_sporting_param_sort_inquire_reply clone() => protocol_exercise_sporting_param_sort_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_sporting_param_sort_inquire_reply copyWith(void Function(protocol_exercise_sporting_param_sort_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_exercise_sporting_param_sort_inquire_reply)) as protocol_exercise_sporting_param_sort_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sporting_param_sort_inquire_reply create() => protocol_exercise_sporting_param_sort_inquire_reply._();
  protocol_exercise_sporting_param_sort_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_sporting_param_sort_inquire_reply> createRepeated() => $pb.PbList<protocol_exercise_sporting_param_sort_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_sporting_param_sort_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_sporting_param_sort_inquire_reply>(create);
  static protocol_exercise_sporting_param_sort_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  sport_type get sportType => $_getN(1);
  @$pb.TagNumber(2)
  set sportType(sport_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSportType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSportType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemsLen => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemsLen($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemsLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemsLen() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get items => $_getN(3);
  @$pb.TagNumber(4)
  set items($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItems() => $_has(3);
  @$pb.TagNumber(4)
  void clearItems() => clearField(4);
}

/// 运动自识别
class protocol_exercise_intelligent_recognition extends $pb.GeneratedMessage {
  factory protocol_exercise_intelligent_recognition({
    operate_type? operate,
    $core.bool? walkTypeSwitch,
    $core.bool? runTypeSwitch,
    $core.bool? bicycleTypeSwitch,
    $core.bool? rowingTypeSwitch,
    $core.bool? swimTypeSwitch,
    $core.bool? sportAutoPauseSwitch,
    $core.bool? sportAutoEndSwitch,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (walkTypeSwitch != null) {
      $result.walkTypeSwitch = walkTypeSwitch;
    }
    if (runTypeSwitch != null) {
      $result.runTypeSwitch = runTypeSwitch;
    }
    if (bicycleTypeSwitch != null) {
      $result.bicycleTypeSwitch = bicycleTypeSwitch;
    }
    if (rowingTypeSwitch != null) {
      $result.rowingTypeSwitch = rowingTypeSwitch;
    }
    if (swimTypeSwitch != null) {
      $result.swimTypeSwitch = swimTypeSwitch;
    }
    if (sportAutoPauseSwitch != null) {
      $result.sportAutoPauseSwitch = sportAutoPauseSwitch;
    }
    if (sportAutoEndSwitch != null) {
      $result.sportAutoEndSwitch = sportAutoEndSwitch;
    }
    return $result;
  }
  protocol_exercise_intelligent_recognition._() : super();
  factory protocol_exercise_intelligent_recognition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_intelligent_recognition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_intelligent_recognition', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'walkTypeSwitch')
    ..aOB(3, _omitFieldNames ? '' : 'runTypeSwitch')
    ..aOB(4, _omitFieldNames ? '' : 'bicycleTypeSwitch')
    ..aOB(5, _omitFieldNames ? '' : 'rowingTypeSwitch')
    ..aOB(6, _omitFieldNames ? '' : 'swimTypeSwitch')
    ..aOB(7, _omitFieldNames ? '' : 'sportAutoPauseSwitch')
    ..aOB(8, _omitFieldNames ? '' : 'sportAutoEndSwitch')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_intelligent_recognition clone() => protocol_exercise_intelligent_recognition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_intelligent_recognition copyWith(void Function(protocol_exercise_intelligent_recognition) updates) => super.copyWith((message) => updates(message as protocol_exercise_intelligent_recognition)) as protocol_exercise_intelligent_recognition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_intelligent_recognition create() => protocol_exercise_intelligent_recognition._();
  protocol_exercise_intelligent_recognition createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_intelligent_recognition> createRepeated() => $pb.PbList<protocol_exercise_intelligent_recognition>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_intelligent_recognition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_intelligent_recognition>(create);
  static protocol_exercise_intelligent_recognition? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get walkTypeSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set walkTypeSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalkTypeSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalkTypeSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get runTypeSwitch => $_getBF(2);
  @$pb.TagNumber(3)
  set runTypeSwitch($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRunTypeSwitch() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunTypeSwitch() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get bicycleTypeSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set bicycleTypeSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBicycleTypeSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearBicycleTypeSwitch() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get rowingTypeSwitch => $_getBF(4);
  @$pb.TagNumber(5)
  set rowingTypeSwitch($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRowingTypeSwitch() => $_has(4);
  @$pb.TagNumber(5)
  void clearRowingTypeSwitch() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get swimTypeSwitch => $_getBF(5);
  @$pb.TagNumber(6)
  set swimTypeSwitch($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSwimTypeSwitch() => $_has(5);
  @$pb.TagNumber(6)
  void clearSwimTypeSwitch() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get sportAutoPauseSwitch => $_getBF(6);
  @$pb.TagNumber(7)
  set sportAutoPauseSwitch($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSportAutoPauseSwitch() => $_has(6);
  @$pb.TagNumber(7)
  void clearSportAutoPauseSwitch() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get sportAutoEndSwitch => $_getBF(7);
  @$pb.TagNumber(8)
  set sportAutoEndSwitch($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSportAutoEndSwitch() => $_has(7);
  @$pb.TagNumber(8)
  void clearSportAutoEndSwitch() => clearField(8);
}

class protocol_exercise_intelligent_recognition_inquire_reply extends $pb.GeneratedMessage {
  factory protocol_exercise_intelligent_recognition_inquire_reply({
    operate_type? operate,
    $core.bool? walkTypeSwitch,
    $core.bool? runTypeSwitch,
    $core.bool? bicycleTypeSwitch,
    $core.bool? rowingTypeSwitch,
    $core.bool? swimTypeSwitch,
    $core.bool? sportAutoPauseSwitch,
    $core.bool? sportAutoEndSwitch,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (walkTypeSwitch != null) {
      $result.walkTypeSwitch = walkTypeSwitch;
    }
    if (runTypeSwitch != null) {
      $result.runTypeSwitch = runTypeSwitch;
    }
    if (bicycleTypeSwitch != null) {
      $result.bicycleTypeSwitch = bicycleTypeSwitch;
    }
    if (rowingTypeSwitch != null) {
      $result.rowingTypeSwitch = rowingTypeSwitch;
    }
    if (swimTypeSwitch != null) {
      $result.swimTypeSwitch = swimTypeSwitch;
    }
    if (sportAutoPauseSwitch != null) {
      $result.sportAutoPauseSwitch = sportAutoPauseSwitch;
    }
    if (sportAutoEndSwitch != null) {
      $result.sportAutoEndSwitch = sportAutoEndSwitch;
    }
    return $result;
  }
  protocol_exercise_intelligent_recognition_inquire_reply._() : super();
  factory protocol_exercise_intelligent_recognition_inquire_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_intelligent_recognition_inquire_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_intelligent_recognition_inquire_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..aOB(2, _omitFieldNames ? '' : 'walkTypeSwitch')
    ..aOB(3, _omitFieldNames ? '' : 'runTypeSwitch')
    ..aOB(4, _omitFieldNames ? '' : 'bicycleTypeSwitch')
    ..aOB(5, _omitFieldNames ? '' : 'rowingTypeSwitch')
    ..aOB(6, _omitFieldNames ? '' : 'swimTypeSwitch')
    ..aOB(7, _omitFieldNames ? '' : 'sportAutoPauseSwitch')
    ..aOB(8, _omitFieldNames ? '' : 'sportAutoEndSwitch')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_intelligent_recognition_inquire_reply clone() => protocol_exercise_intelligent_recognition_inquire_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_intelligent_recognition_inquire_reply copyWith(void Function(protocol_exercise_intelligent_recognition_inquire_reply) updates) => super.copyWith((message) => updates(message as protocol_exercise_intelligent_recognition_inquire_reply)) as protocol_exercise_intelligent_recognition_inquire_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_intelligent_recognition_inquire_reply create() => protocol_exercise_intelligent_recognition_inquire_reply._();
  protocol_exercise_intelligent_recognition_inquire_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_intelligent_recognition_inquire_reply> createRepeated() => $pb.PbList<protocol_exercise_intelligent_recognition_inquire_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_intelligent_recognition_inquire_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_intelligent_recognition_inquire_reply>(create);
  static protocol_exercise_intelligent_recognition_inquire_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get walkTypeSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set walkTypeSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalkTypeSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalkTypeSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get runTypeSwitch => $_getBF(2);
  @$pb.TagNumber(3)
  set runTypeSwitch($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRunTypeSwitch() => $_has(2);
  @$pb.TagNumber(3)
  void clearRunTypeSwitch() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get bicycleTypeSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set bicycleTypeSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBicycleTypeSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearBicycleTypeSwitch() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get rowingTypeSwitch => $_getBF(4);
  @$pb.TagNumber(5)
  set rowingTypeSwitch($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRowingTypeSwitch() => $_has(4);
  @$pb.TagNumber(5)
  void clearRowingTypeSwitch() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get swimTypeSwitch => $_getBF(5);
  @$pb.TagNumber(6)
  set swimTypeSwitch($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSwimTypeSwitch() => $_has(5);
  @$pb.TagNumber(6)
  void clearSwimTypeSwitch() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get sportAutoPauseSwitch => $_getBF(6);
  @$pb.TagNumber(7)
  set sportAutoPauseSwitch($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSportAutoPauseSwitch() => $_has(6);
  @$pb.TagNumber(7)
  void clearSportAutoPauseSwitch() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get sportAutoEndSwitch => $_getBF(7);
  @$pb.TagNumber(8)
  set sportAutoEndSwitch($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSportAutoEndSwitch() => $_has(7);
  @$pb.TagNumber(8)
  void clearSportAutoEndSwitch() => clearField(8);
}

/// 心率区间
class protocol_exercise_heart_rate_zone extends $pb.GeneratedMessage {
  factory protocol_exercise_heart_rate_zone({
    operate_type? operate,
    $core.int? zone1,
    $core.int? zone2,
    $core.int? zone3,
    $core.int? zone4,
    $core.int? zone5,
    $core.int? zone6,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (zone1 != null) {
      $result.zone1 = zone1;
    }
    if (zone2 != null) {
      $result.zone2 = zone2;
    }
    if (zone3 != null) {
      $result.zone3 = zone3;
    }
    if (zone4 != null) {
      $result.zone4 = zone4;
    }
    if (zone5 != null) {
      $result.zone5 = zone5;
    }
    if (zone6 != null) {
      $result.zone6 = zone6;
    }
    return $result;
  }
  protocol_exercise_heart_rate_zone._() : super();
  factory protocol_exercise_heart_rate_zone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_heart_rate_zone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_heart_rate_zone', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'zone1', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'zone2', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'zone3', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'zone4', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'zone5', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'zone6', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_heart_rate_zone clone() => protocol_exercise_heart_rate_zone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_heart_rate_zone copyWith(void Function(protocol_exercise_heart_rate_zone) updates) => super.copyWith((message) => updates(message as protocol_exercise_heart_rate_zone)) as protocol_exercise_heart_rate_zone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_heart_rate_zone create() => protocol_exercise_heart_rate_zone._();
  protocol_exercise_heart_rate_zone createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_heart_rate_zone> createRepeated() => $pb.PbList<protocol_exercise_heart_rate_zone>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_heart_rate_zone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_heart_rate_zone>(create);
  static protocol_exercise_heart_rate_zone? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get zone1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set zone1($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasZone1() => $_has(1);
  @$pb.TagNumber(2)
  void clearZone1() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get zone2 => $_getIZ(2);
  @$pb.TagNumber(3)
  set zone2($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZone2() => $_has(2);
  @$pb.TagNumber(3)
  void clearZone2() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get zone3 => $_getIZ(3);
  @$pb.TagNumber(4)
  set zone3($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasZone3() => $_has(3);
  @$pb.TagNumber(4)
  void clearZone3() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get zone4 => $_getIZ(4);
  @$pb.TagNumber(5)
  set zone4($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasZone4() => $_has(4);
  @$pb.TagNumber(5)
  void clearZone4() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get zone5 => $_getIZ(5);
  @$pb.TagNumber(6)
  set zone5($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasZone5() => $_has(5);
  @$pb.TagNumber(6)
  void clearZone5() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get zone6 => $_getIZ(6);
  @$pb.TagNumber(7)
  set zone6($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasZone6() => $_has(6);
  @$pb.TagNumber(7)
  void clearZone6() => clearField(7);
}

class protocol_exercise_gps_info extends $pb.GeneratedMessage {
  factory protocol_exercise_gps_info({
    operate_type? operate,
    gps_operate_type? gpsOperate,
    $core.int? funcTable,
    $core.int? sportType,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (gpsOperate != null) {
      $result.gpsOperate = gpsOperate;
    }
    if (funcTable != null) {
      $result.funcTable = funcTable;
    }
    if (sportType != null) {
      $result.sportType = sportType;
    }
    return $result;
  }
  protocol_exercise_gps_info._() : super();
  factory protocol_exercise_gps_info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_gps_info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_gps_info', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..e<gps_operate_type>(2, _omitFieldNames ? '' : 'gpsOperate', $pb.PbFieldType.OE, defaultOrMaker: gps_operate_type.GPS_INFO_REQUEST, valueOf: gps_operate_type.valueOf, enumValues: gps_operate_type.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'funcTable', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'sportType', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_gps_info clone() => protocol_exercise_gps_info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_gps_info copyWith(void Function(protocol_exercise_gps_info) updates) => super.copyWith((message) => updates(message as protocol_exercise_gps_info)) as protocol_exercise_gps_info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_gps_info create() => protocol_exercise_gps_info._();
  protocol_exercise_gps_info createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_gps_info> createRepeated() => $pb.PbList<protocol_exercise_gps_info>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_gps_info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_gps_info>(create);
  static protocol_exercise_gps_info? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  gps_operate_type get gpsOperate => $_getN(1);
  @$pb.TagNumber(2)
  set gpsOperate(gps_operate_type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGpsOperate() => $_has(1);
  @$pb.TagNumber(2)
  void clearGpsOperate() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get funcTable => $_getIZ(2);
  @$pb.TagNumber(3)
  set funcTable($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFuncTable() => $_has(2);
  @$pb.TagNumber(3)
  void clearFuncTable() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sportType => $_getIZ(3);
  @$pb.TagNumber(4)
  set sportType($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSportType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSportType() => clearField(4);
}

class protocol_exercise_gps_info_reply extends $pb.GeneratedMessage {
  factory protocol_exercise_gps_info_reply({
    operate_type? operate,
    $core.int? rmcLatitude,
    $core.int? rmcLongitude,
    $core.int? gsaLocationType,
    $core.int? gsaPdop,
  }) {
    final $result = create();
    if (operate != null) {
      $result.operate = operate;
    }
    if (rmcLatitude != null) {
      $result.rmcLatitude = rmcLatitude;
    }
    if (rmcLongitude != null) {
      $result.rmcLongitude = rmcLongitude;
    }
    if (gsaLocationType != null) {
      $result.gsaLocationType = gsaLocationType;
    }
    if (gsaPdop != null) {
      $result.gsaPdop = gsaPdop;
    }
    return $result;
  }
  protocol_exercise_gps_info_reply._() : super();
  factory protocol_exercise_gps_info_reply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory protocol_exercise_gps_info_reply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'protocol_exercise_gps_info_reply', createEmptyInstance: create)
    ..e<operate_type>(1, _omitFieldNames ? '' : 'operate', $pb.PbFieldType.OE, defaultOrMaker: operate_type.INVALID, valueOf: operate_type.valueOf, enumValues: operate_type.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rmcLatitude', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rmcLongitude', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'gsaLocationType', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'gsaPdop', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  protocol_exercise_gps_info_reply clone() => protocol_exercise_gps_info_reply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  protocol_exercise_gps_info_reply copyWith(void Function(protocol_exercise_gps_info_reply) updates) => super.copyWith((message) => updates(message as protocol_exercise_gps_info_reply)) as protocol_exercise_gps_info_reply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static protocol_exercise_gps_info_reply create() => protocol_exercise_gps_info_reply._();
  protocol_exercise_gps_info_reply createEmptyInstance() => create();
  static $pb.PbList<protocol_exercise_gps_info_reply> createRepeated() => $pb.PbList<protocol_exercise_gps_info_reply>();
  @$core.pragma('dart2js:noInline')
  static protocol_exercise_gps_info_reply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<protocol_exercise_gps_info_reply>(create);
  static protocol_exercise_gps_info_reply? _defaultInstance;

  @$pb.TagNumber(1)
  operate_type get operate => $_getN(0);
  @$pb.TagNumber(1)
  set operate(operate_type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperate() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get rmcLatitude => $_getIZ(1);
  @$pb.TagNumber(2)
  set rmcLatitude($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRmcLatitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearRmcLatitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rmcLongitude => $_getIZ(2);
  @$pb.TagNumber(3)
  set rmcLongitude($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRmcLongitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearRmcLongitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get gsaLocationType => $_getIZ(3);
  @$pb.TagNumber(4)
  set gsaLocationType($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGsaLocationType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGsaLocationType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get gsaPdop => $_getIZ(4);
  @$pb.TagNumber(5)
  set gsaPdop($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGsaPdop() => $_has(4);
  @$pb.TagNumber(5)
  void clearGsaPdop() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
