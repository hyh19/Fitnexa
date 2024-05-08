import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PolylinePainter extends CustomPainter {

  final Picture? picture;
  final Picture? trianglePicture;

  PolylinePainter(this.picture,{this.trianglePicture});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawPicture(picture!);
    if(trianglePicture != null){
      canvas.drawPicture(trianglePicture!);
    }

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class Polyline {
  final PictureRecorder recorder = PictureRecorder();
  final double strokeWidth;
  final List colorList;
  final double proportion;
  Size? size;

  Polyline(this.size, {this.strokeWidth = 5, required this.colorList, this.proportion = 1.0});

  Picture pictureRecord() {
    Canvas canvas = Canvas(recorder);
    canvas.clipRect(Rect.fromLTRB(0, 0, size!.width, size!.height));

    drawSegmentLine(canvas, size!);

    return recorder.endRecording();
  }

  drawSegmentLine(Canvas canvas, Size size) {
    if (colorList.isEmpty) return;

    double halfWidth = size.width / 2;
    double halfHeight = size.height / 2;
    canvas.translate(0, halfHeight);

    Paint mainPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = strokeWidth
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.square;

    var max = size.width - 20 - 10 * (colorList.length - 1); // size获取到宽度
    double dashWidth = max / colorList.length;
    var dashSpace = 10;
    double startX = 10;
    final space = (dashSpace + dashWidth);
    canvas.save();
    if (colorList.length == 1) {
      mainPaint.color = colorList[0];
      mainPaint.strokeCap = StrokeCap.round;
      canvas.drawLine(Offset(startX, 0.0), Offset(startX + dashWidth, 0.0), mainPaint);
    } else if (colorList.length == 2) {
      // 目前两条分割线做不同长度处理
      for (int i = 0; i < colorList.length; i++) {
        mainPaint.color = colorList[i];
        if (i == 0) {
          canvas.drawLine(Offset(startX, 0.0), Offset(startX + max * proportion, 0.0), mainPaint);
          startX += dashSpace + max * proportion;
        } else {
          canvas.drawLine(Offset(startX, 0.0), Offset(startX + max - max * proportion, 0.0), mainPaint);
          startX += dashSpace + max - max * proportion;
        }
        // 设置起点和终点线段样式
        if (i == 0) {
          Paint mainPaint1 = Paint()
            ..color = colorList[0]
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round;
          canvas.drawPoints(PointMode.points, [const Offset(5, 0.0)], mainPaint1);
        }
        if (i == colorList.length - 1) {
          Paint mainPaint1 = Paint()
            ..color = colorList[colorList.length - 1]
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round;
          canvas.drawPoints(PointMode.points, [Offset(startX - 5, 0.0)], mainPaint1);
        }
      }
    } else {
      for (int i = 0; i < colorList.length; i++) {
        mainPaint.color = colorList[i];
        canvas.drawLine(Offset(startX, 0.0), Offset(startX + dashWidth, 0.0), mainPaint);
        startX += space;

        // 设置起点和终点线段样式
        if (i == 0) {
          Paint mainPaint1 = Paint()
            ..color = colorList[0]
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round;
          canvas.drawPoints(PointMode.points, [const Offset(5, 0.0)], mainPaint1);
        }
        if (i == colorList.length - 1) {
          Paint mainPaint1 = Paint()
            ..color = colorList[colorList.length - 1]
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round;
          canvas.drawPoints(PointMode.points, [Offset(startX - 5, 0.0)], mainPaint1);
        }
      }
    }
    canvas.restore();
  }
}

class Triangle{

  final PictureRecorder _recorder = PictureRecorder();
  final Size size;
  final double offsetX;

  Triangle(this.size,{required this.offsetX});

  Picture pictureRecord(){

    Canvas canvas = Canvas(_recorder);
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.translate(offsetX, 0);

    double startY = 2.5;
    double startX = 0;
    double triangleW = 8;


    Path path = Path()
    ..moveTo(startX, startY)
    ..lineTo(triangleW, startY)
    // ..lineTo(triangleW/2, startY+triangleW)
    ..lineTo(startX, startY);
    path.close();
    canvas.save();

    Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    paint.strokeJoin = StrokeJoin.round;
    paint.strokeWidth = 3;
    canvas.drawPath(path, paint);
    canvas.restore();

    return _recorder.endRecording();

  }

}