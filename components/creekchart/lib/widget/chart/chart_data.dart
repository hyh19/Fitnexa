import 'dart:convert';

import 'package:flutter/material.dart';

/// @Desc
/// @Time   2023/10/18 22:29 星期三
/// @Author HL

class ChartData {
  /// X轴的最小值
  double? minX;

  /// X轴的最大值
  double? maxX;

  /// Y轴的最小值
  double? minY;

  /// Y轴的最大值
  double? maxY;

  /// Y轴标题显示的最小值
  double? titleMinY;

  /// Y轴标题显示的最大值
  double? titleMaxY;

  /// 水平总体的平均值
  double? horizontalAverage;

  /// 水平总体的平均值
  double? verticalAverage;

  /// 左侧标题间隔步长
  double? leftTitleInterval;

  /// 顶部标题间隔步长
  double? topTitleInterval;

  /// 右侧标题间隔步长
  double? rightTitleInterval;

  /// 底部标题间隔步长
  double? bottomTitleInterval;

  double? barWidth;

  double? groupsSpace;

  /// 所有点的集合
  List<Point>? points;

  /// 所有点的集合
  List<Bar>? barList;

  /// 每个点或柱状图的附加信息
  Map<int, Object>? extraData;

  ChartData({
    this.minX,
    this.maxX,
    this.minY,
    this.maxY,
    this.titleMinY,
    this.titleMaxY,
    this.leftTitleInterval,
    this.topTitleInterval,
    this.rightTitleInterval,
    this.bottomTitleInterval,
    this.horizontalAverage,
    this.verticalAverage,
    this.points,
    this.barList,
    this.extraData,
  });

  factory ChartData.fromJson(Map<String, dynamic> json) => $ChartDataFromJson(json);

  Map<String, dynamic> toJson() => $ChartDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

class Point {
  /// X轴的坐标点
  double? x;

  /// Y轴的最小值
  double? minY;

  /// Y轴的最大值
  double? maxY;

  /// Y轴的平均值
  double? average;

  Point({this.x, this.minY, this.maxY, this.average});

  factory Point.fromJson(Map<String, dynamic> json) => $PointFromJson(json);

  Map<String, dynamic> toJson() => $PointToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

class Bar {
  /// X轴的坐标点
  int x;

  double barWidth;

  /// 每一段的Y轴坐标
  List<double> barYList;

  /// 每一段的颜色
  List<Color> barColorList;

  Bar({
    required this.x,
    required this.barWidth,
    required this.barYList,
    required this.barColorList,
  });
}

ChartData $ChartDataFromJson(Map<String, dynamic> json) {
  final ChartData chartData = ChartData();
  final double? minX = double.tryParse((json['minX']));
  if (minX != null) {
    chartData.minX = minX;
  }
  final double? maxX = double.tryParse(json['maxX']);
  if (maxX != null) {
    chartData.maxX = maxX;
  }
  final double? minY = double.tryParse(json['minY']);
  if (minY != null) {
    chartData.minY = minY;
  }
  final double? maxY = double.tryParse(json['maxY']);
  if (maxY != null) {
    chartData.maxY = maxY;
  }

  final double? titleMinY = double.tryParse(json['titleMinY']);
  if (minY != null) {
    chartData.titleMinY = titleMinY;
  }
  final double? titleMaxY = double.tryParse(json['titleMaxY']);
  if (maxY != null) {
    chartData.titleMaxY = titleMaxY;
  }

  final double? average = double.tryParse(json['average']);
  if (average != null) {
    chartData.horizontalAverage = average;
  }
  final List<Point>? points = (json['points'] as List<dynamic>?)?.map((e) => e as Point).toList();
  if (points != null) {
    chartData.points = points;
  }
  return chartData;
}

Map<String, dynamic> $ChartDataToJson(ChartData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['minX'] = entity.minX;
  data['maxX'] = entity.maxX;
  data['minY'] = entity.minY;
  data['maxY'] = entity.maxY;
  data['points'] = entity.points?.map((v) => $PointToJson(v)).toList();
  return data;
}

Point $PointFromJson(Map<String, dynamic> json) {
  final Point point = Point();
  final double? x = double.tryParse(json['x']);
  if (x != null) {
    point.x = x;
  }
  final double? minY = double.tryParse(json['minY']);
  if (minY != null) {
    point.minY = minY;
  }
  final double? maxY = double.tryParse(json['maxY']);
  if (maxY != null) {
    point.maxY = maxY;
  }
  final double? average = double.tryParse(json['average']);
  if (average != null) {
    point.average = average;
  }
  return point;
}

Map<String, dynamic> $PointToJson(Point entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['x'] = entity.x;
  data['minY'] = entity.minY;
  data['maxY'] = entity.maxY;
  data['average'] = entity.average;
  return data;
}
