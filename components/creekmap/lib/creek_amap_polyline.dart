import 'dart:async';
import 'dart:io';

import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:creekmap/map_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'next_latlng.dart';

class DrawPolylineScreen extends StatefulWidget {
  /// 中心点坐标
  final LatLng centerCoordinate;

  /// 经纬度列表
  final List<LatLng> coordinateList;

  /// 关闭按钮
  final Widget? buttonClose;

  /// 地图的缩放级别一共分为 17 级，从 3 到 19. 数字越大，展示的图面信息越精细
  final double? zoomLevel;

  final double lineWidth;

  /// 固件返回的总的公里数
  final double watchTotalDistance;

  final bool? isKmUnit;

  /// 地图结束移动回调
  final Function(MapMove move)? onMapMoveEnd;

  final Future<void> Function(AmapController controller)? onMapCreated;

  const DrawPolylineScreen({
    Key? key,
    required this.centerCoordinate,
    required this.coordinateList,
    required this.watchTotalDistance,
    this.zoomLevel = 3,
    this.buttonClose,
    this.onMapCreated,
    this.lineWidth = 10,
    this.onMapMoveEnd,
    this.isKmUnit = true,
  }) : super(key: key);

  @override
  _DrawPolylineScreenState createState() => _DrawPolylineScreenState();
}

class _DrawPolylineScreenState extends State<DrawPolylineScreen> with NextLatLng {
  AmapController? _amapController;
  MarkerOption? endMarker;
  MarkerOption? startMarker;
  StreamSubscription? _zoomSubscription;
  PolylineOption? polylineOption;
  double _lineWidth = 10.0;
  IPolyline? iPolyline;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() async {
    // TODO: implement dispose
    if (Platform.isAndroid) {
      _amapController?.androidController = null;
    } else {
      _amapController?.iosController = null;
    }
    _amapController?.dispose();
    _amapController = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              AmapView(
                maskDelay: const Duration(milliseconds: 1200),
                showScaleControl: false,
                showZoomControl: false,
                showCompass: false,
                zoomGesturesEnabled: true,
                scrollGesturesEnabled: true,
                // rotateGestureEnabled: false,
                tilt: 0,
                zoomLevel: widget.zoomLevel! > 19
                    ? 19
                    : widget.zoomLevel! < 3
                    ? 3
                    : widget.zoomLevel!,
                mapType: MapType.Bus,
                autoRelease: false,
                centerCoordinate: widget.centerCoordinate,
                markers: [
                  MarkerOption(
                    infoWindowEnabled: false,
                    coordinate: widget.coordinateList.first,
                    // iconProvider: const AssetImage('assets/images/png/mark_end.png'),
                    anchorU: 0.5,
                    anchorV: 0.5,
                    widget: Container(
                      width: 22,
                      height: 22,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 1),
                      decoration: BoxDecoration(
                        color: const Color(0xFF708DFF),
                        borderRadius: BorderRadius.circular(90),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                  MarkerOption(
                    coordinate: widget.coordinateList.last,
                    // iconProvider: const AssetImage('assets/images/png/mark_start.png'),
                    anchorU: 0.5,
                    anchorV: 0.5,
                    widget: Container(
                      width: 22,
                      height: 22,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(top: 1),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(90),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  )
                ],
                onMapCreated: (controller) async {
                  var bottom = MediaQuery
                      .of(context)
                      .size
                      .height / 2 + 50;
                  // bottom -= bottom / 2;
                  await controller.zoomToSpan(
                    widget.coordinateList,
                    animated: false,
                    padding: EdgeInsets.only(left: 50, top: 100, right: 50, bottom: bottom),
                  );
                  _amapController = controller;
                  // _amapController!.setMaxZoomLevel(19);
                  // _amapController!.setMinZoomLevel(5);

                  _amapController?.showTraffic(false);
                  // _amapController?.showMapText(false);

                  _addPolyline();
                  widget.onMapCreated?.call(controller);
                },
                onMapMoveEnd: (e) async {
                  // _updateLineWidth(e.zoom!);
                },
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(() => ScaleGestureRecognizer())
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: widget.buttonClose ?? const SizedBox(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _addMarker() async {
    if (widget.coordinateList.isNotEmpty) {
      var firstLatLng = widget.coordinateList.first;

      var latLngList = <LatLng>[];

      var totalDistance = 0.0;

      var tempTotalDistance = 0.0;

      for (int index = 0; index < widget.coordinateList.length; index++) {
        var latLng = widget.coordinateList[index];
        var distance = MapUtil.calculateDistance(firstLatLng, latLng);
        firstLatLng = latLng;
        tempTotalDistance += distance;

        totalDistance += distance;

        var isKmUnit = widget.isKmUnit ?? true;
        var unitDistance = isKmUnit ? 1000 : 1609.344;

        if (index == widget.coordinateList.length - 1) {
          var removeSize = latLngList.length - widget.watchTotalDistance ~/ unitDistance;
          if (removeSize >= 0) {
            latLngList = latLngList.sublist(0, latLngList.length - removeSize);
          } else {
            latLngList.add(latLng);
          }
        } else if (tempTotalDistance.round() >= unitDistance) {
          tempTotalDistance = 0.0;
          latLngList.add(latLng);
        }
      }

      var markerList = <MarkerOption>[];

      for (int index = 0; index < latLngList.length; index++) {
        markerList.add(
          MarkerOption(
            coordinate: latLngList[index],
            anchorU: 0.5,
            anchorV: 0.5,
            infoWindowEnabled: false,
            widget: Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
              // padding: const EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                color: const Color(0xFF708DFF),
                borderRadius: BorderRadius.circular(90),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Text(
                '${index + 1}',
                // strutStyle: const StrutStyle(forceStrutHeight: true),
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        );
      }

      print(
          'totalDistance = $totalDistance , latLngList size = ${latLngList.length} , size = ${widget
              .coordinateList.length}');
      _amapController?.addMarkers(markerList);
    }
  }

  void _addPolyline() async {
    if (_amapController != null) {
      /// 轨迹平滑处理
      // var smoothList = await AmapService.instance.pathSmooth(widget.coordinateList);
      iPolyline = await _amapController!.addPolyline(PolylineOption(
          width: 20,
          coordinateList: widget.coordinateList,
          lineCapType: LineCapType.Round,
          lineJoinType: LineJoinType.Round,
          strokeColor: const Color(0xff708DFF)));

      _addMarker();
    }
  }

  void _updateLineWidth(double zoom) async {
    if (_amapController != null) {
      double newLineWidth = 10; // 设置默认线条宽度
      _lineWidth = (10 * zoom / (widget.zoomLevel ?? 3)) * 1.5;
      if (zoom >= 10 && zoom < 15) {
        newLineWidth = 10;
      } else if (zoom >= 15 && zoom < 20) {
        newLineWidth = 15;
      } else if (zoom >= 20) {
        newLineWidth = 15.0;
      } else if (zoom < 10) {
        newLineWidth = 1;
      }
      if (newLineWidth != _lineWidth) {
        _lineWidth = newLineWidth;
        if (iPolyline != null) {
          iPolyline!.remove();
          iPolyline = await _amapController!.addPolyline(
            PolylineOption(
              lineCapType: LineCapType.Round,
              lineJoinType: LineJoinType.Round,
              coordinateList: widget.coordinateList,
              strokeColor: const Color(0xFF708DFF),
              width: _lineWidth,
            ),
          );
        }
      }
    }
  }
}
