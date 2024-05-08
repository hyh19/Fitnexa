import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscPainter extends CustomPainter {

  final double radius;
  final Color color;

  DiscPainter({required this.radius,required this.color,});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    drawCircleView(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

  drawCircleView(Canvas canvas,Size size){


    double dx = size.width/2;
    double dy = size.height/2;
    canvas.save();

    canvas.translate(dx,dy);

    Paint paint = Paint();
    paint.color = color;
    paint.strokeWidth = 10;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(0, 0), radius, paint);

    canvas.restore();

  }

}