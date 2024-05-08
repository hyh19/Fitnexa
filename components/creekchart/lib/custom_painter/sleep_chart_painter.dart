import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SleepType {
  awake,
  rem,
  shallow,
  deep
}

class SleepChartPainter extends CustomPainter {

  final double lineHeight;
  final List<double> widthList;
  final List<double> heightList;
  final List<Color> colorList;
  final Size widthSize;
   Color? background1;
   Color? background2;

  SleepChartPainter(
      {required this.widthList,
        required this.lineHeight,
        required this.colorList,
        required this.heightList,
        required this.widthSize,
        this.background1,
        this.background2,
      });

  @override
  bool? hitTest(Offset position) => true;



  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double halfWidth = size.width/2;
    double halfHeight = size.height/2;
    canvas.translate(0, 0);
    canvas.save();
    /// 绘制背景
    drawBackGround(canvas, size);
    canvas.restore();

    canvas.save();
    drawDataChart(canvas,size);
    canvas.restore();

  }

  drawDataChart(Canvas canvas, Size size) {
    double startX = 0;

    /// 画睡眠垂直线
    Paint mainPaint = Paint()
      ..color = const Color(0x00C070FF).withOpacity(1.0)
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    /// 画睡眠方块图
    for (int i = 0; i < widthList.length; i++) {
      Rect rc = Rect.fromLTWH(startX, heightList[i], widthSize.width * widthList[i], lineHeight / 3);
      RRect rrc = RRect.fromRectAndRadius(rc, const Radius.circular(4));
      canvas.drawRRect(rrc, Paint()..color = colorList[i]);
      startX += widthSize.width * widthList[i];

      Path path = Path()..moveTo(startX, heightList[i] + (lineHeight / 3) / 2);
      if(i+1>=heightList.length){
        path.lineTo(startX, heightList[i] + (lineHeight / 3) / 2);
      }else{
        path.lineTo(startX, heightList[i + 1] + (lineHeight / 3) / 2);
      }
      canvas.drawPath(path, mainPaint);
    }
  }

  ///画背景图
  void drawBackGround(Canvas canvas, Size size) {
    Paint awakePaint = Paint()..color = ((background1 == null)? const Color(0xFFF0F0F0):background1!);
    RRect awakeRRC = RRect.fromLTRBAndCorners(0, 0, size.width, lineHeight, topLeft: const Radius.circular(5), topRight: const Radius.circular(5));
    canvas.drawRRect(awakeRRC, awakePaint);

    Paint remPaint = Paint()..color = ((background2 == null)? const Color(0xFFF7F5F3):background2!);
    Rect remRC = Rect.fromLTWH(0, lineHeight, size.width, lineHeight);
    RRect remRRC = RRect.fromRectAndRadius(remRC, const Radius.circular(0));
    canvas.drawRRect(remRRC, remPaint);

    Paint shallowPaint = Paint()..color = ((background1 == null)? const Color(0xFFF0F0F0):background1!);
    Rect shallowRC = Rect.fromLTWH(0, (lineHeight + 0) * 2, size.width, lineHeight);
    RRect shallowRRC = RRect.fromRectAndRadius(shallowRC, const Radius.circular(0));
    canvas.drawRRect(shallowRRC, shallowPaint);

    Paint deepPaint = Paint()..color = ((background2 == null)? const Color(0xFFF7F5F3):background2!);
    RRect deepRRC =
        RRect.fromLTRBAndCorners(0, (lineHeight + 0) * 4, size.width, lineHeight * 3, bottomLeft: const Radius.circular(5), bottomRight: const Radius.circular(5));
    canvas.drawRRect(deepRRC, deepPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}