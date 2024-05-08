import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../tool/radian_utils.dart';

class AnnularCustomPainter extends CustomPainter {

  final Picture picture;

  String? minText;
  String? maxText;
  String? dataText;
  String? companyText;

   AnnularCustomPainter(this.picture,{this.minText,this.maxText,this.dataText,this.companyText});


  @override
  void paint(Canvas canvas,Size size){
    /// 这里主要组合 文字 背景 以及指针
    canvas.drawPicture(picture);
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
class AnnularIndicator {

  /// 1.创建绘制记录器
  final PictureRecorder _recorder = PictureRecorder();
  /// 2.设置绘制大小
  Size? size;
  /// 3. 设置pi
  double pi = 3.1415926535897932;
  /// 4. 设置圆弧半径
  double radius;
  /// 5. 当前指针角度
  double currentAngle;

  AnnularIndicator(this.size,{this.radius = 100,this.currentAngle= 139});

  /// 绘制背景图
  Picture getBackGroundView(){
    Canvas canvas = Canvas(_recorder);
    canvas.clipRect(Rect.fromLTWH(0, 0, size!.width, size!.height));
    ///具体方法绘制实现
    drawArcView(canvas,size!);
    return _recorder.endRecording();
  }


  drawArcView(Canvas canvas,Size size){

    canvas.save();
    // 设置画布颜色
    canvas.drawColor(Color.fromRGBO(0, 0, 0, 0.8), BlendMode.srcIn);
    double halfWidth = size.width/2;
    double halfHeight = size.height/2;
    ///把画布移动到中间
    canvas.translate(halfWidth, halfHeight);

    ///设置画笔属性
    Paint mainPaint = Paint();
    mainPaint.color = Colors.red;
    mainPaint.strokeWidth = 10.0;
    mainPaint.style = PaintingStyle.stroke;
    mainPaint.strokeCap = StrokeCap.round;

    /// 画圆弧
    Rect rect = Rect.fromCircle(center: const Offset(0, 0), radius: radius);
    canvas.drawArc(rect, RadianUtils.angleToRadian(135), RadianUtils.angleToRadian(360-90), false, mainPaint);

    ///画大圆点
    Paint maxPaint = Paint();
    maxPaint.color = Color.fromRGBO(0, 0, 0, 0.7);
    maxPaint.style = PaintingStyle.fill;
    canvas.drawCircle( Offset(sin(RadianUtils.angleToRadian(currentAngle))*radius, cos(RadianUtils.angleToRadian(currentAngle))*radius), 11, maxPaint);
    ///画圆点
    Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle( Offset(sin(RadianUtils.angleToRadian(currentAngle))*radius, cos(RadianUtils.angleToRadian(currentAngle))*radius), 7, paint);



    canvas.restore();

  }

}