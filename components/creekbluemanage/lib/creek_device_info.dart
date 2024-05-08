

part of creek_blue;
class BlueDeviceInfo{
   BluetoothDevice? device;
   AdvertisementData? advertisementData;
   int? rssi;
   int? firmwareId;
   String? macAddress;
   ///设备颜色
   int? deviceColor;

   bool connectionStatus = false;
   ///是否是最后一次绑定的设备   true 是  false 否
   bool lastBind = false;
   String? blueName;
   bool? connectLoading; ///是否正在连接
  BlueDeviceInfo({this.device,this.advertisementData,this.connectionStatus=false});

   @override
  String toString() {
    return 'BlueDeviceInfo{device: $device, advertisementData: $advertisementData, rssi: $rssi, connectionStatus: $connectionStatus, lastBind: $lastBind, blueName: $blueName}';
  }
}