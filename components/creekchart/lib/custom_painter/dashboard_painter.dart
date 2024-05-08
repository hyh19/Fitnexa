import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tool/radian_utils.dart';

class DashboardCustomPainter extends CustomPainter{

  /// 4. 设置圆弧半径
  final int tableCount;
  final int startTableCount;
  /// 设置圆的弧度
  final double wholeCirclesRadian;
  final double strokeWidth;
  final Color firstColor;
  final Color secondColor;

  DashboardCustomPainter({required this.tableCount,required this.startTableCount, this.wholeCirclesRadian=3.783185307179586,required this.strokeWidth,required this.firstColor,required this.secondColor});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double halfWidth = size.width/2;
    double halfHeight = size.height/2;
    canvas.translate(halfWidth, halfHeight);
    ///设置画笔属性
    Paint mainPaint = Paint();
    mainPaint.color = firstColor;
    mainPaint.strokeWidth = strokeWidth;
    mainPaint.style = PaintingStyle.stroke;
    mainPaint.strokeCap = StrokeCap.square;
    /// 画中线
    canvas.save();
    drawShortLine(canvas, mainPaint, halfHeight);
    canvas.restore();

    /// 画后半段圆弧
    canvas.save();
    for(int i= startTableCount;i<tableCount;i++){
      canvas.rotate(wholeCirclesRadian/tableCount);
      drawShortLine(canvas, mainPaint, halfHeight);
    }
    canvas.restore();
    /// 画前半段圆弧
    canvas.save();
    for(int i =startTableCount;i>=0;i--){
      mainPaint.color = secondColor;
      canvas.rotate(-wholeCirclesRadian/tableCount);
      drawShortLine(canvas, mainPaint, halfHeight);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  void drawShortLine(Canvas canvas, Paint paintMain, double halfHeight) {
    canvas.drawLine(Offset(0, -halfHeight), Offset(0, -halfHeight+7), paintMain);
  }
}