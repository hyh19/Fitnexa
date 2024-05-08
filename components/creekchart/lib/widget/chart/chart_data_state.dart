import 'package:creekchart/widget/chart/chart_state.dart';

/// @Desc   图表数据和属性
/// @Time   2023/10/18 22:30 星期三
/// @Author HL

class ChartDataAndState<T> {
  T? chartData;

  BarChartState? barChartState;

  LineChartState? lineChartState;

  ChartDataAndState({this.chartData, this.barChartState, this.lineChartState});
}
