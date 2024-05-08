import 'dart:math';
import 'dart:ui';

import 'package:creekchart/tool/radian_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieCustomPainter extends CustomPainter {
  final Picture pictureBackGround;
  String? minText;
  String? maxText;
  String? dataText;
  String? companyText;

  PieCustomPainter(this.pictureBackGround,{this.minText,this.maxText,this.dataText,this.companyText});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawPicture(pictureBackGround);
    /// 画文字
    drawMinDataOnDashBoard(minText!, canvas, size);
    drawMaxDataOnDashBoard(maxText!, canvas, size);
    drawMiddleDataOnDashBoard(dataText!, canvas, size);
    drawUnitTextOnDashBoard(companyText!,canvas,size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  drawMinDataOnDashBoard(String text,Canvas canvas,Size size){

    double halfHeight = size.height/2;
    double halfWidth = size.width/2;

    canvas.save();
    // canvas.drawColor(Colors.black26, BlendMode.srcIn);
    // canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    /// 平移
    canvas.translate(halfWidth, halfHeight);

    TextPainter textPainter = TextPainter();
    textPainter.textDirection = TextDirection.ltr;
    textPainter.text = TextSpan(text: text,style: const TextStyle(color: Colors.white30,fontSize: 25.0,fontStyle: FontStyle.italic));
    textPainter.layout();
    double textStartPx = -halfWidth/2 + textPainter.size.width-10;
    double textStartPy = 35;
    textPainter.paint(canvas, Offset(textStartPx, textStartPy));
    canvas.restore();

  }

  drawMaxDataOnDashBoard(String text,Canvas canvas,Size size){
    double halfHeight = size.height/2;
    double halfWidth = size.width/2;

    canvas.save();
    canvas.translate(halfWidth, halfHeight);
    canvas.drawColor(Colors.white, BlendMode.colorBurn);


    TextPainter textPainter = TextPainter();
    textPainter.textDirection = TextDirection.ltr;
    textPainter.text = TextSpan(text: text,style: const TextStyle(color: Colors.white30,fontSize: 25.0,fontStyle: FontStyle.italic));
    textPainter.layout();
    double textStartPx = halfWidth/2 - textPainter.size.width -15;
    double textStartPy = 35;
    textPainter.paint(canvas, Offset(textStartPx, textStartPy));
    canvas.restore();

  }

  drawMiddleDataOnDashBoard(String text,Canvas canvas,Size size){
    double halfHeight = size.height/2;
    double halfWidth = size.width/2;

    canvas.save();
    canvas.translate(halfWidth, halfHeight);

    TextPainter textPainter = TextPainter();
    textPainter.textDirection = TextDirection.ltr;
    textPainter.text = TextSpan(text: text,style: const TextStyle(color: Colors.white30,fontSize: 25.0,fontStyle: FontStyle.italic));
    textPainter.layout();
    double textStartPx = -textPainter.size.width/2;
    double textStartPy = -20;
    textPainter.paint(canvas, Offset(textStartPx, textStartPy));
    canvas.restore();

  }

  drawUnitTextOnDashBoard(String text,Canvas canvas,Size size){
    double halfHeight = size.height/2;
    double halfWidth = size.width/2;

    canvas.save();
    canvas.translate(halfWidth, halfHeight);

    TextPainter textPainter = TextPainter();
    textPainter.textDirection = TextDirection.ltr;
    textPainter.text = TextSpan(text: text,style: const TextStyle(color: Colors.white30,fontSize: 25.0,fontStyle: FontStyle.italic));
    textPainter.layout();
    double textStartPx = -textPainter.size.width/2;
    double textStartPy = 10;
    textPainter.paint(canvas, Offset(textStartPx, textStartPy));
    canvas.restore();

  }

}

class PieAnnular {

  final PictureRecorder pictureRecorder = PictureRecorder();
  /// 2.设置绘制大小
  final Size size;
  /// 3. 设置pi
  double pi = 3.1415926535897932;
  /// 4. 设置圆弧半径
  double? radius;
  /// 5. 几段弧度
  int? count;
  List<Color>? colorList;
  /// 5. 当前指针角度
  double currentAngle;

  PieAnnular(this.size,{this.radius,this.colorList,this.currentAngle=139});

  Picture pictureRecord(){
    Canvas canvas = Canvas(pictureRecorder);
    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    /// 具体绘制的图形
    drawArcView(canvas,size);
    return pictureRecorder.endRecording();
  }

  void drawArcView(Canvas canvas,Size size){

    double halfWidth = size.width/2;
    double halfHeight = size.height/2;

    canvas.translate(halfWidth, halfHeight);

    canvas.save();

    /// 分段画圆弧
    Rect rect = Rect.fromCircle(center: const Offset(0, 0), radius: radius!);
    colorList ??= <Color>[Colors.yellow,Colors.red,Colors.red,Colors.red,Colors.red,Colors.blue,Colors.purple];

    for(int i = 0;i<colorList!.length;i++){
      ///设置画笔属性
      Paint mainPaint = Paint()
        ..color = colorList![i]
        ..strokeWidth = 10.0
        ..style = PaintingStyle.stroke;
      double angle = (360-90)/colorList!.length;
      double startAngle = (angle+3)*i;
      canvas.drawArc(rect, RadianUtils.angleToRadian(135+startAngle), RadianUtils.angleToRadian(angle), false, mainPaint);
      if(i==1){
        canvas.drawArc(rect, RadianUtils.angleToRadian(135+startAngle), RadianUtils.angleToRadian(angle), false, mainPaint);
      }
    }

    ///画大圆点
    Paint maxPaint = Paint();
    maxPaint.color = Color.fromRGBO(0, 0, 0, 0.7);
    maxPaint.style = PaintingStyle.fill;
    canvas.drawCircle( Offset(sin(RadianUtils.angleToRadian(currentAngle))*radius!, cos(RadianUtils.angleToRadian(currentAngle))*radius!), 11, maxPaint);
    ///画圆点
    Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle( Offset(sin(RadianUtils.angleToRadian(currentAngle))*radius!, cos(RadianUtils.angleToRadian(currentAngle))*radius!), 7, paint);

    canvas.restore();



  }


}