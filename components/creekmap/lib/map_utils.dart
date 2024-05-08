import 'dart:math';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';

class MapUtil {
  static double calculateDistance(LatLng latLng1, LatLng latLng2) {
    return calculateDistanceNew(
        latLng1.latitude, latLng1.longitude, latLng2.latitude, latLng2.longitude);
  }

  static double calculateDistanceNew(
    double latitude1,
    double longitude1,
    double latitude2,
    double longitude3,
  ) {
    //经纬度转换成弧度
    double lat1 = _convertDegreesToRadians(latitude1);
    double lon1 = _convertDegreesToRadians(longitude1);
    double lat2 = _convertDegreesToRadians(latitude2);
    double lon2 = _convertDegreesToRadians(longitude3);
    //差值
    double deltaLat = (lat1 - lat2).abs();
    double deltaLon = (lon1 - lon2).abs();
    //h is the great circle distance in radians, great circle
    //就是一个球体上的切面，它的圆心即是球心的一个周长最大的圆。
    double h = _haveSin(deltaLat) + cos(lat1) * cos(lat2) * _haveSin(deltaLon);
    return (2 * 6378137.0 * asin(sqrt(h)));
  }

  static double _haveSin(double theta) {
    var v = sin(theta / 2);
    return v * v;
  }

  /// 将角度换算为弧度。
  static double _convertDegreesToRadians(double degrees) => degrees * pi / 180;
}
