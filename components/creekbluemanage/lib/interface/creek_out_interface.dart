
import 'dart:convert';
import 'package:creektool/creek_tool.dart';
import 'package:sqflite/sqflite.dart';

import '../creek_blue.dart';


class CreekOutInterFace{

  CreekOutInterFace();

  ///****************************
  ///根据时间范围查询活动数据
  ///****************************
  static Future<List<Map<String, dynamic>>> getActivityNewTimeData(DateTime startTime, DateTime endTime) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("ACTIVITY_DATA_HEAD", where: "creat_time >= '${startTime.toString().substring(0,10)}' and creat_time <= '${endTime.toString().substring(0,10)}'",orderBy: "creat_time desc");
    return maps;
  }

  ///****************************
  ///根据时间范围查询睡眠数据
  ///****************************
  static Future<List<Map<String, dynamic>>> getSleepNewTimeData(DateTime startTime, DateTime endTime)async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SLEEP_DATA_HEAD", where: "get_up_date >= '${startTime.toString().substring(0,10)}' and get_up_date <= '${endTime.toString().substring(0,10)}'",orderBy: "get_up_date desc");
    return maps;
  }
  ///****************************
  ///根据时间范围查询心率数据
  ///****************************
  static Future<List<Map<String, dynamic>>> getHeartRateNewTimeData(DateTime startTime, DateTime endTime) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("HEART_RATE_DATA_HEAD", where: "creat_time >= '${startTime.toString().substring(0,10)}' and creat_time <= '${endTime.toString().substring(0,10)}'",orderBy: "creat_time desc");
    return maps;
  }

  ///****************************
  ///根据时间范围查询压力数据
  ///****************************
  static Future<List<Map<String, dynamic>>> getStressNewTimeData(DateTime startTime, DateTime endTime) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("STRESS_DATA_HEAD", where: "creat_time >= '${startTime.toString().substring(0,10)}' and creat_time <= '${endTime.toString().substring(0,10)}'",orderBy: "creat_time desc");
    return maps;
  }

  ///****************************
  ///根据时间范围查询噪音数据
  ///格式2022-1-2
  ///****************************
  static  Future<List<Map<String, dynamic>>> getNoiseNewTimeData(DateTime startTime, DateTime endTime) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("NOISE_DATA_HEAD", where: "creat_time >= '${startTime.toString().substring(0,10)}' and creat_time <= '${endTime.toString().substring(0,10)}'",orderBy: "creat_time desc");
    return maps;
  }

  ///****************************
  ///根据时间范围查询血氧数据
  ///格式2022-1-2
  ///****************************
  static Future<List<Map<String, dynamic>>> getSpoNewTimeData(DateTime startTime, DateTime endTime) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SPO_DATA_HEAD", where: "creat_time >= '${startTime.toString().substring(0,10)}' and creat_time <= '${endTime.toString().substring(0,10)}'",orderBy: "creat_time desc");
    return maps;
  }

  ///****************************
  ///根据时间范围查询hrv数据
  ///格式2022-1-2
  ///****************************
  static Future<List<Map<String, dynamic>>> getHrvNewTimeData(DateTime startTime, DateTime endTime) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("HRV_DATA_HEAD", where: "creat_time >= '${startTime.toString().substring(0,10)}' and creat_time <= '${endTime.toString().substring(0,10)}'",orderBy: "creat_time desc");
    return maps;
  }

  ///*********************************
  ///运动记录列表
  ///***********************************
  static Future<List<Map<String, dynamic>>> getSportRecord({int sportType = 1000}) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list = [];
    if(sportType == 1000){
      list = await database.query("SPORT_DATA_HEAD",orderBy: "startTime desc");
    }else{
      list = await database.query("SPORT_DATA_HEAD", where: "sportType = '$sportType'",orderBy: "startTime desc");
    }
    return list;
  }

  ///*********************************
  ///查询运动详情
  ///***********************************
  static  Future<Map<String, dynamic>> getSportDetails(int id) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SPORT_DATA_HEAD", where: "id = '$id'");
    if(maps.isNotEmpty){
      return maps[0];
    }else{
      return {};
    }

  }

  ///根据时间范围查询
  ///sportType 运动类型  不传为全部
  ///格式2022-1-2
  static  Future<List<Map<String, dynamic>>> getSportTimeData(DateTime startTime, DateTime endTime,{int sportType = 1000}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list = [];
    if(sportType == 1000){
      list = await database.query("SPORT_DATA_HEAD", where: "creatTime >= '${startTime.toString().substring(0,10)}' and creatTime <= '${endTime.toString().substring(0,10)}'",orderBy: "startTime desc");
    }else{
      list = await database.query("SPORT_DATA_HEAD", where: "creatTime >= '${startTime.toString().substring(0,10)}' and creatTime <= '${endTime.toString().substring(0,10)}' and sportType = '$sportType'",orderBy: "startTime desc");
    }
   return list;
  }

  ///*********************************
  ///删除运动列表
  ///***********************************
  static Future<bool> delSportRecord(int id) async{
    Database database = await DBManager().db;
    try{
      await database.delete("SPORT_DATA_HEAD", where: "id = $id");
      return true;
    }catch(e){
      return false;
    }
  }

  ///*********************************
  ///查询运动类型
  ///***********************************
  static  Future<List<Map<String, dynamic>>> getSportType() async {
    Database database = await DBManager().db;
    try{
      return await database.query("SPORT_DATA_HEAD", distinct: true,columns: ["sportType"]);
    }catch(e){
      return [];
    }
  }

}