import 'package:flutter/cupertino.dart';

import '../custom_painter/triangle_painter.dart';

class TriangleWidget extends StatelessWidget {

  TriangleWidget(this.size, this.color, this.cornerRadius);

  final Size size;
  final Color color;
  final double cornerRadius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size, // 指定三角形的大小
      painter: TrianglePainter(color,cornerRadius),
    );
  }
}