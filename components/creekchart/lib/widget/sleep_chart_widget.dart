import 'package:creekchart/custom_painter/line_segment_painter.dart';
import 'package:creekchart/custom_painter/sleep_chart_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SleepChartWidget extends StatelessWidget {

  final Size? size;
  final double lineHeight;
  final List<double> widthList;
  final List<double> heightList;
  final List<Color> colorList;
  Color? background1;
  Color? background2;

   SleepChartWidget({
    super.key,
    this.size,
    required this.lineHeight,
    required this.widthList,
    required this.heightList,
    required this.colorList,
    this.background1,
    this.background2
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
        onLongPressMoveUpdate: (details){
          print('触摸的位置${details.localPosition.dx}');
          print(widthList.map((e) => e).toString());
        },
        child: CustomPaint(
          size: size!,
          painter:SleepChartPainter(lineHeight:lineHeight,heightList: heightList,widthList: widthList,colorList: colorList,widthSize: size!,background1: background1,background2: background2),
        ),
      ),
    );  }
}
