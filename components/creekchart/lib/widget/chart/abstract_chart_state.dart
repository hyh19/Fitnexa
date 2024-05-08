import 'package:creekchart/creekchart.dart';
import 'package:fl_chart/fl_chart.dart';

/// @Desc
/// @Time   2023/10/15 13:36 星期日
/// @Author HL

abstract class AbstractChartState {
  ChartState buildLineChartState();

  ChartState buildBarChartState();

  BarTouchData? barTouchData();

  BarTooltipItem? buildBarTooltipItem(
    BarChartGroupData group,
    int groupIndex,
    BarChartRodData rod,
    int rodIndex,
  );

  ExtraLinesData? extraLinesData();

  FlBorderData? borderData();

  FlGridData? gridData();

  FlTitlesData? titlesData();

  LineChartBarData lineChartBarData();

  LineTouchData lineTouchData();

  List<LineTooltipItem?> getTooltipItems(List<LineBarSpot> touchedSpots);

  List<TouchedSpotIndicatorData?> getTouchedSpotIndicator(
    LineChartBarData barData,
    List<int> spotIndexes,
  );

  /// 触摸回调
  void touchCallback(FlTouchEvent event, LineTouchResponse? response);
}
