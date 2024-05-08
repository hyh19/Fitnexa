part of creek_map;

typedef CallBack = void Function(amap.Location? value);

class LocationManager {
  LocationManager._();

  static final LocationManager _instance = LocationManager._();
  factory LocationManager() => _instance;
  amap.Location? lastLocation;

  bool getLocationIng =false;
  CallBack? synLocationCallBack;
  ///这里针对上层syncTimeTask方法同步调用
  Future<void> getSynLocation(CallBack? callback) async {
    runZonedGuarded(() async {
      CreekLog.info("单次定位");
      if(getLocationIng){
        if(callback !=null){
          synLocationCallBack =callback;
        }
        return;
      }
      getLocationIng =true;
      synLocationCallBack =callback;
      final location = await amap.AmapLocation.instance.fetchLocation(mode: amap.LocationAccuracy.High);
      lastLocation = location;

      synLocationCallBack?.call(location);
      synLocationCallBack =null;
      getLocationIng =false;
     // callback?.call(location);
    }, (Object error, StackTrace stackTrace) {
      CreekLog.info("定位异常:$error");
      if (lastLocation != null) {
        CreekLog.info("使用上次定位:$lastLocation");
      }
      //callback?.call(lastLocation);
      synLocationCallBack?.call(lastLocation);
      synLocationCallBack =null;
      getLocationIng =false;
    });
  }

  ///单次定位
  Future<void> getLocation(CallBack? callback) async {
    runZonedGuarded(() async {
      CreekLog.info("单次定位");
      final location = await amap.AmapLocation.instance.fetchLocation(mode: amap.LocationAccuracy.High);
      lastLocation = location;
      callback?.call(location);
    }, (Object error, StackTrace stackTrace) {
      CreekLog.info("定位异常:$error");
      if (lastLocation != null) {
        CreekLog.info("使用上次定位:$lastLocation");
      }
      callback?.call(lastLocation);
    });
  }

  //连续定位
   startLocation({Function(int,int,int)? callback}) async{
     await amap.AmapLocation.instance.enableBackgroundLocation(1,
         amap.BackgroundNotification(
             contentTitle: "Fitbeing",
             contentText: "Fitbeing Location........",
             channelId: "channelId",
             channelName: "channelName"));

     amap.LocationAccuracy  locationAccuracy = amap.LocationAccuracy.High;
     if(Platform.isAndroid){
       locationAccuracy = amap.LocationAccuracy.DeviceSensor;
     }
    amap.AmapLocation.instance
        .listenLocation(interval:1000,mode: locationAccuracy,needAddress: false,distanceFilter: 1,timeout: const Duration(seconds: 6))
        .listen((event) {
          print(event.toString());
          if(callback != null){
            // callback(((event.latLng?.latitude ?? 0) * 1000000).toInt(),((event.latLng?.longitude ?? 0) * 1000000).toInt(),((event.accuracy ?? 0) * 100 ).toInt());
            List<num> gps =  MapGpsUtil.gcj02_To_Gps84(event.latLng?.latitude ?? 0, event.latLng?.longitude ?? 0);
            if(gps.length >= 2){
              callback((gps[0] * 1000000 ).toInt(),(gps[1] * 1000000 ).toInt(),((event.accuracy ?? 0) * 100 ).toInt());
            }
          }
    } );
  }

  //停止定位
   Future stopLocation() async {
    await amap.AmapLocation.instance.stopLocation();

  }

  //停止后台定位
  Future disableBackgroundLocation() async {
    await amap.AmapLocation.instance.disableBackgroundLocation(false);
  }

}
