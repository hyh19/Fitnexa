import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {

  TrianglePainter(this.color, this.cornerRadius);

  final Color color;
  final double cornerRadius;

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    Paint _paint = Paint();
    _paint.color = color; // 三角形的颜色
    _paint.strokeWidth = 7;
    _paint.strokeJoin = StrokeJoin.round;
    _paint.style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(0, 0);// 开始点
    path.lineTo(size.width, 0); // 第一条线
    path.lineTo(size.width/2, size.height); // 第一条线
    path.lineTo(0, 0); // 第二条线
    path.close(); // 闭合路径


    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}