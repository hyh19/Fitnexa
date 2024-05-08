import 'dart:convert';

import 'package:creektool/creek_tool.dart';
import 'package:json_annotation/json_annotation.dart';
import 'creek_strava_data_resolver.dart';

@JsonSerializable(explicitToJson: true)
class CreekStravaEntity {
  String? tokenType;
  int? expiresAt;
  int? expiresIn;

  String? refreshToken;
  String? accessToken;
  Map<String, dynamic>? athlete;

  static CreekStravaEntity? fromJson(Map<String, dynamic> json) {
    try {
      CreekStravaEntity entity = CreekStravaEntity();
      entity.tokenType = json['token_type'];
      entity.expiresAt = json['expires_at'];
      entity.expiresIn = json['expires_in'];
      entity.refreshToken = json['refresh_token'];
      entity.accessToken = json['access_token'];
      if (json.containsKey('athlete')) {
        entity.athlete = json['athlete'];
      }
      return entity;
    } catch (error) {
      CreekLog.info('CreekStravaEntity json 转模型出错');
      return null;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'token_type': tokenType,
      'expires_at': expiresAt,
      'expires_in': expiresIn,
      'refresh_token': refreshToken,
      'access_token': accessToken,
      'athlete': athlete,
    };
  }
}

class StravaActivityEntity {
  int? id;
  String? name;

  ///For example - Run, Ride etc.
  String? type;

  ///For example - Run, MountainBikeRide, Ride, etc.
  String? sportType;

  ///ISO 8601 formatted date time.
  String? startDateLocal;

  ///In seconds
  int? elapsedTime;

  ///Description of the activity
  String? description;

  ///In meters
  int? distance;

  ///Set to 1 to mark as a trainer activity.
  int? trainer;

  ///Set to 1 to mark as commute
  int? commute;

  ///The format of the uploaded file. May take one of the following values: fit, fit.gz, tcx, tcx.gz, gpx, gpx.gz
  String? dataType;


  String? filePath;
  String? fileName;
  List<Map<String, dynamic>>? trailData;
  List<int>? elevationItems;


  ///The desired external identifier of the resulting activity
  String? externalId;

  static StravaActivityEntity? fromJson(Map<String, dynamic> json) {
    try {
      StravaActivityEntity entity = StravaActivityEntity();
      String createTime = json['creatTime'];
      int sportType = json['sportType']  ?? 0;
      String sport = SportType.values[sportType].title;
      entity.name = sport ;
      entity.sportType = sport;
      entity.type = sport;

      String trailDataString = json['trailData'];
      entity.trailData = jsonDecode(trailDataString).cast<Map<String, dynamic>>();

      String elevationItemsString = json['elevationItem'];
      entity.elevationItems = jsonDecode(elevationItemsString).cast<int>();

      String startDateLocal = json['startTime'];
      DateTime startDate = DateTime.parse(startDateLocal);
      String startString = startDate.toIso8601String();

      entity.startDateLocal = startString;
      entity.elapsedTime = json['durations'];
      entity.distance = json['totalDistance'];
      entity.description = createTime;

      entity.trainer = 0;
      entity.commute = 0;
      entity.externalId = json['creatTime'];

      return entity;
    } catch (error) {
      CreekLog.info('CreekStravaEntity json 转模型出错 $error');
      return null;
    }
  }

}
