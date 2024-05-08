import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SleepType {
    awake,
    rem,
    shallow,
    deep
}

class LineSegmentPainter extends CustomPainter {

  final Color paintColor;
  final double lineWidth;
  final double lineHeight;
  final StrokeCap capValue;

  LineSegmentPainter(this.lineWidth,this.lineHeight,this.paintColor,this.capValue);

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

  drawDataChart(Canvas canvas,Size size){
    double startX = 0;
    double awakeH = 0;
    double remH = lineHeight+4;
    double shallowH = (lineHeight+4)*2;
    double deepH = (lineHeight+4)*3;

    Paint mainPaint = Paint()
      ..color = const Color(0x004287ff).withOpacity(1.0)
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Paint awakePaint = Paint()..color = const Color(0x000db5b5).withOpacity(1.0);
    Paint remPaint = Paint()..color = const Color(0x004287ff).withOpacity(1.0);
    Paint shallowPaint = Paint()..color = const Color(0x000d59de).withOpacity(1.0);
    Paint deepPaint = Paint()..color = const Color(0x00642ab5).withOpacity(1.0);

    List<double> lineHList = [awakeH,remH,shallowH,deepH,awakeH,shallowH];
    List<double> widthL = [0.2,0.1,0.2,0.2,0.2,0.1];
    List<Paint> paintList = [awakePaint,remPaint,shallowPaint,deepPaint,awakePaint,shallowPaint];


    for(int i =0;i<lineHList.length;i++){
      Rect rc = Rect.fromLTWH(startX, lineHList[i], size.width*widthL[i], lineHeight);
      RRect rrc = RRect.fromRectAndRadius(rc, const Radius.circular(4));
      canvas.drawRRect(rrc, paintList[i]);
      startX += size.width*widthL[i];
      // Path path = Path()..moveTo(startX, lineHeight);
      // path.lineTo(startX, lineHList[i]+lineHeight);
      // canvas.drawPath(path, mainPaint);
    }

  }

  drawBackGround(Canvas canvas,Size size){

    Paint awakePaint = Paint()..color = const Color(0x000db5b5).withOpacity(0.1);
    Rect awakeRC = Rect.fromLTWH(0, 0, size.width, lineHeight);
    RRect awakeRRC = RRect.fromRectAndRadius(awakeRC, const Radius.circular(5));
    canvas.drawRRect(awakeRRC, awakePaint);

    Paint remPaint = Paint()..color = const Color(0x004287ff).withOpacity(0.1);
    Rect remRC = Rect.fromLTWH(0, lineHeight+4, size.width, lineHeight);
    RRect remRRC = RRect.fromRectAndRadius(remRC, const Radius.circular(5));
    canvas.drawRRect(remRRC, remPaint);

    Paint shallowPaint = Paint()..color = const Color(0x000d59de).withOpacity(0.1);
    Rect shallowRC = Rect.fromLTWH(0, (lineHeight+4)*2, size.width, lineHeight);
    RRect shallowRRC = RRect.fromRectAndRadius(shallowRC, const Radius.circular(5));
    canvas.drawRRect(shallowRRC, shallowPaint);

    Paint deepPaint = Paint()..color = const Color(0x00642ab5).withOpacity(0.1);
    Rect deepRC = Rect.fromLTWH(0, (lineHeight+4)*3, size.width, lineHeight);
    RRect deepRRC = RRect.fromRectAndRadius(deepRC, const Radius.circular(5));
    canvas.drawRRect(deepRRC, deepPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}