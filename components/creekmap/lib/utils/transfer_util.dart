import 'dart:math' as math;

import 'package:creekmap/utils/virtual_earth_projection.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// @Desc   transfer_util
/// @Time   2023/11/24 15:29:56 星期五
/// @Author hl

class MapLatLngTransferUtil {
  static Pair<double, Point>? calculateZoomToSpanLevel({
    required int mapWidth,
    required int mapHeight,
    required double paddingLeft,
    required double paddingRight,
    required double paddingTop,
    required double paddingBottom,
    required LatLngBounds latLngBounds,
    double mapAnchorX = 0,
    double mapAnchorY = 0,
    double zoomLevel = 0.4,
    double minZoomLevel = 3,
    double maxZoomLevel = 21,
  }) {
    var result = calCenterLatLngAndZoomLevel(
      mapWidth,
      mapHeight,
      mapAnchorX,
      mapAnchorY,
      zoomLevel,
      minZoomLevel,
      maxZoomLevel,
      paddingLeft,
      paddingRight,
      paddingTop,
      paddingBottom,
      latLngBounds,
    );

    if (result != null) {
      var zoom = result.first;
      var latLng = VirtualEarthProjection.pixelsToLatLong(result.second.x, result.second.y, 21);
      return Pair<double, Point>(zoom, Point(x: latLng.y, y: latLng.x));
    }

    return null;
  }

  static Pair<double, Point>? calCenterLatLngAndZoomLevel(
    int mapWidth,
    int mapHeight,
    double mapAnchorX,
    double mapAnchorY,
    double zoomLevel,
    double minZoomLevel,
    double maxZoomLevel,
    double paddingLeft,
    double paddingRight,
    double paddingTop,
    double paddingBottom,
    LatLngBounds latLngBounds,
  ) {
    double i7;
    double i8;

    Point latLongToPixels = VirtualEarthProjection.latLongToPixelsPoint(
        latLngBounds.northeast.latitude, latLngBounds.northeast.longitude);
    Point latLongToPixels2 = VirtualEarthProjection.latLongToPixelsPoint(
        latLngBounds.southwest.latitude, latLngBounds.southwest.longitude);

    double deltaX = latLongToPixels.x - latLongToPixels2.x;
    double deltaY = latLongToPixels2.y - latLongToPixels.y;

    double boundsWidth = mapWidth - (paddingLeft + paddingRight);
    double boundsHeight = mapHeight - (paddingTop + paddingBottom);

    if (deltaX < 0 && deltaY < 0) {
      return null;
    }

    deltaX = deltaX <= 0 ? 1 : deltaX;
    deltaY = deltaY <= 0 ? 1 : deltaY;

    boundsWidth = boundsWidth <= 0 ? 1 : boundsWidth;
    boundsHeight = boundsHeight <= 0 ? 1 : boundsHeight;

    Pair<double, bool> a2 = calZoomLevel(zoomLevel, maxZoomLevel, minZoomLevel, latLongToPixels.x,
        latLongToPixels.y, latLongToPixels2.x, latLongToPixels2.y, boundsWidth, boundsHeight);

    bool equalPoint = a2.second;
    double resultZoomLevel = a2.first;
    double a3 = calculateAWithDouble(zoomLevel, resultZoomLevel, deltaX);
    double a4 = calculateAWithDouble(zoomLevel, resultZoomLevel, deltaY);

    if (resultZoomLevel >= maxZoomLevel) {
      i7 = latLongToPixels2.x + ((((paddingRight - paddingLeft) + a3) * deltaX) / (2.0 * a3));
      i8 = latLongToPixels.y + ((((paddingBottom - paddingTop) + a4) * deltaY) / (2.0 * a4));
    } else if (equalPoint) {
      i7 = latLongToPixels2.x + ((((mapWidth / 2) - paddingLeft) / a3) * deltaX);
      i8 = latLongToPixels.y + ((((paddingBottom - paddingTop) + a4) * deltaY) / (2.0 * a4));
    } else {
      i7 = latLongToPixels2.x + ((((paddingRight - paddingLeft) + a3) * deltaX) / (2.0 * a3));
      i8 = latLongToPixels.y + ((((mapHeight / 2) - paddingTop) / a4) * deltaY);
    }

    i7 = latLongToPixels2.x + ((((paddingRight - paddingLeft) + a3) * deltaX) / (2.0 * a3));
    i8 = latLongToPixels.y + ((((paddingBottom - paddingTop) + a4) * deltaY) / (2.0 * a4));

    var x = i7 +
        calculateAWithDoubles(zoomLevel, resultZoomLevel, mapAnchorX - (mapWidth >> 1).toDouble());
    var y = i8 +
        calculateAWithDoubles(zoomLevel, resultZoomLevel, mapAnchorY - (mapHeight >> 1).toDouble());

    return Pair<double, Point>(resultZoomLevel, Point(x: x, y: y));
  }

  static Pair<double, bool> calZoomLevel(
    double zoomLevel,
    double maxZoomLevel,
    double minZoomLevel,
    double x1,
    double y1,
    double x2,
    double y2,
    double boundsWidth,
    double boundsHeight,
  ) {
    bool equalPoint = true;
    double resultZoomLevel;
    double maxZoomLevel = 21;

    if (x1 == x2 && y1 == y2) {
      resultZoomLevel = maxZoomLevel;
    } else {
      double a2 = calculateA(zoomLevel, boundsHeight, (y2 - y1).abs());
      double a3 = calculateA(zoomLevel, boundsWidth, (x2 - x1).abs());
      double min2 = math.min(a3, a2);

      equalPoint = min2 == a3;
      resultZoomLevel = math.min(maxZoomLevel, math.max(minZoomLevel, min2));
    }

    return Pair(resultZoomLevel, equalPoint);
  }

  static double b(double zoomLevel, int i, int i2, int i3, int i4, int i5, int i6) {
    double sz = 0;
    if (i != i3 && i2 != i4) {
      double zoom1 = calculateAWithDouble(zoomLevel, i5.toDouble(), (i3 - i).abs().toDouble());
      double zoom2 = calculateAWithDouble(zoomLevel, i6.toDouble(), (i4 - i2).abs().toDouble());
      sz = math.max(zoom1, zoom2);
    }
    return sz;
  }

  static double calculateA(double f, double d, double d2) {
    return 21.0 - (math.log(d2 / (d * f)) / math.log(2.0));
  }

  static double calculateAWithDouble(double f, double f2, double d) {
    return d / (math.pow(2.0, 21.0 - f2) * f);
  }

  static double calculateAWithDoubles(double f, double f2, double f3) {
    return f3 * math.pow(2.0, 21.0 - f2) * f;
  }
}

class Pair<A, B> {
  A first;

  B second;

  Pair(this.first, this.second);
}
