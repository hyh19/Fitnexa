import 'dart:ui';

import 'package:creekchart/widget/circular_progress_widget.dart';
import 'package:creekchart/widget/double_circle_widget.dart';
import 'package:creekchart/widget/sleep_chart_widget.dart';
import 'package:creekchart/widget/polyline_widget.dart';
import 'package:creekchart/widget/disc_widget.dart';
import 'package:creekchart/custom_painter/double_circle_painter.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Picture? picture;
  Picture? picture1;
  Picture? picture2;
  Picture? picture3;




  @override
  void initState() {
    super.initState();
    // picture = AnnularIndicator(Size(300, 300),radius: 50).getBackGroundView();
    // picture1 = PieAnnular(Size(300, 300),radius:50).pictureRecord();
    // picture2 = Polyline(Size(300, 300),lineCount: 3,strokeWidth: 8, colorList: [Colors.white54,Colors.white54,Colors.white54,Colors.white54,Colors.white54]).pictureRecord();
    // picture3 = IndicatorPainter(Size(300, 300)).pictureRecord();


  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body:  ListView(
          children: [
            // Container(
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.all(10),
            //   width: double.infinity,
            //   height: 300,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10)
            //   ),
            //   child: CustomPaint(
            //     size: Size(10*30, 10*30),
            //     painter: AnnularCustomPainter(picture!,minText: '19',maxText: '100',dataText: '34',companyText: 'AVG'),
            //   ),
            // ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: DoubleCircleWidget(radius1: 50,radius2: 30,backColor: Colors.black,color1: Colors.red,color2: Colors.green,strokeWidth: 10, size: Size(100, 200),backColor2: Colors.white70,),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: SizedBox(
                    height: 48,
                    width: 48,
                    child: CircularProgressWidget(backColor: Colors.white12,color: Colors.green,radius: 38,strokeWidth: 10,currentProgress: 0.4,textStyle: TextStyle(color: Colors.green,fontSize: 20),progressTitle: '99%', size: Size(48, 48),)),
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.all(10),
            //   width: double.infinity,
            //   height: 300,
            //   decoration: BoxDecoration(
            //       color: Color.fromRGBO(0, 0, 0, 0.8),
            //       borderRadius: BorderRadius.circular(10)
            //   ),
            //   child: CustomPaint(
            //     size: Size(300, 300),
            //     painter: PieCustomPainter(picture1!,minText: '18',maxText: '108',dataText: '88',companyText: 'AVG'),
            //   ),
            // ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.8),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: PolyLineWidget(size: Size(300, 20),colorList: [Colors.red],offsetX: 0,foregroundSize: Size(100,20),foregroundColorList: [Colors.yellow],)
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.8),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: DiscWidget(size: Size(10, 10),color: Colors.red),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 16),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child:SleepChartWidget(size:Size(400, 400),
                  lineHeight: 36,
                  widthList: [0.2,0.1,0.2,0.2,0.2,0.1],
                  heightList: [12,36/2+36,36/2+36*3,36/2+36*2,36/2+36,36/2+36*3,36/2+36],
                  colorList: [Colors.red,Colors.blue,Colors.amber,Colors.yellow,Colors.cyan,Colors.cyan]),

            ),

            // CustomPaint(
            //   size: Size(100, 100),
            //   painter: DashboardCustomPainter(tableCount: 80, startTableCount: 40, strokeWidth: 2,wholeCirclesRadian: 5.783185307179586, firstColor: Colors.amber,secondColor: Colors.green),
            // )
            // Container(
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.all(10),
            //   width: double.infinity,
            //   height: 300,
            //   decoration: BoxDecoration(
            //       color: Color.fromRGBO(0, 0, 0, 0.8),
            //       borderRadius: BorderRadius.circular(10)
            //   ),
            //   child: CustomPaint(
            //     foregroundPainter:LineSegmentPainter(20,5,Colors.green,StrokeCap.round) ,
            //     size: const Size(100, 100),
            //     painter: LineSegmentPainter(80,5,Colors.black,StrokeCap.round),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
