import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoubleCircle extends CustomPainter {
  final double radius1;
  final double radius2;
  final double progress1;
  final double progress2;
  final Color backColor;
  final Color backColor2;
  final Color color1;
  final Color color2;
  final double strokeWidth;

  DoubleCircle(
      {required this.radius1,
        required this.radius2,
        required this.progress1,
        required this.progress2,
        required this.backColor,
        required this.backColor2,
        required this.color1,
        required this.color2,
        this.strokeWidth = 10});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    drawCircleView(canvas, size);
    drawCircleView2(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

  drawCircleView(Canvas canvas, Size size) {
    double dx = size.width / 2;
    double dy = size.height / 2;
    canvas.save();
    canvas.translate(dx, dy);

    Paint paint1 = Paint();
    paint1.color = backColor;
    paint1.strokeWidth = strokeWidth;
    paint1.style = PaintingStyle.stroke;
    canvas.drawCircle(const Offset(0, 0), radius1, paint1);

    Paint paint2 = Paint();
    paint2.color = color1;
    paint2.strokeWidth = strokeWidth;
    paint2.strokeCap = StrokeCap.round;
    paint2.style = PaintingStyle.stroke;
    canvas.drawArc(Rect.fromCircle(center: const Offset(0, 0), radius: radius1),
        -pi / 2, pi*progress1, false, paint2);
    canvas.restore();
  }

  drawCircleView2(Canvas canvas, Size size) {
    double dx = size.width / 2;
    double dy = size.height / 2;
    canvas.save();

    canvas.translate(dx, dy);

    Paint paint1 = Paint();
    paint1.color = backColor2;
    paint1.strokeWidth = strokeWidth;
    paint1.style = PaintingStyle.stroke;
    canvas.drawCircle(const Offset(0, 0), radius2, paint1);

    Paint paint2 = Paint();
    paint2.color = color2;
    paint2.strokeWidth = strokeWidth;
    paint2.strokeCap = StrokeCap.round;
    paint2.style = PaintingStyle.stroke;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(0, 0), radius: radius2),
        -pi / 2,
        pi * progress2,
        false,
        paint2);

    canvas.restore();
  }
}