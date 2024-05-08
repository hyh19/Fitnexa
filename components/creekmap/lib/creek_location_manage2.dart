part of creek_map;





class LocationManager2 {


  factory LocationManager2() => _getInstance();
  static LocationManager2 get instance => _getInstance();
  static LocationManager2? _instance;

  double? lat;
  double? lng ;
  double? accuracy;

  StreamSubscription<Map<String, Object>>? _locationListener;
  AMapFlutterLocation _locationPlugin = new AMapFlutterLocation();
  Function(int,int,int)? callBack;

  LocationManager2._internal(){
    requestAccuracyAuthorization();
   _locationPlugin.onLocationChanged().listen(((Map<String, Object> result) {
      CreekLog.info(result.toString());
      if(result["latitude"] != null){
        lat =   double.parse(result["latitude"].toString());
      }
      if(result["longitude"] != null){
        lng = double.parse(result["longitude"].toString());
      }
      if(result["accuracy"] != null){
        accuracy = double.parse(result["accuracy"].toString());
      }
      if(callBack != null){
        // callback(((event.latLng?.latitude ?? 0) * 1000000).toInt(),((event.latLng?.longitude ?? 0) * 1000000).toInt(),((event.accuracy ?? 0) * 100 ).toInt());
        List<num> gps =  MapGpsUtil.gcj02_To_Gps84(lat ?? 0, lng ?? 0);
        if(gps.length >= 2){
          if(callBack != null){
            callBack!((gps[0] * 1000000 ).toInt(),(gps[1] * 1000000 ).toInt(),((accuracy ?? 0) * 100 ).toInt());
          }

        }
      }
   }));
  }


  static LocationManager2 _getInstance(){
    _instance ??= LocationManager2._internal();
    return _instance!;
  }

  ///获取iOS native的accuracyAuthorization类型
   void requestAccuracyAuthorization() async {
    AMapAccuracyAuthorization currentAccuracyAuthorization =
    await _locationPlugin.getSystemAccuracyAuthorization();
    if (currentAccuracyAuthorization ==
        AMapAccuracyAuthorization.AMapAccuracyAuthorizationFullAccuracy) {
      print("精确定位类型");
    } else if (currentAccuracyAuthorization ==
        AMapAccuracyAuthorization.AMapAccuracyAuthorizationReducedAccuracy) {
      print("模糊定位类型");
    } else {
      print("未知定位类型");
    }
  }


  ///设置定位参数
  void _setLocationOption() {
    if (null != _locationPlugin) {
      AMapLocationOption locationOption = AMapLocationOption();

      ///是否单次定位
      locationOption.onceLocation = false;

      ///是否需要返回逆地理信息
      locationOption.needAddress = false;

      ///逆地理信息的语言类型
      locationOption.geoLanguage = GeoLanguage.DEFAULT;

      locationOption.desiredLocationAccuracyAuthorizationMode =
          AMapLocationAccuracyAuthorizationMode.FullAccuracy;

      locationOption.fullAccuracyPurposeKey = "AMapLocationScene";

      ///设置Android端连续定位的定位间隔
      locationOption.locationInterval = 1000;

      ///设置Android端的定位模式<br>
      ///可选值：<br>
      ///<li>[AMapLocationMode.Battery_Saving]</li>
      ///<li>[AMapLocationMode.Device_Sensors]</li>
      ///<li>[AMapLocationMode.Hight_Accuracy]</li>
      locationOption.locationMode = AMapLocationMode.Hight_Accuracy;

      ///设置iOS端的定位最小更新距离<br>
      locationOption.distanceFilter = -1;

      ///设置iOS端期望的定位精度
      /// 可选值：<br>
      /// <li>[DesiredAccuracy.Best] 最高精度</li>
      /// <li>[DesiredAccuracy.BestForNavigation] 适用于导航场景的高精度 </li>
      /// <li>[DesiredAccuracy.NearestTenMeters] 10米 </li>
      /// <li>[DesiredAccuracy.Kilometer] 1000米</li>
      /// <li>[DesiredAccuracy.ThreeKilometers] 3000米</li>
      locationOption.desiredAccuracy = DesiredAccuracy.Best;

      ///设置iOS端是否允许系统暂停定位
      locationOption.pausesLocationUpdatesAutomatically = false;

      ///将定位参数设置给定位插件
      _locationPlugin.setLocationOption(locationOption);
    }
  }
  ///开始定位
  void startLocation(Function(int,int,int)? locationBack) {
    if (null != _locationPlugin) {
      callBack = locationBack;
      ///开始定位之前设置定位参数
      _setLocationOption();
      _locationPlugin.startLocation();
    }
  }

  void stopLocation(){
    if (null != _locationPlugin) {
      if(callBack != null){
        callBack = null;
      }
      _locationPlugin.stopLocation();
    }
  }




}
