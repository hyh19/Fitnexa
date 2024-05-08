import 'package:flutter/cupertino.dart';

class LineSegment {
  final double? length;
  final Color? color;
  final distanceFromBegining;

  LineSegment({this.length, this.color, this.distanceFromBegining});
}

class HorizontalSegmentsPainter extends CustomPainter {
  HorizontalSegmentsPainter({this.segments});

  final List<LineSegment>? segments;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    for (int i = 0; i < segments!.length; i ++) {
      var segment = segments![i];
      paint.color = segment.color!;
      canvas.drawLine(Offset(segment.distanceFromBegining, 0), Offset(segment.distanceFromBegining + segment.length, 0), paint);
    }
  }

  @override
  bool shouldRepaint(HorizontalSegmentsPainter oldDelegate) => true;
}