import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularProgressWidget extends StatelessWidget {
  final Size size;
  final Color backColor;
  final Color? color;
  final Gradient? gradient;
  final double strokeWidth;
  final double radius;
  final double currentProgress;
  final TextStyle? textStyle;
  final String? progressTitle;

  const CircularProgressWidget(
      {Key? key,
      required this.size,
      required this.backColor,
      this.color,
      this.gradient,
      required this.strokeWidth,
      required this.radius,
      required this.currentProgress,
      this.textStyle,
      this.progressTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size,
      painter: CircularProgressPainter(
          backColor: backColor,
          color: color,
          gradient: gradient,
          strokeWidth: strokeWidth,
          radius: radius,
          currentProgress: currentProgress,
          textStyle: textStyle,
          progressTitle: progressTitle),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final Color backColor;
  final Color? color;
  final Gradient? gradient;
  final double strokeWidth;
  final double radius;
  final double currentProgress;
  final TextStyle? textStyle;
  final String? progressTitle;

  CircularProgressPainter(
      {required this.backColor,
      this.color,
      this.gradient,
      required this.strokeWidth,
      required this.radius,
      required this.currentProgress,
      this.textStyle,
      this.progressTitle});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    // canvas.translate(offset.dx/2, offset.dy/2);
    drawCircleView(canvas, size);
    canvas.restore();
    drawTextView(canvas, size);
  }

  drawCircleView(Canvas canvas, Size size) {
    double dx = size.width / 2;
    double dy = size.height / 2;
    canvas.translate(dx, dy);

    Paint paint1 = Paint();
    paint1.color = backColor;
    paint1.strokeWidth = strokeWidth;
    paint1.style = PaintingStyle.stroke;
    canvas.drawCircle(const Offset(0, 0), radius, paint1);

    final rect = Rect.fromCircle(center: const Offset(0, 0), radius: radius);
    Paint paint2 = Paint();
    if (color != null) {
      paint2.color = color!;
    }
    if (gradient != null) {
      paint2.shader = gradient!.createShader(rect);
    }
    paint2.strokeWidth = strokeWidth;
    paint2.style = PaintingStyle.stroke;
    paint2.strokeCap = StrokeCap.round;
    canvas.drawArc(rect, -pi / 2, pi * currentProgress, false, paint2);
  }

  drawTextView(Canvas canvas, Size size) {
    double dx = size.width / 2;
    double dy = size.height / 2;
    // canvas.translate(dx, dy);
    canvas.save();
    TextPainter textPainter = TextPainter();
    textPainter.textDirection = TextDirection.ltr;
    textPainter.text = TextSpan(text: progressTitle, style: textStyle);
    textPainter.layout();
    double textStartPx = dx / 4;
    double textStartPy = dy / 2;
    textPainter.paint(canvas, Offset(textStartPx, textStartPy));
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
