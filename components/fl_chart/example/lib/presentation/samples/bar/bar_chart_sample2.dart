import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:fl_chart_app/util/extensions/color_extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample2 extends StatefulWidget {
  BarChartSample2({super.key});

  final Color leftBarColor = AppColors.contentColorYellow;
  final Color rightBarColor = AppColors.contentColorRed;
  final Color avgColor = AppColors.contentColorOrange.avg(AppColors.contentColorRed);

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);
    final barGroup8 = makeGroupData(7, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                makeTransactionsIcon(),
                const SizedBox(
                  width: 38,
                ),
                const Text(
                  'Transactions',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'state',
                  style: TextStyle(color: Color(0xff77839a), fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            Expanded(
              child: BarChart(
                BarChartData(
                  maxY: 20,

                  /// 标题信息
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 30,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        interval: 1,
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: leftTitles,
                      ),
                    ),
                  ),

                  /// 边框信息
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: const Color(0xff37434d)),
                  ),

                  /// 柱状数据
                  barGroups: showingBarGroups,

                  /// 水平和垂直表格信息
                  gridData: FlGridData(
                    show: false,
                    drawVerticalLine: false,
                    // horizontalInterval: 1,
                    // verticalInterval: 1,
                    // 水平线
                    getDrawingHorizontalLine: (value) {
                      return const FlLine(
                        strokeWidth: 1,
                        color: AppColors.mainGridLineColor,
                      );
                    },
                    // 垂直线
                    getDrawingVerticalLine: (value) {
                      return const FlLine(
                        strokeWidth: 1,
                        color: AppColors.mainGridLineColor,
                      );
                    },
                  ),

                  /// 附加信息 - 水平和竖直
                  extraLinesData: ExtraLinesData(
                    horizontalLines: [
                      HorizontalLine(
                        y: 11,
                        strokeWidth: 1,
                        color: Colors.red,
                        dashArray: [6, 3],
                      ),
                    ],
                  ),

                  /// 添加horizontalFixed属性
                  /// 1、是否固定Tooltip fix 属性 true 不能消失 false 消失-保持原状
                  /// 2、horizontalFixed true 绘制竖线 false 不绘制
                  barTouchData: BarTouchData(
                    // enabled: false,
                    // allowTouchBarBackDraw: true,
                    // longPressDuration: Duration.zero,
                    touchTooltipData: BarTouchTooltipData(
                      horizontalFixed: true,
                      fitInsideVertically: false,
                      fitInsideHorizontally: false,
                      direction: TooltipDirection.top,
                      tooltipPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                      tooltipRoundedRadius: 6,
                      tooltipBgColor: Colors.white,
                      getTooltipItem: (group, groupIndex, rod, rodIndex) => BarTooltipItem(
                        'fhdalfhdlaf',
                        TextStyle(
                          fontSize: 18,
                          color: rod.color,
                          fontWeight: FontWeight.bold,
                          shadows: const [
                            Shadow(
                              blurRadius: 12,
                              color: Colors.black26,
                            )
                          ],
                        ),
                        textAlign: TextAlign.start,
                        children: [
                          TextSpan(
                            text: '范围',
                            style: TextStyle(fontSize: 10, color: rod.color),
                          ),
                          TextSpan(
                            text: '\n${rod.fromY} - ${rod.toY}',
                            style: TextStyle(fontSize: 14, color: rod.color),
                          ),
                        ],
                      ),
                    ),
                    touchCallback: (FlTouchEvent event, response) {
                      // print('event = $event');

                      var showingTooltipIndicators =
                          response?.spot?.touchedBarGroup.showingTooltipIndicators;

                      // print('showingTooltipIndicators = $showingTooltipIndicators');

                      // if (response == null || response.spot == null) {
                      //   setState(() {
                      //     touchedGroupIndex = -1;
                      //     showingBarGroups = List.of(rawBarGroups);
                      //   });
                      //   return;
                      // }
                      //
                      // touchedGroupIndex = response.spot!.touchedBarGroupIndex;
                      //
                      // setState(() {
                      //   if (!event.isInterestedForInteractions) {
                      //     touchedGroupIndex = -1;
                      //     showingBarGroups = List.of(rawBarGroups);
                      //     return;
                      //   }
                      //   showingBarGroups = List.of(rawBarGroups);
                      //   if (touchedGroupIndex != -1) {
                      //     var sum = 0.0;
                      //     for (final rod in showingBarGroups[touchedGroupIndex].barRods) {
                      //       sum += rod.toY;
                      //     }
                      //     final avg = sum / showingBarGroups[touchedGroupIndex].barRods.length;
                      //
                      //     showingBarGroups[touchedGroupIndex] =
                      //         showingBarGroups[touchedGroupIndex].copyWith(
                      //           barRods: showingBarGroups[touchedGroupIndex].barRods.map((rod) {
                      //             return rod.copyWith(toY: avg, color: widget.avgColor);
                      //           }).toList(),
                      //         );
                      //   }
                      // });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 14,
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
    );
    String text;
    if (value == 0) {
      text = '1K';
    } else if (value == 10) {
      text = '5K';
    } else if (value == 19) {
      text = '10K';
    } else {
      return Container();
    }
    return SideTitleWidget(
      space: 5,
      axisSide: meta.axisSide,
      fitInside: SideTitleFitInsideData.fromTitleMeta(meta, distanceFromEdge: 0),
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su', 'qw'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 6,/// 一组内柱状图的间隔距离
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          fromY: y1 / 2,
          // color: widget.leftBarColor,
          width: width,
          color: Colors.blue,
          // borderRadius: const BorderRadius.only(
          //   topLeft: Radius.circular(6),
          //   topRight: Radius.circular(6),
          // ),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        // BarChartRodData(
        //   toY: y2,
        //   // color: widget.rightBarColor,
        //   width: width,
        //   color: Colors.blue,
        //   borderRadius: const BorderRadius.only(
        //     topLeft: Radius.circular(6),
        //     topRight: Radius.circular(6),
        //   ),
        // ),
      ],
    );
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
