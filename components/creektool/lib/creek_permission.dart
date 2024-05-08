part of creek_tool;

class CreekPermission {
  ///蓝牙权限
  static Future<bool> isBlue() async {
    if (Platform.isIOS) {
      var isBleGranted = await Permission.bluetooth.request();
      return isBleGranted == PermissionStatus.granted;
    } else {
      //  var isLocationGranted = await Permission.locationWhenInUse.request();

      //  var isBleScanGranted = await Permission.bluetoothScan.request();
      // var isBleConnectGranted = await Permission.bluetoothConnect.request();

      Map<Permission, PermissionStatus> statuses = await [
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
      ].request();

      //   var isBleAdvertiseGranted = await Permission.bluetoothAdvertise.request();

      //isLocationGranted == PermissionStatus.granted &&
      //isBleAdvertiseGranted == PermissionStatus.granted
      //  isBleScanGranted == PermissionStatus.granted && isBleConnectGranted == PermissionStatus.granted;
      if (!await Permission.bluetoothScan.isGranted) {
        return false;
      }

      if (!await Permission.bluetoothScan.isGranted) {
        return false;
      }
      return true;
    }
  }

  static Future<PermissionStatus> getBlueStatus() async {
    if (Platform.isIOS) {
      var isBleGranted = await Permission.bluetooth.status;
      return isBleGranted;
    } else {
      // var isLocationGranted = await Permission.locationWhenInUse.status;

      var isBleScanGranted = await Permission.bluetoothScan.status;
      var isBleConnectGranted = await Permission.bluetoothConnect.status;
      //  var isBleAdvertiseGranted = await Permission.bluetoothAdvertise.status;
      //   if (isLocationGranted.isPermanentlyDenied) {
      //     return PermissionStatus.permanentlyDenied;
      //   }
      //
      //   if (isBleAdvertiseGranted.isPermanentlyDenied) {
      //     return PermissionStatus.permanentlyDenied;
      //   }

      if (isBleScanGranted.isPermanentlyDenied) {
        return PermissionStatus.permanentlyDenied;
      }

      if (isBleConnectGranted.isPermanentlyDenied) {
        return PermissionStatus.permanentlyDenied;
      }

      if (
          // isLocationGranted == PermissionStatus.granted &&
          //     isBleAdvertiseGranted == PermissionStatus.granted
          isBleScanGranted == PermissionStatus.granted && isBleConnectGranted == PermissionStatus.granted) {
        return PermissionStatus.granted;
      }
      return PermissionStatus.denied;
    }
  }

  static Future<bool> requestBlue() async {
    if (Platform.isIOS) {
      PermissionStatus request = await Permission.bluetooth.request();
      return request.isGranted;
    } else {
      Map<Permission, PermissionStatus> statuses = await [
        //  Permission.locationWhenInUse,
        // Permission.bluetooth,
        Permission.bluetoothScan,
        Permission.bluetoothConnect,
        //  Permission.bluetoothAdvertise,
      ].request();
      if (
          //statuses[Permission.locationWhenInUse]!.isGranted &&
          // statuses[Permission.bluetooth]!.isGranted &&
          statuses[Permission.bluetoothScan]!.isGranted && statuses[Permission.bluetoothConnect]!.isGranted

          // && statuses[Permission.bluetoothAdvertise]!.isGranted
          ) {
        return true;
      }

      return false;
    }
  }

  ///相册权限
  static Future<bool> isPhotos() async {
    var isPhotos = await Permission.photos.request();
    var isStorage = await Permission.storage.request();
    if (Platform.isIOS) {
      return isPhotos == PermissionStatus.granted;
    } else {
      return isStorage == PermissionStatus.granted;
    }
  }


  static Future<bool> getPhotosStatus() async {
    PermissionStatus isPhotos = await Permission.photos.status;
    PermissionStatus isStorage = await Permission.storage.status;
    if (Platform.isIOS) {
      return isPhotos.isGranted;
    } else {
      return isStorage.isGranted;
    }
  }

  ///相机权限
  static Future<bool> isCamera() async {
    var isCamera = await Permission.camera.request();
    return isCamera == PermissionStatus.granted;
  }

  static Future<bool> getCameraStatus() async {
    PermissionStatus isCamera = await Permission.camera.status;
    return isCamera.isGranted;
  }

  ///位置权限
  static Future<bool> isLocation() async {
    var isLocation = await Permission.location.request();
    if(Platform.isAndroid){
      var isLocation2 = await Permission.locationWhenInUse.request();
      var isLocation3 = await Permission.locationAlways.request();
    }
    return isLocation == PermissionStatus.granted;
  }

  static Future<bool> getContactsStatus() async {
    var status = await Permission.contacts.status;
    return status == PermissionStatus.granted;
  }

  static Future<bool> requestContactsStatus() async {
    PermissionStatus status = await Permission.contacts.request();
    return status == PermissionStatus.granted;
  }

  static Future<bool> getLocationStatus() async {
    var isLocation = await Permission.location.status;
    return isLocation == PermissionStatus.granted;
  }
  static Future<bool> getLocationAlwaysStatus() async {
    var isLocation = await Permission.locationAlways.status;
    return isLocation == PermissionStatus.granted;
  }
  static Future<bool> getSmsStatus() async {
    PermissionStatus status = await Permission.sms.status;
    return status.isGranted;
  }

  static Future<bool> getNotificationStatus() async {
    PermissionStatus status = await Permission.notification.status;
    return status.isGranted;
  }

  static Future<bool> requestNotificationPermission() async {
    PermissionStatus status = await Permission.notification.request();
    return status == PermissionStatus.granted;
  }

  static Future<bool> requestSmstsStatus() async {
    PermissionStatus status = await Permission.sms.request();
    return status == PermissionStatus.granted;
  }

  static Future<bool> isNotification() async {
    var isLocation = await Permission.notification.request();
    return isLocation == PermissionStatus.granted;
  }

  static Future<bool> requestGranted() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.notification,
      Permission.contacts,
      Permission.phone,
      Permission.sms,
      Permission.storage,
      Permission.location,
    ].request();

    //  var isLocationGranted = await Permission.locationWhenInUse.request();

    var isBleScanGranted = await Permission.bluetoothScan.request();
    var isBleConnectGranted = await Permission.bluetoothConnect.request();
    // var isBleAdvertiseGranted = await Permission.bluetoothAdvertise.request();

    //granted 通过，denied 被拒绝，permanentlyDenied 拒绝且不在提示
    if (statuses[Permission.camera]!.isGranted &&
        statuses[Permission.notification]!.isGranted &&
        statuses[Permission.contacts]!.isGranted &&
        statuses[Permission.phone]!.isGranted &&
        statuses[Permission.sms]!.isGranted &&
        statuses[Permission.storage]!.isGranted &&
        statuses[Permission.location]!.isGranted) {
      if (Platform.isIOS) {
        var isBleGranted = await Permission.bluetooth.request();
        return isBleGranted == PermissionStatus.granted;
      } else {
        //   isLocationGranted == PermissionStatus.granted &&
        // isBleAdvertiseGranted == PermissionStatus.granted
        isBleScanGranted == PermissionStatus.granted && isBleConnectGranted == PermissionStatus.granted;
      }
    }
    return false;
  }
  ///蓝牙权限
  static Future<bool> requestBlePermission() async {
    if (Platform.isIOS) {
      var isBleGranted = await Permission.bluetooth.request();
      print('checkBlePermissions, isBleGranted=$isBleGranted');
      if (!isBleGranted.isGranted) {
        return false;
      }
      return isBleGranted == PermissionStatus.granted;
    } else {
      Map<Permission, PermissionStatus> statuses = {};

      statuses = await [
        Permission.bluetoothScan,
        Permission.location,
        Permission.locationWhenInUse,
        Permission.locationAlways,
        Permission.bluetoothConnect,
      ].request();

      if (!(statuses[Permission.location]?.isGranted??false)) {

        return false;
      }

      if (!(statuses[Permission.bluetoothConnect]?.isGranted??false)) {

        return false;
      }
      if (!(statuses[Permission.bluetoothScan]?.isGranted??false)) {
        return false;
      }

      return (statuses[Permission.bluetoothScan]?.isGranted??true ) && (statuses[Permission.bluetoothConnect]?.isGranted??true);
    }
  }
}
