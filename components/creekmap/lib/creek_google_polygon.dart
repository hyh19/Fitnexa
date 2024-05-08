import 'dart:ui';

import 'package:creekmap/utils/transfer_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:latlong2/latlong.dart' as long2;
import 'package:flutter_map/flutter_map.dart' as fl;

import 'map_utils.dart';

class GooglePolygonPage extends StatefulWidget {
  /// 中心点坐标
  final LatLng centerCoordinate;

  /// 经纬度列表
  final List<LatLng> coordinateList;

  /// 关闭按钮
  final Widget? buttonClose;

  final double lineWidth;

  /// 地图的缩放级别一共分为 17 级，从 3 到 19. 数字越大，展示的图面信息越精细
  final double? zoomLevel;

  /// 固件返回的总的公里数
  final double watchTotalDistance;

  final bool? isKmUnit;

  final MapCreatedCallback? onMapCreated;

  const GooglePolygonPage({
    Key? key,
    required this.lineWidth,
    required this.coordinateList,
    required this.centerCoordinate,
    required this.watchTotalDistance,
    this.isKmUnit,
    this.buttonClose,
    this.onMapCreated,
    this.zoomLevel = 3,
  }) : super(key: key);

  @override
  State<GooglePolygonPage> createState() => _GooglePolygonPageState();
}

class _GooglePolygonPageState extends State<GooglePolygonPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              PlacePolylineBody(
                points: widget.coordinateList,
                zoom: widget.zoomLevel! > 19
                    ? 19
                    : widget.zoomLevel! < 3
                        ? 3
                        : widget.zoomLevel!,
                centerLatLng: widget.centerCoordinate,
                lineWidth: widget.lineWidth,
                onMapCreated: widget.onMapCreated,
                isKmUnit: widget.isKmUnit,
                watchTotalDistance: widget.watchTotalDistance,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 40),
                child: widget.buttonClose ?? const SizedBox(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PlacePolylineBody extends StatefulWidget {
  final double zoom;
  final double lineWidth;
  final List<LatLng> points;
  final LatLng? centerLatLng;
  final MapCreatedCallback? onMapCreated;

  /// 固件返回的总的公里数
  final double watchTotalDistance;

  final bool? isKmUnit;

  const PlacePolylineBody({
    Key? key,
    required this.points,
    required this.lineWidth,
    required this.watchTotalDistance,
    this.zoom = 7.0,
    this.centerLatLng,
    this.onMapCreated,
    this.isKmUnit,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlacePolylineBodyState();
}

class PlacePolylineBodyState extends State<PlacePolylineBody> {
  PlacePolylineBodyState();

  var fitBounds = true;

  double _lineWidth = 5.0;
  final _markers = <Marker>{};
  GoogleMapController? controller;
  LatLng _startPoint = const LatLng(37.7749, -122.4194); // 起始点的位置
  LatLng _endPoint = const LatLng(37.3352, -122.0322); // 结束点的位置

  Map<PolylineId, Polyline> polyLines = <PolylineId, Polyline>{};

  late CameraPosition cameraPosition;

  @override
  void initState() {
    super.initState();
    cameraPosition = CameraPosition(
      zoom: widget.zoom,
      target: widget.centerLatLng ?? const LatLng(22.54240, 114.05719),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    controller = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: GoogleMap(
          markers: _markers,
          mapType: MapType.normal,
          myLocationEnabled: false,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          initialCameraPosition: cameraPosition,
          polylines: Set<Polyline>.of(polyLines.values),
          onMapCreated: onMapCreated,
          onCameraMove: onCameraMove,
          onCameraIdle: onCameraIdle,
          onTap: (latLng) {
            print('latLng = $latLng');
          },
        ),
      );

  void onMapCreated(GoogleMapController controller) {
    this.controller = controller;
    addMarker();
    addPolyline();
    addTrajectoryMarker();
    widget.onMapCreated?.call(controller);
  }

  void onCameraMove(CameraPosition cameraPosition) {
    var zoomLevel = cameraPosition.zoom;
    var centerLatLng = cameraPosition.target;

    print('zoomLevel = $zoomLevel , centerLatLng = $centerLatLng');
  }

  void addMarker() async {
    _markers.clear();

    ByteData imageData = await rootBundle.load('assets/images/png/mark_end.png');
    ByteData imageData2 = await rootBundle.load('assets/images/png/mark_start.png');
    _startPoint = LatLng(widget.points.first.latitude, widget.points.first.longitude);
    _endPoint = LatLng(widget.points.last.latitude, widget.points.last.longitude);
    if (widget.points.length > 1) {
      _markers.add(
        Marker(
          position: _startPoint,
          anchor: const Offset(0.5, 0.5),
          markerId: const MarkerId('marker_1'),
          icon: BitmapDescriptor.fromBytes(imageData.buffer.asUint8List()),
        ),
      );
      _markers.add(
        Marker(
          position: _endPoint,
          anchor: const Offset(0.5, 0.5),
          markerId: const MarkerId('marker_2'),
          icon: BitmapDescriptor.fromBytes(imageData2.buffer.asUint8List()),
        ),
      );
    }
    setState(() {});
  }

  void addPolyline() async {
    const PolylineId polylineId = PolylineId('polyline_id_0');
    polyLines[polylineId] = Polyline(
      polylineId: polylineId,
      consumeTapEvents: false,
      endCap: Cap.roundCap,
      jointType: JointType.round,
      color: const Color(0xff708DFF),
      width: widget.lineWidth.toInt(),
      points: widget.points,
      onTap: () {},
    );

    setState(() {});

    List<long2.LatLng> long2Points = [];
    for (var point in widget.points) {
      long2Points.add(long2.LatLng(point.latitude, point.longitude));
    }

    fl.LatLngBounds bounds = fl.LatLngBounds.fromPoints(long2Points);

    var devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    var mapWidth = MediaQuery.of(context).size.width * devicePixelRatio;
    var mapHeight = MediaQuery.of(context).size.height * devicePixelRatio;
    var paddingLeft = -(mapWidth / 2);
    var paddingRight = (mapWidth / 2);
    var paddingTop = -(mapHeight + mapHeight / 2);
    var paddingBottom = 0.0;

    var latLngBounds = LatLngBounds(
      southwest: LatLng(bounds.southWest.latitude, bounds.southWest.longitude),
      northeast: LatLng(bounds.northEast.latitude, bounds.northEast.longitude),
    );

    var pair = MapLatLngTransferUtil.calculateZoomToSpanLevel(
      mapWidth: mapWidth.toInt(),
      mapHeight: mapHeight.toInt(),
      paddingLeft: paddingLeft,
      paddingRight: paddingRight,
      paddingTop: paddingTop,
      paddingBottom: paddingBottom,
      latLngBounds: latLngBounds,
    );

    LatLng latLng = LatLng(pair!.second.x, pair.second.y);
    print(
        'mapWidth = $mapWidth , mapHeight = $mapHeight , zoom = ${pair.first} , latLng = $latLng');

    controller?.moveCamera(CameraUpdate.newLatLngZoom(latLng, pair.first));

    // controller?.moveCamera(
    //   CameraUpdate.newLatLngBounds(
    //     LatLngBounds(
    //       southwest: LatLng(bounds.southWest.latitude, bounds.southWest.longitude),
    //       northeast: LatLng(bounds.northEast.latitude, bounds.northEast.longitude),
    //     ),
    //     50,
    //   ),
    // );
  }

  LatLngBounds getBoundsFromPolyline(List<LatLng> polylinePoints) {
    double minLat = double.infinity;
    double minLng = double.infinity;
    double maxLat = double.negativeInfinity;
    double maxLng = double.negativeInfinity;

    for (LatLng point in polylinePoints) {
      if (point.latitude < minLat) {
        minLat = point.latitude;
      }
      if (point.latitude > maxLat) {
        maxLat = point.latitude;
      }
      if (point.longitude < minLng) {
        minLng = point.longitude;
      }
      if (point.longitude > maxLng) {
        maxLng = point.longitude;
      }
    }

    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }

  void addTrajectoryMarker() async {
    if (widget.points.isNotEmpty) {
      var firstLatLng = widget.points.first;

      var latLngList = <long2.LatLng>[];

      var tempTotalDistance = 0.0;

      for (int index = 0; index < widget.points.length; index++) {
        var latLng = widget.points[index];
        var distance = MapUtil.calculateDistanceNew(
            firstLatLng.latitude, firstLatLng.longitude, latLng.latitude, latLng.longitude);
        firstLatLng = latLng;
        tempTotalDistance += distance;

        var isKmUnit = widget.isKmUnit ?? true;
        var unitDistance = isKmUnit ? 1000 : 1609.344;

        if (index == widget.points.length - 1) {
          var removeSize = latLngList.length - widget.watchTotalDistance ~/ unitDistance;
          if (removeSize >= 0) {
            latLngList = latLngList.sublist(0, latLngList.length - removeSize);
          } else {
            latLngList.add(long2.LatLng(latLng.latitude, latLng.longitude));
          }
        } else if (tempTotalDistance.round() >= unitDistance) {
          tempTotalDistance = 0.0;
          latLngList.add(long2.LatLng(latLng.latitude, latLng.longitude));
        }
      }

      var markerList = <Marker>[];
      for (int index = 0; index < latLngList.length; index++) {
        var latLng = latLngList[index];

        var byteData = await drawToUint8List('${index + 1}');
        markerList.add(Marker(
          markerId: MarkerId('${latLng.hashCode}'),
          position: LatLng(latLng.latitude, latLng.longitude),
          anchor: const Offset(0.5, 0.5),
          icon: BitmapDescriptor.fromBytes(byteData),
        ));
      }

      _markers.addAll(markerList);
      setState(() {});
    }
  }

  void onCameraIdle() {}

  void _updateLineWidth(double zoom) async {
    if (controller != null) {
      double newLineWidth = 10; // 设置默认线条宽度
      _lineWidth = (10 * zoom / (widget.zoom ?? 3)) * 1.5;
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
        addPolyline();
      }
    }
  }

  Future<Uint8List> drawToUint8List(String text) async {
    // 指定画布大小
    const width = 50.0;
    const height = 50.0;

    var pixelRatio = MediaQuery.of(context).devicePixelRatio;

    // 创建一个指定大小的PictureRecorder
    PictureRecorder recorder = PictureRecorder();
    // 创建一个指定大小的Canvas
    var canvas = Canvas(recorder, Rect.fromPoints(const Offset(0, 0), const Offset(width, height)));

    // 在Canvas上执行绘制操作
    Paint fillPaint = Paint()..color = const Color(0xFF708DFF);
    Paint strokePaint = Paint()
      ..strokeWidth = 5.0
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    // 计算圆的位置
    double centerX = width / 2;
    double centerY = height / 2;
    double radius = (width - strokePaint.strokeWidth) / 2;

    // 绘制填充的圆
    canvas.drawCircle(Offset(centerX, centerY), radius, fillPaint);
    // 绘制带边框的圆
    canvas.drawCircle(Offset(centerX, centerY), radius, strokePaint);

    var fontSize = pixelRatio >= 3 ? 34.0 : 30.0;
    TextPainter textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      text: TextSpan(text: text, style: TextStyle(color: Colors.white, fontSize: fontSize)),
    );
    textPainter.layout();

    // 计算文本的位置，使其居中
    double textX = (width - textPainter.width) / 2;
    double textY = (height - textPainter.height) / 2;

    // 在Canvas上绘制文本
    textPainter.paint(canvas, Offset(textX, textY));

    // 结束绘制并获取Picture
    Picture picture = recorder.endRecording();

    // 将Picture转换为Image
    var image = await picture.toImage(width.toInt(), height.toInt());

    // 将Image转换为字节数据
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }
}
