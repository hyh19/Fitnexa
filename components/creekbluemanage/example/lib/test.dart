// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:flutter/foundation.dart';
// import 'dart:typed_data';
import 'dart:ffi';
import 'dart:math';

import 'dart:convert';
import 'dart:typed_data';
import 'package:fixnum/src/int64.dart';

void main() {
  // String? a;
  // String? b;  b = "StepCount_DailyLife_liuxk_20230530_200622_01.rawdata";
  // a = "StepCount_DailyLife_liuxk_20230530_200622_01.rawdata";
  // if(a != b){
  //   print("111111");
  // }

  //
  // List<String> a = ["1","2","3","4"];
  // // String b = a.reduce((value, e) => "$value and fileName='$e'");
  // // String c = "fileName=$b";
  // // print(c);
  // int i = 0;
  // String b = a.reduce((value, e){
  //   if(i == 0){
  //     i++;
  //     return "fileName = '$value' or fileName='$e'";
  //   }else{
  //     return "$value or fileName='$e'";
  //   }
  // } );
  // print(b);

  // List<int> a = [1,2,3,4,5];
  // for(var element in a) {
  //   print(element);
  //   if(element == 3){
  //     continue;
  //   }
  // }
  // print("结束");

  // DateTime time1 = DateTime.parse("2023-05-22");
  // DateTime time2 = DateTime.parse("2023-05-23");
  // print(time2.difference(time1).inDays);
  // print((0/1).isNaN ? 0 : 0/1);

  // print(double.parse((951 / 1000).toStringAsFixed(2))) ;
  // List<int> a = [49, 163, 209, 128, 45, 78, 207,6];
  // var b =   Utf8Decoder().convert(a);
  // print(b);

  // computeTest();
  // Future( () => compute(testfunc,123)).then((value) => {print('1结束')});
  // Future( () => compute(testfunc,123)).then((value) => {print('2结束')});
  // Future( () => compute(testfunc,123)).then((value) => {print('3结束')});
  // Future( () => compute(testfunc,123)).then((value) => {print('4结束')});
  // Future( () => compute(testfunc,123)).then((value) => {print('5结束')});

  // List<String> a = ["1","2","3","4","6"];

  // int a = int.parse("f4", radix: 16);
  // int b = int.parse("F4", radix: 16);
  // print(a);
  // print(b);

  //  if(DateTime(2023,7,1).difference(DateTime(2023,7,2)).inDays >= 0 && DateTime(2023,7,30).difference(DateTime(2023,8,5)).inDays <= 0){
  //    print("满足条件预测生理周期");
  //  }else if(DateTime(2023,7,30).difference(DateTime(2023,7,30)).inDays >= 0 && DateTime(2023,7,30).difference(DateTime(2023,8,7)).inDays <= 0){
  //    print("满足条件可能生理周期");
  //  }else{
  //    print("不满足");
  //  }
  //
  //
  //  print("生理期：${DateTime(2023,7,3).toString().substring(0,11)},长度：5，周期：29");
  //
  //  predictedMenstrualPeriod(startMenstrualDate: DateTime(2023,8,1), cycle: 28, len: 5,closure:
  //      (DateTime startPeriod, DateTime endPeriod, DateTime startMaybePeriod, DateTime endMaybePeriod){
  //    print("预测生理周期:${startPeriod.toString().substring(0,11)}-${endPeriod.toString().substring(0,11)}");
  //    print("可能生理周期:${startMaybePeriod.toString().substring(0,11)}-${endMaybePeriod.toString().substring(0,11)}");
  //  });
  //
  //  maybeGestation(startMenstrualDate: DateTime(2023,8,3), cycle: 22, len: 5, closure:
  //      (DateTime? startPeriod, DateTime? endPeriod){
  //    if(startPeriod == null && endPeriod == null){
  //      print("没有孕期");
  //    }else{
  //      print("预测的孕期：${startPeriod.toString().substring(0,11)}-${endPeriod.toString().substring(0,11)}");
  //    }
  //  });
  //
  // print(utf8.decode([100, 101, 102, 97, 117, 108, 116, 56, 64, 76, 67, 46, 98, 105, 110])) ;

  // var a = BlueTool.hexToMinus([112, 95, 1, 231]);
  // print(a);

  // double latitude = 25.960503; // 纬度
  // double longitude = -80.153202; // 经度
  //
  // String formattedLatitude = convertToDDMM(latitude);
  // String formattedLongitude = convertToDDMM(longitude);
  //
  // print('Latitude (DDMM): $formattedLatitude');
  // print('Longitude (DDMM): $formattedLongitude');
  //
  // var f = -81 - -81.45;
  // print(f);

  // List<int> a = [10, 20, 30, 40];
  // List<int> b = a.reversed.toList();
  //
  // print('List a: $a');
  // print('List b: $b');
  //
  // List<Map> dics = [{"rmc_latitude":"223756140","rmc_longitude":"1140091600","gsa_pdop":"778","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756150","rmc_longitude":"1140091550","gsa_pdop":"702","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756150","rmc_longitude":"1140091550","gsa_pdop":"702","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756169","rmc_longitude":"1140091490","gsa_pdop":"715","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756130","rmc_longitude":"1140091360","gsa_pdop":"689","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756190","rmc_longitude":"1140091210","gsa_pdop":"588","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756190","rmc_longitude":"1140091210","gsa_pdop":"588","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756190","rmc_longitude":"1140091210","gsa_pdop":"588","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756190","rmc_longitude":"1140091210","gsa_pdop":"588","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756210","rmc_longitude":"1140091160","gsa_pdop":"586","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756250","rmc_longitude":"1140091100","gsa_pdop":"558","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756300","rmc_longitude":"1140091010","gsa_pdop":"610","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756340","rmc_longitude":"1140090940","gsa_pdop":"559","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756360","rmc_longitude":"1140090870","gsa_pdop":"543","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756400","rmc_longitude":"1140090820","gsa_pdop":"579","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756450","rmc_longitude":"1140090760","gsa_pdop":"494","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756490","rmc_longitude":"1140090700","gsa_pdop":"469","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756520","rmc_longitude":"1140090650","gsa_pdop":"463","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756570","rmc_longitude":"1140090590","gsa_pdop":"461","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756619","rmc_longitude":"1140090550","gsa_pdop":"461","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756670","rmc_longitude":"1140090500","gsa_pdop":"455","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756720","rmc_longitude":"1140090460","gsa_pdop":"444","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756780","rmc_longitude":"1140090430","gsa_pdop":"450","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756850","rmc_longitude":"1140090400","gsa_pdop":"466","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756920","rmc_longitude":"1140090360","gsa_pdop":"456","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756999","rmc_longitude":"1140090310","gsa_pdop":"476","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757069","rmc_longitude":"1140090280","gsa_pdop":"471","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757130","rmc_longitude":"1140090230","gsa_pdop":"509","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757200","rmc_longitude":"1140090190","gsa_pdop":"528","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757270","rmc_longitude":"1140090150","gsa_pdop":"538","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757420","rmc_longitude":"1140090080","gsa_pdop":"459","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757420","rmc_longitude":"1140090080","gsa_pdop":"459","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757490","rmc_longitude":"1140090080","gsa_pdop":"432","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757570","rmc_longitude":"1140090090","gsa_pdop":"437","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757630","rmc_longitude":"1140090120","gsa_pdop":"433","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757689","rmc_longitude":"1140090170","gsa_pdop":"427","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757750","rmc_longitude":"1140090220","gsa_pdop":"404","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757860","rmc_longitude":"1140090350","gsa_pdop":"398","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757860","rmc_longitude":"1140090350","gsa_pdop":"398","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757920","rmc_longitude":"1140090410","gsa_pdop":"402","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757970","rmc_longitude":"1140090470","gsa_pdop":"410","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758020","rmc_longitude":"1140090530","gsa_pdop":"426","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758069","rmc_longitude":"1140090580","gsa_pdop":"421","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758120","rmc_longitude":"1140090650","gsa_pdop":"416","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758150","rmc_longitude":"1140090710","gsa_pdop":"414","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758180","rmc_longitude":"1140090780","gsa_pdop":"399","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758220","rmc_longitude":"1140090860","gsa_pdop":"394","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758250","rmc_longitude":"1140090920","gsa_pdop":"388","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758290","rmc_longitude":"1140091000","gsa_pdop":"392","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758320","rmc_longitude":"1140091080","gsa_pdop":"397","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758350","rmc_longitude":"1140091150","gsa_pdop":"405","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758420","rmc_longitude":"1140091310","gsa_pdop":"450","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758420","rmc_longitude":"1140091310","gsa_pdop":"450","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758510","rmc_longitude":"1140091440","gsa_pdop":"483","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758510","rmc_longitude":"1140091440","gsa_pdop":"483","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758620","rmc_longitude":"1140091600","gsa_pdop":"547","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758680","rmc_longitude":"1140091670","gsa_pdop":"542","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758680","rmc_longitude":"1140091670","gsa_pdop":"542","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758770","rmc_longitude":"1140091810","gsa_pdop":"540","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758820","rmc_longitude":"1140091880","gsa_pdop":"524","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758870","rmc_longitude":"1140091940","gsa_pdop":"570","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758940","rmc_longitude":"1140092000","gsa_pdop":"573","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759000","rmc_longitude":"1140092070","gsa_pdop":"601","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759050","rmc_longitude":"1140092130","gsa_pdop":"603","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759110","rmc_longitude":"1140092200","gsa_pdop":"593","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759160","rmc_longitude":"1140092270","gsa_pdop":"595","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759200","rmc_longitude":"1140092330","gsa_pdop":"606","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759250","rmc_longitude":"1140092410","gsa_pdop":"601","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759290","rmc_longitude":"1140092460","gsa_pdop":"601","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759330","rmc_longitude":"1140092530","gsa_pdop":"618","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759380","rmc_longitude":"1140092600","gsa_pdop":"623","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759410","rmc_longitude":"1140092680","gsa_pdop":"637","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759440","rmc_longitude":"1140092750","gsa_pdop":"603","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759490","rmc_longitude":"1140092830","gsa_pdop":"595","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759520","rmc_longitude":"1140092910","gsa_pdop":"606","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759550","rmc_longitude":"1140092990","gsa_pdop":"573","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759590","rmc_longitude":"1140093050","gsa_pdop":"571","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759640","rmc_longitude":"1140093110","gsa_pdop":"576","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759690","rmc_longitude":"1140093170","gsa_pdop":"593","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759740","rmc_longitude":"1140093240","gsa_pdop":"578","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759790","rmc_longitude":"1140093310","gsa_pdop":"572","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759830","rmc_longitude":"1140093360","gsa_pdop":"574","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759870","rmc_longitude":"1140093430","gsa_pdop":"582","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759910","rmc_longitude":"1140093500","gsa_pdop":"558","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759950","rmc_longitude":"1140093580","gsa_pdop":"550","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759990","rmc_longitude":"1140093650","gsa_pdop":"535","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760020","rmc_longitude":"1140093710","gsa_pdop":"532","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760050","rmc_longitude":"1140093780","gsa_pdop":"524","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760070","rmc_longitude":"1140093860","gsa_pdop":"517","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760100","rmc_longitude":"1140093920","gsa_pdop":"516","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760130","rmc_longitude":"1140094000","gsa_pdop":"506","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760170","rmc_longitude":"1140094080","gsa_pdop":"507","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760200","rmc_longitude":"1140094150","gsa_pdop":"497","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760240","rmc_longitude":"1140094210","gsa_pdop":"488","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760280","rmc_longitude":"1140094280","gsa_pdop":"475","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760330","rmc_longitude":"1140094360","gsa_pdop":"470","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760390","rmc_longitude":"1140094420","gsa_pdop":"475","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760430","rmc_longitude":"1140094480","gsa_pdop":"483","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760480","rmc_longitude":"1140094540","gsa_pdop":"483","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760520","rmc_longitude":"1140094610","gsa_pdop":"492","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760580","rmc_longitude":"1140094670","gsa_pdop":"523","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760640","rmc_longitude":"1140094720","gsa_pdop":"519","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760700","rmc_longitude":"1140094780","gsa_pdop":"582","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760750","rmc_longitude":"1140094840","gsa_pdop":"565","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760790","rmc_longitude":"1140094900","gsa_pdop":"555","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760830","rmc_longitude":"1140094960","gsa_pdop":"544","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760880","rmc_longitude":"1140095040","gsa_pdop":"531","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760930","rmc_longitude":"1140095110","gsa_pdop":"537","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760970","rmc_longitude":"1140095160","gsa_pdop":"523","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761009","rmc_longitude":"1140095210","gsa_pdop":"511","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761050","rmc_longitude":"1140095270","gsa_pdop":"500","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761090","rmc_longitude":"1140095340","gsa_pdop":"489","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761110","rmc_longitude":"1140095410","gsa_pdop":"478","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761150","rmc_longitude":"1140095470","gsa_pdop":"462","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761190","rmc_longitude":"1140095530","gsa_pdop":"464","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761240","rmc_longitude":"1140095590","gsa_pdop":"459","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761290","rmc_longitude":"1140095650","gsa_pdop":"445","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761330","rmc_longitude":"1140095720","gsa_pdop":"442","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761360","rmc_longitude":"1140095790","gsa_pdop":"437","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761400","rmc_longitude":"1140095870","gsa_pdop":"438","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761440","rmc_longitude":"1140095950","gsa_pdop":"435","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761480","rmc_longitude":"1140096030","gsa_pdop":"438","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761530","rmc_longitude":"1140096100","gsa_pdop":"435","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761570","rmc_longitude":"1140096180","gsa_pdop":"439","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761610","rmc_longitude":"1140096250","gsa_pdop":"438","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761650","rmc_longitude":"1140096320","gsa_pdop":"422","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761670","rmc_longitude":"1140096390","gsa_pdop":"422","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761699","rmc_longitude":"1140096470","gsa_pdop":"426","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761740","rmc_longitude":"1140096550","gsa_pdop":"430","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761840","rmc_longitude":"1140096710","gsa_pdop":"432","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761840","rmc_longitude":"1140096710","gsa_pdop":"432","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761870","rmc_longitude":"1140096800","gsa_pdop":"436","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761950","rmc_longitude":"1140097160","gsa_pdop":"407","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761950","rmc_longitude":"1140097160","gsa_pdop":"407","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761950","rmc_longitude":"1140097160","gsa_pdop":"407","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761950","rmc_longitude":"1140097160","gsa_pdop":"407","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761950","rmc_longitude":"1140097160","gsa_pdop":"407","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761940","rmc_longitude":"1140097230","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761910","rmc_longitude":"1140097300","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761860","rmc_longitude":"1140097370","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761810","rmc_longitude":"1140097430","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761750","rmc_longitude":"1140097490","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761620","rmc_longitude":"1140097610","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761620","rmc_longitude":"1140097610","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761560","rmc_longitude":"1140097660","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761480","rmc_longitude":"1140097720","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761420","rmc_longitude":"1140097770","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761350","rmc_longitude":"1140097820","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761270","rmc_longitude":"1140097860","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761120","rmc_longitude":"1140097950","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223761120","rmc_longitude":"1140097950","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760960","rmc_longitude":"1140098050","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760960","rmc_longitude":"1140098050","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760880","rmc_longitude":"1140098110","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760810","rmc_longitude":"1140098160","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760730","rmc_longitude":"1140098210","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760590","rmc_longitude":"1140098270","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760510","rmc_longitude":"1140098290","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760450","rmc_longitude":"1140098320","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760380","rmc_longitude":"1140098340","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760300","rmc_longitude":"1140098360","gsa_pdop":"380","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760220","rmc_longitude":"1140098380","gsa_pdop":"379","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760150","rmc_longitude":"1140098390","gsa_pdop":"385","rmc_location_status":"3"},
  //   {"rmc_latitude":"223760070","rmc_longitude":"1140098410","gsa_pdop":"397","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759990","rmc_longitude":"1140098430","gsa_pdop":"403","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759930","rmc_longitude":"1140098460","gsa_pdop":"412","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759860","rmc_longitude":"1140098500","gsa_pdop":"419","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759799","rmc_longitude":"1140098520","gsa_pdop":"410","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759740","rmc_longitude":"1140098570","gsa_pdop":"410","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759670","rmc_longitude":"1140098620","gsa_pdop":"417","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759610","rmc_longitude":"1140098680","gsa_pdop":"417","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759550","rmc_longitude":"1140098740","gsa_pdop":"425","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759490","rmc_longitude":"1140098780","gsa_pdop":"432","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759430","rmc_longitude":"1140098810","gsa_pdop":"421","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759349","rmc_longitude":"1140098830","gsa_pdop":"431","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759279","rmc_longitude":"1140098850","gsa_pdop":"444","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759200","rmc_longitude":"1140098860","gsa_pdop":"429","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759130","rmc_longitude":"1140098860","gsa_pdop":"421","rmc_location_status":"3"},
  //   {"rmc_latitude":"223759050","rmc_longitude":"1140098870","gsa_pdop":"428","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758980","rmc_longitude":"1140098900","gsa_pdop":"420","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758920","rmc_longitude":"1140098950","gsa_pdop":"410","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758850","rmc_longitude":"1140098990","gsa_pdop":"402","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758780","rmc_longitude":"1140099050","gsa_pdop":"403","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758720","rmc_longitude":"1140099080","gsa_pdop":"407","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758650","rmc_longitude":"1140099120","gsa_pdop":"403","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758570","rmc_longitude":"1140099140","gsa_pdop":"418","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758500","rmc_longitude":"1140099190","gsa_pdop":"422","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758430","rmc_longitude":"1140099230","gsa_pdop":"426","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758380","rmc_longitude":"1140099290","gsa_pdop":"438","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758320","rmc_longitude":"1140099340","gsa_pdop":"444","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758260","rmc_longitude":"1140099400","gsa_pdop":"436","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758190","rmc_longitude":"1140099440","gsa_pdop":"447","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758120","rmc_longitude":"1140099450","gsa_pdop":"456","rmc_location_status":"3"},
  //   {"rmc_latitude":"223758030","rmc_longitude":"1140099490","gsa_pdop":"452","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757960","rmc_longitude":"1140099560","gsa_pdop":"446","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757910","rmc_longitude":"1140099650","gsa_pdop":"442","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757860","rmc_longitude":"1140099720","gsa_pdop":"443","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757800","rmc_longitude":"1140099770","gsa_pdop":"441","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757730","rmc_longitude":"1140099820","gsa_pdop":"412","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757670","rmc_longitude":"1140099870","gsa_pdop":"410","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757600","rmc_longitude":"1140099920","gsa_pdop":"405","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757540","rmc_longitude":"1140099980","gsa_pdop":"402","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757480","rmc_longitude":"1140100030","gsa_pdop":"411","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757420","rmc_longitude":"1140100060","gsa_pdop":"422","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757340","rmc_longitude":"1140100130","gsa_pdop":"423","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757300","rmc_longitude":"1140100190","gsa_pdop":"442","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757240","rmc_longitude":"1140100240","gsa_pdop":"457","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757180","rmc_longitude":"1140100270","gsa_pdop":"469","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757120","rmc_longitude":"1140100300","gsa_pdop":"476","rmc_location_status":"3"},
  //   {"rmc_latitude":"223757040","rmc_longitude":"1140100330","gsa_pdop":"488","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756970","rmc_longitude":"1140100350","gsa_pdop":"496","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756970","rmc_longitude":"1140100350","gsa_pdop":"496","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"},
  //   {"rmc_latitude":"223756820","rmc_longitude":"1140100370","gsa_pdop":"520","rmc_location_status":"3"}];
  //
  //  for (var e in dics) {
  //    String rmc_latitude = e["rmc_latitude"] as String;
  //    String rmc_longitude = e["rmc_longitude"] as String;
  //     double b =  int.parse(rmc_latitude) / 10000000;
  //     double c =  int.parse(rmc_longitude) / 10000000;
  //     print("${convertToDDMM2(b)} - ${convertToDDMM2(c)}");
  //
  //  }

  // int  a = 1234567;
  // Uint8List uint8List = Uint8List.fromList(a.toRadixString(16).padLeft(8, '0').split('').map((hex) => int.parse(hex, radix: 16)).toList());
  //
  // print(uint8List);



  // int value = 45678;
  //
  // if ((value & 0x8000) != 0) {
  //   print("The value is negative.");
  // } else {
  //   print("The value is non-negative.");
  // }

  // print(DateTime.parse("2024-02-27").add(const Duration(days: 2))) ;

  getDataTimeToWeek(dateTime: DateTime.parse("2024-03-01"),startWeekDate: 7,time: (s,e,w){
    print("开始时间：$s   结束时间:$e   第一周: $w");
  });

  // List<int> b = [230, 173, 166, 230, 177, 137, 89, 89, 89];
  // print(utf8.decode(a));
  // print(utf8.decode(b));


  // String str1 = 3.toRadixString(2);
  // print(str1);


  // a.removeWhere((element) => element.contains("2"));
  // print(a);

  // double latitude = 22.622380; // 纬度
  // double longitude = 114.022852; // 经度
  //
  // // print(gps84_To_Gcj02(double.parse(convertToDDMM2(latitude)), double.parse(convertToDDMM2(longitude))));
  //
  // print(gps84_To_Gcj02(latitude, longitude));
  //
  // List gps = [
  //   {"latitude": 22.621360, "longitude": 114.023549},
  //   {"latitude": 22.622380, "longitude": 114.022852},
  //   {"latitude": 22.622836, "longitude": 114.022509},
  //   {"latitude": 22.623796, "longitude": 114.021833},
  //   {"latitude": 22.624371, "longitude": 114.021350},
  //   {"latitude": 22.624163, "longitude": 114.020942},
  //   {"latitude": 22.623945, "longitude": 114.020481}
  // ];
  //
  // gps.forEach((element) {
  //   print(gcj02_To_Gps84(element["latitude"], element["longitude"]));
  // });

  // print(convertToDDMM2(latitude));
  // print(convertToDDMM2(longitude));

  // {"rmc_latitude":"223735040","rmc_longitude":"1140135620","gsa_pdop":"1333","gsa_location_type":"2"}



}

bool isDateValid(String date) {
  RegExp regex = RegExp(r'^(?:19|20)\d\d-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$');
  return regex.hasMatch(date);
}

///屏幕亮度功能表
class ScreenTable{
  ///是否支持夜间自动亮度调整  bit0
  bool night = false;

  ///是否支持常亮模式选择，支持用aod_time_setting ，不支持用aod_switch_flag  bit1
  bool steady = false;

  ScreenTable fromTable(int table) {
    ScreenTable screenTable = ScreenTable();
    String str = table.toRadixString(2);
    if(str.isNotEmpty){
      screenTable.night = int.parse(str.substring(str.length-1,str.length)) == 1;
    }
    if(str.length > 1){
      screenTable.steady = int.parse(str.substring(str.length-2,str.length-1)) == 1;
    }
    return screenTable;
  }

  @override
  String toString() {
    return 'ScreenTable{night: $night, steady: $steady}';
  }
}

String convertToDDMM(double coordinate) {
  // 将坐标的绝对值转换为整数部分（度）

  int degrees = coordinate.floor();

  // 将小数部分转换为分钟
  double minutes = ((coordinate - degrees) / 100) * 60;

  // 将度和分钟格式化为DDMM格式的字符串
  String formattedCoordinate = (degrees + minutes).toStringAsFixed(6);

  return formattedCoordinate;
}

String convertToDDMM2(double coordinate) {
  // 将坐标的绝对值转换为整数部分（度）
  int degrees = coordinate.floor();

  // 将小数部分转换为分钟
  double minutes = ((coordinate.abs() - degrees) / 60) * 100;

  // 将度和分钟格式化为DDMM格式的字符串
  String formattedCoordinate = (degrees + minutes).toStringAsFixed(6);

  return formattedCoordinate;
}

// void computeTest() async{
//   print('外部代码1');
//    String a = await compute(func1,10);
//    print("111111${a}");
//   // sleep(Duration(seconds: 2));
//   print('外部代码2');
// }
// Future<String> func1(message) async {
//    String a = await Future.delayed(Duration(seconds: 1),(){
//     return "hahah";
//    });
//    return a;
//
// }

const num pi = 3.1415926535897932384626;
const num x_pi = 3.14159265358979324 * 3000.0 / 180.0;
const num a = 6378245.0;
const num ee = 0.00669342162296594323;

num transformLat(num x, num y) {
  num ret = -100.0 + 2.0 * x + 3.0 * y + 0.2 * y * y + 0.1 * x * y + 0.2 * sqrt(x.abs());
  ret += (20.0 * sin(6.0 * x * pi) + 20.0 * sin(2.0 * x * pi)) * 2.0 / 3.0;
  ret += (20.0 * sin(y * pi) + 40.0 * sin(y / 3.0 * pi)) * 2.0 / 3.0;
  ret += (160.0 * sin(y / 12.0 * pi) + 320 * sin(y * pi / 30.0)) * 2.0 / 3.0;
  return ret;
}

num transformLon(num x, num y) {
  num ret = 300.0 + x + 2.0 * y + 0.1 * x * x + 0.1 * x * y + 0.1 * sqrt(x.abs());
  ret += (20.0 * sin(6.0 * x * pi) + 20.0 * sin(2.0 * x * pi)) * 2.0 / 3.0;
  ret += (20.0 * sin(x * pi) + 40.0 * sin(x / 3.0 * pi)) * 2.0 / 3.0;
  ret += (150.0 * sin(x / 12.0 * pi) + 300.0 * sin(x / 30.0 * pi)) * 2.0 / 3.0;
  return ret;
}

List<num> transform(num lat, num lon) {
  if (outOfChina(lat, lon)) {
    return [lat, lon];
  }
  num dLat = transformLat(lon - 105.0, lat - 35.0);
  num dLon = transformLon(lon - 105.0, lat - 35.0);
  num radLat = lat / 180.0 * pi;
  num magic = sin(radLat);
  magic = 1 - ee * magic * magic;
  num sqrtMagic = sqrt(magic);
  dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * pi);
  dLon = (dLon * 180.0) / (a / sqrtMagic * cos(radLat) * pi);
  num mgLat = lat + dLat;
  num mgLon = lon + dLon;
  return [mgLat, mgLon];
}

List<num> gps84_To_Gcj02(num lat, num lon) {
  if (outOfChina(lat, lon)) {
    return [lat, lon];
  }
  num dLat = transformLat(lon - 105.0, lat - 35.0);
  num dLon = transformLon(lon - 105.0, lat - 35.0);
  num radLat = lat / 180.0 * pi;
  num magic = sin(radLat);
  magic = 1 - ee * magic * magic;
  num sqrtMagic = sqrt(magic);
  dLat = (dLat * 180.0) / ((a * (1 - ee)) / (magic * sqrtMagic) * pi);
  dLon = (dLon * 180.0) / (a / sqrtMagic * cos(radLat) * pi);
  num mgLat = lat + dLat;
  num mgLon = lon + dLon;
  return [mgLat, mgLon];
}
 List<num> gcj02_To_Gps84(num lat, num lon) {
    List<num> gps = transform(lat, lon);
    num lontitude = lon * 2 - gps[1];
    num latitude = lat * 2 - gps[0];
    return [latitude, lontitude];
}
bool outOfChina(num lat, num lon) {
  if (lon < 72.004 || lon > 137.8347) return true;
  if (lat < 0.8293 || lat > 55.8271) return true;
  return false;
}

void testfunc(dynamic) async {
  await Future.delayed(Duration(seconds: 1), () {
    print("11111");
  });
}

///**************************
///根据一年的第几周查出这周的开始时间和结束时间
///weekDay 周
///startWeekDate  周的起始计算位置，一般是周一或者是周日  1，7
///***************************
getWeekToDataTime({required DateTime dateTime, int weekDay = 1, int startWeekDate = 1, Function(String startTime, String endTime)? time}) {
  DateTime yearStartDateTime = DateTime(dateTime.year, 1, 1);

  ///一年的天数
  int yearDays = DateTime(dateTime.year + 1).difference(DateTime(dateTime.year)).inDays;

  ///计算1月1号 在一周里面是星期几 得出第一周共有多少天 不足7天算在上一年
  ///去年周占用的天数
  int weekDays = 7 - yearStartDateTime.weekday + (startWeekDate == 7 ? 0 : 1);
  if(weekDays == 7){
    weekDays = 0;
  }

  ///得出今年的周计算开始起点
  DateTime fistTime = yearStartDateTime.add(Duration(days: weekDays));

  ///得出今年有多少周
  int yearWeek = (yearDays - weekDays) ~/ 7 + ((yearDays - weekDays) % 7 != 0 ? 1 : 0);
  String startTime = "";
  String endTime = "";
  if (weekDay == 1) {
    startTime = fistTime.toString().toString().substring(0, 10);
    endTime = fistTime.add(const Duration(days: 6)).toString().substring(0, 10);
  } else if (weekDay == yearWeek) {
    startTime = fistTime.add(Duration(days: ((weekDay - 1) * 7))).toString().substring(0, 10);
    endTime = fistTime.add(Duration(days: ((weekDay - 1) * 7) + 6)).toString().toString().substring(0, 10);
  } else if (weekDay > 1 && weekDay < yearWeek) {
    int start = weekDays + ((weekDay - 1) * 7);
    startTime = yearStartDateTime.add(Duration(days: start)).toString().substring(0, 10);
    endTime = yearStartDateTime.add(Duration(days: start + 6)).toString().substring(0, 10);
  } else {
    print("超出年的总周数");
  }
  if (time != null) {
    time(startTime, endTime);
  }
}

///**************************
///根据日期查出是第几周 并查出这周的开始时间和结束时间
///dateTime 时间
///startWeekDate  周的起始计算位置，一般是周一或者是周日  1，7
///***************************
getDataTimeToWeek({required DateTime dateTime, int startWeekDate = 1, Function(String startTime, String endTime, int week)? time}) {
  print(dateTime.toString().substring(0, 10));

  DateTime yearStartDateTime = DateTime(dateTime.year, 1, 1);

  ///计算1月1号 在一周里面是星期几 得出第一周共有多少天 不足7天算在上一年
  ///去年周占用的天数
  int weekDays = 7 - yearStartDateTime.weekday + (startWeekDate == 7 ? 0 : 1);
  if(weekDays == 7){
    weekDays = 0;
  }

  ///得出今年的周计算开始起点
  DateTime fistTime = yearStartDateTime.add(Duration(days: weekDays));
  DateTime currentDateTime = dateTime;
  int currentDays = currentDateTime.difference(fistTime).inDays + 1;
  int indexWeek = (currentDays ~/ 7) + (currentDays % 7 != 0 ? 1 : 0);
  if (indexWeek < 1) {
    DateTime yearStartDateTime = DateTime(dateTime.year - 1, 1, 1);

    ///计算1月1号 在一周里面是星期几 得出第一周共有多少天 不足7天算在上一年
    ///去年周占用的天数
    int weekDays = 7 - yearStartDateTime.weekday + (startWeekDate == 7 ? 0 : 1);

    ///得出今年的周计算开始起点
    DateTime fistTime = yearStartDateTime.add(Duration(days: weekDays));
    DateTime currentDateTime = dateTime;
    int currentDays = currentDateTime.difference(fistTime).inDays + 1;
    int indexWeek = (currentDays ~/ 7) + (currentDays % 7 != 0 ? 1 : 0);
    getWeekToDataTime(
        dateTime: yearStartDateTime,
        weekDay: indexWeek,
        startWeekDate: startWeekDate,
        time: (s, e) {
          if (time != null) {
            time(s, e, indexWeek);
          }
        });
  } else {
    getWeekToDataTime(
        dateTime: dateTime,
        weekDay: indexWeek,
        startWeekDate: startWeekDate,
        time: (s, e) {
          if (time != null) {
            time(s, e, indexWeek);
          }
        });
  }
}

///********************预测可能的的生理期*********
///startMenstrualDate 经期开始时间
///cycle 周期长度
///len   生理期长度
///********************************************
predictedMenstrualPeriod(
    {required DateTime startMenstrualDate,
    required int cycle,
    required int len,
    required Function(DateTime startPeriod, DateTime endPeriod, DateTime startMaybePeriod, DateTime endMaybePeriod) closure}) {
  ///预测下个月经开始时间
  DateTime startPeriod;

  ///预测下个月经结束时间
  DateTime endPeriod;

  ///预测下个月经可能开始时间
  DateTime startMaybePeriod;

  ///预测下个月经可能结束始时间
  DateTime endMaybePeriod;
  startPeriod = startMenstrualDate.add(Duration(days: cycle));
  endPeriod = startMenstrualDate.add(Duration(days: cycle + len - 1));
  startMaybePeriod = startMenstrualDate.add(Duration(days: cycle - 2));
  endMaybePeriod = startMenstrualDate.add(Duration(days: cycle + len + 2 - 1));
  if (closure != null) {
    closure(startPeriod, endPeriod, startMaybePeriod, endMaybePeriod);
  }
}

///*****************预测的易孕窗口期*******************
///startMenstrualDate 经期开始时间
///cycle 周期长度
///len   生理期长度
///*************************************************
maybeGestation(
    {required DateTime startMenstrualDate, required int cycle, required int len, required Function(DateTime? startPeriod, DateTime? endPeriod) closure}) {
  int gestation = cycle - len;

  ///孕期开始时间
  DateTime? startGestation;

  ///孕期结束时间
  DateTime? endGestation;
  if (gestation > 17) {
    startGestation = startMenstrualDate.add(Duration(days: cycle - 14 - 3));
    endGestation = startMenstrualDate.add(Duration(days: cycle - 14 + 2));
  } else if (gestation == 15) {
    startGestation = startMenstrualDate.add(Duration(days: cycle - 14));
    endGestation = startMenstrualDate.add(Duration(days: cycle - 14 + 2));
  } else if (gestation == 16) {
    startGestation = startMenstrualDate.add(Duration(days: cycle - 14 - 1));
    endGestation = startMenstrualDate.add(Duration(days: cycle - 14 + 2));
  } else if (gestation == 17) {
    startGestation = startMenstrualDate.add(Duration(days: cycle - 14 - 2));
    endGestation = startMenstrualDate.add(Duration(days: cycle - 14 + 2));
  }
  closure(startGestation, endGestation);
}
