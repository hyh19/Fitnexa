
import 'package:creekchart/custom_painter/polyline_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PolyLineWidget extends StatelessWidget {

  final Size? size;
  final Size? foregroundSize;
  final List<Color>? foregroundColorList;

  final double? strokeWidth;
  final List<Color>? colorList;
  final double? offsetX;
  final double proportion; /// 如果是两端分割线 这个比例不能超过1.0

  const PolyLineWidget({
    Key? key,
    this.size,
    this.strokeWidth=8.0,
    this.colorList,
    this.offsetX=0,
    this.foregroundSize,
    this.foregroundColorList,
    this.proportion=1.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size!,
      foregroundPainter:foregroundSize!=null ? PolylinePainter(Polyline(foregroundSize,strokeWidth: strokeWidth!, colorList: foregroundColorList??[]).pictureRecord()):null,
      painter:PolylinePainter(Polyline(size,strokeWidth: strokeWidth!, colorList: colorList??[],proportion: proportion).pictureRecord(),trianglePicture:Triangle(size!,offsetX: offsetX!).pictureRecord()) ,
    );
  }
}
