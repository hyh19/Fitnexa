/// @Desc   virtual_earth_projection
/// @Time   2023/11/24 15:20:48 星期五
/// @Author hl

import 'dart:math';

class VirtualEarthProjection {
  static const int MAXZOOMLEVEL = 21;
  static const int PIXELS_PER_TILE = 256;
  static const double MIN_LATITUDE = -85.0511287798;
  static const double MAX_LATITUDE = 85.0511287798;
  static const double MIN_LONGITUDE = -360.0;
  static const double MAX_LONGITUDE = 360.0;
  static const int EARTH_RADIUS_IN_METERS = 6378137;
  static const int TILE_SPLIT_LEVEL = 0;
  static const int KMA_MAX_MAP_SIZE = 268435456;
  static const double K_EARTH_CIRCLE = 4.0075016E7;
  static const double K_EARTH_CIRCLE_2 = 2.0037508E7;
  static const double EARTH_CIRCUMFERENCE_IN_METERS = 4.007501668557849E7;

  static double clip(double d, double d2, double d3) {
    return min(max(d, d2), d3);
  }

  static double radToDeg(double d) {
    return d * 57.29577951308232;
  }

  static double degToRad(double d) {
    return d * 0.017453292519943295;
  }

  static void latLongToPixels(double d, double d2, Point point) {
    double clipLat = clip(d, -85.0511287798, 85.0511287798);
    double degToRadLng = 6378137.0 * degToRad(clip(d2, -360.0, 360.0));
    double sinValue = sin(degToRad(clipLat));
    double logValue = (6378137.0 * log((1.0 + sinValue) / (1.0 - sinValue))) / 2.0;
    point.x = (K_EARTH_CIRCLE_2 + degToRadLng) / 0.14929106831550598;
    point.y = (K_EARTH_CIRCLE_2 - logValue) / 0.14929106831550598;
  }

  static Point latLongToPixelsPoint(double d, double d2) {
    Point point = Point.obtain();
    latLongToPixels(d, d2, point);
    return point;
  }

  static Point pixelsToLatLong(double var0, double var2, int var4) {
    Point var15 = Point.obtain();
    double var5 = var0 * 0.14929106831550598 - 2.0037508E7;
    double var7 = 2.0037508E7 - var2 * 0.14929106831550598;
    double var9 = var5 / 6378137.0;
    var15.x = radToDeg(var9);
    double var11;
    double var13 = ((var11 = exp(var7 / 6378137.0 * 2.0)) - 1.0) / (1.0 + var11);
    var15.y = radToDeg(asin(var13));
    return var15;
  }
}

class Point {
  double x;

  double y;

  Point({this.x = 0, this.y = 0});

  static Point obtain() => Point();
}
