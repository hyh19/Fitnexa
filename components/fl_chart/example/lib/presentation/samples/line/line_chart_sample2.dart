import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    // AppColors.contentColorCyan,
    // AppColors.contentColorBlue,
    Colors.blue,
    Colors.green
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(showAvg ? avgData() : mainData()),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                fontSize: 12,
                color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      minX: 0,
      // X轴最小的数据
      maxX: 18,
      // X轴最大的数据
      minY: 0,
      // Y轴最小的数据
      maxY: 6,
      // Y轴最大的数据
      // baselineX: 1,  // X轴基线
      baselineY: 0,
      // Y轴基线
      // 图表背景信息
      // backgroundColor: Colors.blue,
      // 额外信息,水平线和垂直线相关信息
      extraLinesData: ExtraLinesData(
        horizontalLines: [
          HorizontalLine(
            y: 3,
            strokeWidth: 1,
            color: Colors.red,
            dashArray: [10, 10],
          ),
        ],
        verticalLines: [
          VerticalLine(
            x: 10,
            strokeWidth: 1,
            color: Colors.red,
            dashArray: [10, 10],
          ),
        ],
      ),
      // 格线信息
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        // 水平线
        getDrawingHorizontalLine: (value) {
          print('horizontalLine value = $value');

          return const FlLine(
            strokeWidth: 0.5,
            color: AppColors.mainGridLineColor,
          );
        },
        // 垂直线
        getDrawingVerticalLine: (value) {
          print('verticalLIne value = $value');
          return const FlLine(
            strokeWidth: 0.5,
            color: AppColors.mainGridLineColor,
          );
        },
      ),
      // 标题信息
      titlesData: FlTitlesData(
        show: true,
        // 右侧标题信息
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        // 顶部标题信息
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        // 底部标题信息
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        // 左侧标题信息
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      // 图标边框信息
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      // 折线/曲线数据
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
            FlSpot(12, 3),
            FlSpot(13, 2),
            FlSpot(14, 5),
            FlSpot(15, 3.1),
            FlSpot(16, 4),
            FlSpot(17, 3),
            FlSpot(18, 4),
          ],
          barWidth: 2,
          isCurved: true,
          // 是否是曲线 true 曲线 false 折线
          isStepLineChart: false,
          isStrokeCapRound: false,
          isStrokeJoinRound: true,
          gradient: LinearGradient(colors: gradientColors),
          dotData: const FlDotData(
            show: false, // 是否显示点
          ),
          belowBarData: BarAreaData(
            show: true, // 是否显示区域
            gradient: LinearGradient(
              colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
            ),
          ),
        ),
      ],
      // 触摸时相关信息
      lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            tooltipMargin: 15,
            tooltipRoundedRadius: 5,
            tooltipBgColor: Colors.white,
            horizontalFixed: true,
            fitInsideHorizontally: false,
            showOnTopOfTheChartBoxArea: true,
            getTooltipItems: defaultLineTooltipItem,
          ),
          getTouchedSpotIndicator: (barData, spotIndexes) {
            return spotIndexes.map((spotIndex) {
              final spot = barData.spots[spotIndex];
              return TouchedSpotIndicatorData(
                const FlLine(
                  strokeWidth: 1,
                  color: Colors.yellow,
                ),
                FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) {
                    return FlDotCirclePainter(
                      radius: 5,
                      strokeWidth: 1,
                      color: Colors.white,
                      strokeColor: Colors.blue,
                    );
                  },
                ),
              );
            }).toList();
          }),
    );
  }

  // 触摸时气泡信息
  List<LineTooltipItem> defaultLineTooltipItem(List<LineBarSpot> touchedSpots) {
    return touchedSpots.map((LineBarSpot touchedSpot) {
      const textStyle = TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      );
      return LineTooltipItem(touchedSpot.y.toString(), textStyle);
    }).toList();
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
