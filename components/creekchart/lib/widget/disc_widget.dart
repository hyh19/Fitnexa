
import 'package:creekchart/custom_painter/disc_painter.dart';
import 'package:creekchart/custom_painter/polyline_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscWidget extends StatelessWidget {

  final Size? size;
  final Color? color;
  final Color? foregroundColor;


  const DiscWidget({Key? key, this.size,this.color,this.foregroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size!,
      foregroundPainter: DiscPainter(radius: size!.width, color: foregroundColor??Colors.transparent),
      painter:DiscPainter(radius: size!.width, color: color!),
    );
  }
}
