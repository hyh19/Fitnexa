import 'package:creekchart/custom_painter/sleep_chart_painter.dart';
import 'package:flutter/cupertino.dart';

import '../custom_painter/double_circle_painter.dart';

class DoubleCircleWidget extends StatelessWidget {

  final double? radius1;
  final double? radius2;
  final double progress1;
  final double progress2;
  final Color? backColor;
  final Color backColor2;
  final Color? color1;
  final Color? color2;
  final double? strokeWidth;
  final Size size;

  const DoubleCircleWidget({Key? key,
    required this.size,
    this.radius1,
    this.radius2,
    this.backColor,
    required this.backColor2,
    this.color1,
    this.color2,
    this.progress1=0.01,
    this.progress2=0.01,
    this.strokeWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        size: size,
        painter: DoubleCircle(
            radius1: radius1!,
            radius2: radius2!,
            progress1: progress1,
            progress2: progress2,
            backColor: backColor!,
            color1: color1!,
            color2: color2!,
            strokeWidth: strokeWidth!,
            backColor2: backColor2
        )
    );
  }
}
