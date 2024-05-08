import 'dart:math';
import 'dart:ui' as ui;

import 'package:creekbase/creek_base.dart';
import 'package:flutter/material.dart';


typedef CircleProgressIndicatorChildBuilder = Widget Function(
    BuildContext context, AnimationController animationController);

// class CircleProgressIndicatorWidget extends StatefulWidget {
//   /// 进度值 0~1
//   final double value;
//
//   /// 纯色)
//   final Color? color;
//
//   /// 渐变
//   final Gradient? gradient;
//
//   /// 线宽
//   final double? strokeWidth;
//
//   /// 子控件
//   final CircleProgressIndicatorChildBuilder? child;
//
//   /// 转完一圈需要的总时长
//   final Duration totalDuration;
//
//   /// 宽
//   final double? width;
//
//   /// 高
//   final double? height;
//
//   final Function()? timeend;
//
//   CircleProgressIndicatorWidget({
//     Key? key,
//     required this.value,
//     required this.totalDuration,
//     this.color,
//     this.gradient,
//     this.strokeWidth,
//     this.child,
//     this.width,
//     this.height,
//     this.timeend
//   })  : assert((color != null && gradient != null) == false, "error: 纯色,渐变只能有一个"),
//         super(key: key);
//
//   @override
//   _CircleProgressIndicatorWidgetState createState() =>
//       _CircleProgressIndicatorWidgetState();
// }
//
// class _CircleProgressIndicatorWidgetState
//     extends State<CircleProgressIndicatorWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//
//   double get _animateValue =>
//       animationController.upperBound - animationController.value;
//
//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//       vsync: this,
//       lowerBound: 0,
//       upperBound: widget.value,
//       duration: widget.totalDuration * widget.value,
//     )
//       ..addListener(
//             () {
//               if(((1- animationController.value) * 100).toInt() == 0){
//                 animationController.stop();
//                 if(widget.timeend != null){
//                   widget.timeend!();
//                 }
//               }
//         },
//       )
//       ..repeat();
//   }
//
//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//     print('$runtimeType被释放了');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // if (_animateValue == animationController.upperBound) {
//     //   // 到了最高点
//     //   return Container();
//     // }
//     return AnimatedBuilder(
//       animation: animationController,
//       builder: (BuildContext context, Widget? child) {
//         return Stack(children: [
//           ClipOval(child: Container(
//             width: widget.width ?? double.infinity,
//             height: widget.height ?? double.infinity,
//             color: const Color(0xFFFD3A45),
//             child: CustomPaint(
//               painter: _CircleProgressPainter(
//                 value: _animateValue,
//                 color: widget.color,
//                 gradient: widget.gradient,
//                 strokeWidth: widget.strokeWidth ?? 10,
//               ),
//               child: widget.child != null
//                   ? widget.child!(context, animationController)
//                   : null,
//             ),
//           ),)
//         ],);
//       },
//     );
//   }
// }

class CircleProgressPainter extends CustomPainter {
  late Paint _paint;

  /// 0-1
  double value;
  Color? color;
  Gradient? gradient;
  double strokeWidth;

  CircleProgressPainter({
    required this.value,
    required this.strokeWidth,
    this.color,
    this.gradient,
  }) : super();
  @override
  void paint(Canvas canvas, Size size) {
    var centerPoint = Point(size.width / 2, size.height / 2);

    _paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    if (color != null) {
      _paint.color = this.color!;
      _paint.strokeCap = StrokeCap.round; // 端点变圆,当颜色渐变时效果不好,所以最后设置为纯色时才有这个效果
    }
    if (gradient != null) {
      _paint.shader = ui.Gradient.sweep(Offset(centerPoint.y, centerPoint.x),
          gradient!.colors, gradient!.stops);

      // _paint.strokeCap = StrokeCap.round;
    }
    canvas
      ..translate(centerPoint.x, centerPoint.y) // 因为rotate以(0,0)为锚点
      ..rotate(-pi / 2) // 旋转90度使起始角为 y 轴
      ..translate(-centerPoint.y, -centerPoint.x)
      ..drawArc(Rect.fromLTWH(0, 0, size.height, size.width), 0, 2 * pi * value,
          false, _paint);

  }

  @override
  bool shouldRepaint(covariant CircleProgressPainter oldDelegate) {
    return value != oldDelegate.value;
  }
}