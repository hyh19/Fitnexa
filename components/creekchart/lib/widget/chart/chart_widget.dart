import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:creekchart/widget/chart/chart_state.dart';

/// @Desc   图表组件
/// @Time   2023/10/14 20:39 星期六
/// @Author HL

class ChartWidget extends StatelessWidget {
  /// 所有属性统一由外界配置好传入
  final ChartState chartState;

  const ChartWidget({super.key, required this.chartState});

  @override
  Widget build(BuildContext context) {
    return chartState is LineChartState
        ? lineChart(chartState as LineChartState)
        : barChart(chartState as BarChartState);;
  }

  /// 折线/曲线组件
  Widget lineChart(LineChartState chartState) =>
      LineChart(
        LineChartData(
          minX: chartState.minX,
          maxX: chartState.maxX,
          minY: chartState.minY,
          maxY: chartState.maxY,
          clipData: chartState.clipData,
          gridData: chartState.gridData,
          baselineX: chartState.baselineX,
          baselineY: chartState.baselineY,
          titlesData: chartState.titlesData,
          borderData: chartState.borderData,
          lineBarsData: chartState.lineBarsData,
          lineTouchData: chartState.lineTouchData,
          extraLinesData: chartState.extraLinesData,
          backgroundColor: chartState.backgroundColor,
          rangeAnnotations: chartState.rangeAnnotations,
        ),
      );

  /// 柱状图组件
  Widget barChart(BarChartState chartState) =>
      BarChart(
        swapAnimationCurve: chartState.swapAnimationCurve,
        swapAnimationDuration: chartState.swapAnimationDuration,
        BarChartData(
          minY: chartState.minY,
          maxY: chartState.maxY,
          gridData: chartState.gridData,
          barGroups: chartState.barGroups,
          baselineY: chartState.baselineY,
          titlesData: chartState.titlesData,
          borderData: chartState.borderData,
          groupsSpace: chartState.groupsSpace,
          barTouchData: chartState.barTouchData,
          alignment: chartState.barChartAlignment,
          extraLinesData: chartState.extraLinesData,
          backgroundColor: chartState.backgroundColor,
          rangeAnnotations: chartState.rangeAnnotations,
        ),
      );
}
