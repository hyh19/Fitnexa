
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// 获取静态图片
Future<Uint8List> creekFetchStaticMapImage(
    List<LatLng> coordinate, {
      int zoomLevel = 10,
      int w = 400,
      int h = 400,
      Color lineColor = Colors.red,
      int lineW = 6,
    }) async {
  String str = '';
  for(var a in coordinate){
    str = str +  (str == '' ? '${a.longitude},${a.latitude}' : ';${a.longitude},${a.latitude}');
  }

  final url = 'https://restapi.amap.com/v3/staticmap?zoom=15&size=$w*$h&paths=$lineW,0xf44336,1,,:$str&key=1b8affa0d5a29d7e07424644ff323b1b';
  print(url);
  // final url =
  //     'https://restapi.amap.com/v3/staticmap?location=${coordinate.longitude},${coordinate.latitude}&zoom=$zoomLevel&key=$_webKey&size=${size.width.toInt()}*${size.height.toInt()}';

  HttpClient httpClient = HttpClient();
  var request = await httpClient.getUrl(Uri.parse(url));
  var response = await request.close();
  return consolidateHttpClientResponseBytes(response);
}