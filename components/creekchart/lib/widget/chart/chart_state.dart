import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

/// @Desc   图表相关属性
/// @Time   2023/10/14 20:39 星期六
/// @Author HL

/// 图表基本属性
class ChartState {
  /// X轴的最小值
  final double? minX;

  /// X轴的最大值
  final double? maxX;

  /// Y轴的最小值
  final double? minY;

  /// Y轴的最大值
  final double? maxY;

  /// X轴基线
  final double? baselineX;

  /// Y轴基线
  final double? baselineY;

  /// 表格信息
  final FlGridData? gridData;

  /// 组内之间的间距
  final double? groupsSpace;

  /// 图表背景颜色
  final Color? backgroundColor;

  /// 边框颜色
  final FlBorderData? borderData;

  /// 上、下、左、右的标题信息
  final FlTitlesData titlesData;

  /// 附加线信息
  final ExtraLinesData? extraLinesData;

  /// 数据变化时的动画
  final RangeAnnotations? rangeAnnotations;

  ChartState({
    this.minX,
    this.maxX,
    this.minY,
    this.maxY,
    this.baselineX,
    this.baselineY,
    this.gridData,
    this.borderData,
    this.groupsSpace,
    this.backgroundColor,
    this.rangeAnnotations,
    this.titlesData = const FlTitlesData(),
    this.extraLinesData = const ExtraLinesData(),
  });
}

/// 折线图相关属性
class LineChartState extends ChartState with EquatableMixin {
  final FlClipData? clipData;

  final LineTouchData lineTouchData;

  final List<LineChartBarData> lineBarsData;

  LineChartState({
    super.minX,
    super.maxX,
    super.minY,
    super.maxY,
    super.baselineX,
    super.baselineY,
    super.gridData,
    super.borderData,
    super.groupsSpace,
    super.backgroundColor,
    super.rangeAnnotations,
    super.titlesData,
    super.extraLinesData,
    this.lineBarsData = const [],
    this.clipData = const FlClipData.none(),
    this.lineTouchData = const LineTouchData(),
  });

  @override
  List<Object?> get props => [
        minX,
        maxX,
        minY,
        maxY,
        baselineX,
        baselineY,
        gridData,
        borderData,
        groupsSpace,
        backgroundColor,
        rangeAnnotations,
        titlesData,
        extraLinesData,
        lineBarsData,
        clipData,
        lineTouchData,
      ];
}

class BarChartState extends ChartState with EquatableMixin {
  final Curve swapAnimationCurve;

  /// 柱状图的触摸信息
  final BarTouchData? barTouchData;

  final Duration swapAnimationDuration;

  /// 柱状图组的数据
  final List<BarChartGroupData>? barGroups;

  /// 柱状图的对其方式
  final BarChartAlignment? barChartAlignment;

  BarChartState({
    super.minX,
    super.maxX,
    super.minY,
    super.maxY,
    super.baselineX,
    super.baselineY,
    super.gridData,
    super.borderData,
    super.groupsSpace,
    super.backgroundColor,
    super.rangeAnnotations,
    super.titlesData,
    super.extraLinesData,
    this.barGroups,
    this.barTouchData,
    this.barChartAlignment,
    this.swapAnimationCurve = Curves.linear,
    this.swapAnimationDuration = const Duration(milliseconds: 150),
  });

  @override
  List<Object?> get props => [
        minX,
        maxX,
        minY,
        maxY,
        baselineX,
        baselineY,
        gridData,
        borderData,
        groupsSpace,
        backgroundColor,
        rangeAnnotations,
        titlesData,
        extraLinesData,
        barGroups,
        barTouchData,
        barChartAlignment,
        swapAnimationCurve,
        swapAnimationDuration,
      ];
}
