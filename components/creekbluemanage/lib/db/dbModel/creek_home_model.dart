
import 'dart:convert';


import 'creek_hrv_model.dart';
import 'creek_sleep_model.dart';
import 'creek_spo_model.dart';
import 'creek_sport_model.dart';
import 'creek_activity_model.dart';
import 'creek_goals_model.dart';
import 'creek_heart_rate_model.dart';
import 'creek_noise_model.dart';
import 'creek_stress_model.dart';


///新首页model
class CreekHomeModel{
  ///目标
  CreekGoalsModel? goalsModel;
  ///运动
  CreekSportWorkDayModel? creekSportWorkDayModel;
  ///心率
  CreekHeartRateModel? creekHeartRateModel;
  ///活动
  CreekActivityModel? creekActivityModel;
  ///压力
  CreekStressModel? creekStressModel;
  ///噪音
  CreekNoiseModel? creekNoiseModel;
  ///血氧
  CreekOxygenModel? creekOxygenModel;
  ///睡眠
  CreekSleepTotalModel? creekSleepTotalModel;
  ///hrv
  CreekHrvModel? creekHrvModel;

}




