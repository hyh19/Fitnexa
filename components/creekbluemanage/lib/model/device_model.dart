
part of creek_blue;

class DeviceModel{
  ///设备id
  int? deviceId;
  ///固件主版本号
  int? majorVersion;
  ///固件次版本号
  int? minorVersion;
  ///固件小版本号
  int? microVersion;
  ///绑定状态
  int? pairFlag;
  ///手表平台
  CreekPlatform? platform;
  ///设备形状
  CreekShape? creekShape;
  ///设备类型
  CreekDevType? creekDevType;
  ///ble蓝牙地址
  String? macAddress;
  ///bt蓝牙地址
  String? btAddress;
  ///电池信息
  DeviceBatteryModel? deviceBatteryModel;
  ///
  BtNameModel? btNameModel;
  ///字库主版本号
  int? fontMajorVersion;
  ///字库次版本号
  int? fontMinorVersion;
  ///字库小版本号
  int? fontMicroVersion;
  ///重启标志
  int? rebootFlag;
  HardwareSupportModel? hardwareSupportModel;
  DeviceSizeModel? deviceSizeModel;
  DeviceSnModel? deviceSnModel;
  VoiceAssistantModel? voiceAssistantModel;
  bool? heartRatePush;



  ///恢复模式标志
  bool? isRecoveryMode;
  ///设备外壳颜色
  int? deviceColor;

  ///照片表盘支持相片个数
  int? photoNum;

  ///是否绑定
  int? lastBind;

  BlueDeviceInfo? blueDeviceInfo;
  String getVersion(){
   return '${(majorVersion ?? 0)}.${(minorVersion ?? 0)}.${(microVersion ?? 0)}';
  }

  DeviceModel fromBuffer(List<int> buffer){
    DeviceModel deviceModel = DeviceModel();
    protocol_device_info deviceInfo  =  protocol_device_info.fromBuffer(buffer);
    deviceModel.deviceId = deviceInfo.deviceId;
    deviceModel.majorVersion = deviceInfo.majorVersion;
    deviceModel.minorVersion = deviceInfo.minorVersion;
    deviceModel.microVersion = deviceInfo.microVersion;
    deviceModel.pairFlag = deviceInfo.pairFlag;
    deviceModel.platform = CreekPlatform.values[deviceInfo.platform.value];
    deviceModel.creekShape = (deviceInfo.shape == Shape.SQUARE_SHAPE) ? CreekShape.squareShape : (deviceInfo.shape == Shape.ROUND_SHAPE) ? CreekShape.roundShape : null ;
    deviceModel.creekDevType = (deviceInfo.devType == Dev_type.WATCH_TYPE) ? CreekDevType.watchType : (deviceInfo.devType == Dev_type.BAND_TYPE) ? CreekDevType.bandType : null;

    List<String> split = BlueTool.listToString(BlueTool.list10Tolist16(deviceInfo.macAddr)).split(":");
    String s = '';
    for (int i = split.length - 1; i >= 0; i--) {
      s = s == "" ? split[i] : "$s:${split[i]}";
    }
    deviceModel.macAddress =  s;
    deviceModel.btAddress = deviceInfo.btAddr.toString();
    DeviceBatteryModel deviceBatteryModel = DeviceBatteryModel();
    deviceBatteryModel.voltage = deviceInfo.battInfo.voltage;
    switch(deviceInfo.battInfo.status){
      case Batt_status.NORMAL:
        deviceBatteryModel.batteryStatus = BatteryStatus.normal;
        break;
      case Batt_status.CHARING:
        deviceBatteryModel.batteryStatus = BatteryStatus.charge;
        break;
      case Batt_status.FULL:
        deviceBatteryModel.batteryStatus = BatteryStatus.full;
        break;
      case Batt_status.LOW:
        deviceBatteryModel.batteryStatus = BatteryStatus.low;
        break;
    }
    deviceBatteryModel.batteryLevel = deviceInfo.battInfo.battLevel;
    deviceBatteryModel.lastChargingYear = deviceInfo.battInfo.lastChargingYear;
    deviceBatteryModel.lastChargingMonth = deviceInfo.battInfo.lastChargingMonth;
    deviceBatteryModel.lastChargingDay = deviceInfo.battInfo.lastChargingDay;
    deviceBatteryModel.lastChargingHour = deviceInfo.battInfo.lastChargingHour;
    deviceBatteryModel.lastChargingMinute = deviceInfo.battInfo.lastChargingMinute;
    deviceBatteryModel.lastChargingSecond = deviceInfo.battInfo.lastChargingSecond;
    switch(deviceInfo.battInfo.mode){
      case Batt_mode.INVALID:
        deviceBatteryModel.batteryModel = BatteryModel.invalid;
        break;
      case Batt_mode.NORMAL_MODE:
        deviceBatteryModel.batteryModel = BatteryModel.normal;
        break;
      case Batt_mode.ECO_MODE:
        deviceBatteryModel.batteryModel = BatteryModel.economy;
        break;
    }
    deviceModel.deviceBatteryModel = deviceBatteryModel;
    BtNameModel btNameModel = BtNameModel();
    btNameModel.isSupport = deviceInfo.btName.isSupport;
    btNameModel.name =    utf8.decode(deviceInfo.btName.btName);
    deviceModel.btNameModel = btNameModel;
    deviceModel.fontMajorVersion = deviceInfo.fontMajorVersion;
    deviceModel.fontMinorVersion = deviceInfo.fontMinorVersion;
    deviceModel.fontMicroVersion = deviceInfo.fontMicroVersion;
    deviceModel.rebootFlag = deviceInfo.rebootFlag;
    HardwareSupportModel supportModel = HardwareSupportModel();
    supportModel.heartRateHardware = deviceInfo.hwSupport.heartrateHardware;
    supportModel.accHardware = deviceInfo.hwSupport.accHardware;
    supportModel.gyroHardware = deviceInfo.hwSupport.gyroHardware;
    supportModel.buttonHardware = deviceInfo.hwSupport.buttonHardware;
    supportModel.lcdHardware = deviceInfo.hwSupport.lcdHardware;
    supportModel.tpHardware = deviceInfo.hwSupport.tpHardware;
    supportModel.motorHardware = deviceInfo.hwSupport.motorHardware;
    supportModel.micHardware = deviceInfo.hwSupport.micHardware;
    supportModel.speakHardware = deviceInfo.hwSupport.speakHardware;
    supportModel.gpsHardware = deviceInfo.hwSupport.gpsHardware;
    supportModel.norFlashHardware = deviceInfo.hwSupport.norflashHardware;
    supportModel.nAndFlashHardware = deviceInfo.hwSupport.nandflashHardware;
    deviceModel.hardwareSupportModel = supportModel;
    DeviceSizeModel sizeModel = DeviceSizeModel();
    sizeModel.width = deviceInfo.sizeInfo.width;
    sizeModel.height = deviceInfo.sizeInfo.height;
    sizeModel.angle = deviceInfo.sizeInfo.angle;
    deviceModel.deviceSizeModel = sizeModel;
    deviceModel.isRecoveryMode = deviceInfo.isRecoveryMode;
    deviceModel.deviceColor = deviceInfo.deviceColor;
    deviceModel.photoNum = deviceInfo.platePhotoPicSupportNum;

    VoiceAssistantModel assistantModel = VoiceAssistantModel();
    assistantModel.fwMajorVersion = deviceInfo.voiceAssistant.fwMajorVersion;
    assistantModel.fwMinorVersion = deviceInfo.voiceAssistant.fwMinorVersion;
    assistantModel.fwType = deviceInfo.voiceAssistant.fwType;
    assistantModel.nwMajorVersion = deviceInfo.voiceAssistant.nwMajorVersion;
    assistantModel.nwMinorVersion = deviceInfo.voiceAssistant.nwMinorrVersion;
    assistantModel.nwType = deviceInfo.voiceAssistant.nwType;
    assistantModel.currentLanguage = deviceInfo.voiceAssistant.currentLanguage;
    assistantModel.switchLanguage = deviceInfo.voiceAssistant.switchLanguage;
    deviceModel.voiceAssistantModel = assistantModel;

    DeviceSnModel sNModel = DeviceSnModel();
    sNModel.productId = deviceInfo.snInfo.productId;
    sNModel.factoryId = deviceInfo.snInfo.factoryId;
    sNModel.customerId = deviceInfo.snInfo.customerId;
    sNModel.productionDate = deviceInfo.snInfo.productionDate;
    sNModel.batchNum = deviceInfo.snInfo.batchNum;
    sNModel.serialNum = deviceInfo.snInfo.serialNum;
    sNModel.colorCode = deviceInfo.snInfo.colorCode;
    deviceModel.deviceSnModel = sNModel;

    deviceModel.heartRatePush = deviceInfo.heartratePush;

    return deviceModel;
  }

  DeviceModel fromToJson(dynamic e){
    DeviceModel device = DeviceModel();
    device.deviceId = e["device_id"];
    device.majorVersion = e["major_version"];
    device.minorVersion = e["minor_version"];
    device.microVersion = e["micro_version"];
    device.pairFlag = e["pair_flag"];
    device.platform =  CreekPlatform.values[e["platform"]];
    device.creekShape = e["shape"] == 0 ? CreekShape.squareShape : CreekShape.roundShape;
    device.creekDevType = e["dev_type"] == 0 ? CreekDevType.watchType : CreekDevType.bandType;
    device.deviceBatteryModel = DeviceBatteryModel();
    device.deviceBatteryModel?.batteryLevel = e["batteryLevel"];
    device.macAddress = e["mac_addr"];
    device.btAddress = e["bt_addr"];
    device.btNameModel = BtNameModel();
    device.btNameModel?.name = e["bt_name"];
    device.fontMajorVersion = e["font_major_version"];
    device.fontMinorVersion = e["font_minor_version"];
    device.fontMicroVersion = e["font_micro_version"];
    DeviceSizeModel deviceSizeModel = DeviceSizeModel();
    deviceSizeModel.width = e["width"];
    deviceSizeModel.height = e["height"];
    deviceSizeModel.angle = e["angle"];
    device.deviceSizeModel = deviceSizeModel;

    DeviceSnModel deviceSnModel = DeviceSnModel();
    deviceSnModel.productId = e["product_id"];
    deviceSnModel.factoryId = e["factory_id"];
    deviceSnModel.customerId = e["customer_id"];
    deviceSnModel.productionDate = e["production_date"];
    deviceSnModel.batchNum = e["batch_num"];
    deviceSnModel.serialNum = e["serial_num"];
    deviceSnModel.colorCode = e["color_code"];
    device.deviceSnModel = deviceSnModel;


    VoiceAssistantModel assistantModel = VoiceAssistantModel();
    assistantModel.fwMajorVersion = e["fw_major_version"];
    assistantModel.fwMinorVersion = e["fw_minor_version"];
    assistantModel.fwType = e["fw_type"];
    assistantModel.nwMajorVersion = e["nw_major_version"];
    assistantModel.nwMinorVersion = e["nw_minorr_version"];
    assistantModel.nwType = e["nw_type"];
    assistantModel.currentLanguage = e["current_language"];
    assistantModel.switchLanguage = e["switch_language"];
    device.voiceAssistantModel = assistantModel;

    device.fontMinorVersion = e["font_minor_version"];
    device.fontMicroVersion = e["font_micro_version"];
    device.isRecoveryMode = e["recoveryMode"] == 0 ? false : true;
    device.deviceColor = e["deviceColor"];
    device.photoNum = e["photoNum"];
    device.lastBind = e["lastBind"];
    BluetoothDevice bluetoothDevice = BluetoothDevice.fromId(e["address"],name: e["name"],type: BluetoothDeviceType.unknown);
    BlueDeviceInfo info = BlueDeviceInfo();
    info.device = bluetoothDevice;
    info.blueName = e["blueName"];
    device.blueDeviceInfo = info;
    return device;
  }

  @override
  String toString() {
    return 'DeviceModel{deviceId: $deviceId, majorVersion: $majorVersion, minorVersion: $minorVersion, microVersion: $microVersion, pairFlag: $pairFlag, platform: $platform, creekShape: $creekShape, creekDevType: $creekDevType, macAddress: $macAddress, btAddress: $btAddress, deviceBatteryModel: $deviceBatteryModel, btNameModel: $btNameModel, fontMajorVersion: $fontMajorVersion, fontMinorVersion: $fontMinorVersion, fontMicroVersion: $fontMicroVersion, rebootFlag: $rebootFlag, hardwareSupportModel: $hardwareSupportModel, deviceSizeModel: $deviceSizeModel, deviceSnModel: $deviceSnModel, voiceAssistantModel: $voiceAssistantModel, heartRatePush: $heartRatePush, isRecoveryMode: $isRecoveryMode, deviceColor: $deviceColor, photoNum: $photoNum, lastBind: $lastBind, blueDeviceInfo: $blueDeviceInfo}';
  }
}


class DeviceBatteryModel{
  int? voltage;
  ///电池状态
  BatteryModel? batteryModel;
  int? batteryLevel;
  int? lastChargingYear;
  int? lastChargingMonth;
  int? lastChargingDay;
  int? lastChargingHour;
  int? lastChargingMinute;
  int? lastChargingSecond;
  ///模式
  BatteryStatus? batteryStatus;

  @override
  String toString() {
    return 'DeviceBatteryModel{voltage: $voltage, batteryModel: $batteryModel, batteryLevel: $batteryLevel, lastChargingYear: $lastChargingYear, lastChargingMonth: $lastChargingMonth, lastChargingDay: $lastChargingDay, lastChargingHour: $lastChargingHour, lastChargingMinute: $lastChargingMinute, lastChargingSecond: $lastChargingSecond, batteryStatus: $batteryStatus}';
  }
}

class BtNameModel{
  ///是否支持bt，支持则可以获取bt蓝牙名，ios需要
  bool? isSupport;
  String? name;

  @override
  String toString() {
    return 'BtNameModel{isSupport: $isSupport, name: $name}';
  }
}
class FuncModel{
  bool? isSupport;
  int? cmdID;
}

class HardwareSupportModel{
  ///心率传感器
  bool? heartRateHardware;
  ///acc传感器
  bool? accHardware;
  ///陀螺仪传感器
  bool? gyroHardware;
  ///按键
  bool? buttonHardware;
  ///屏幕
  bool? lcdHardware;
  ///tp
  bool? tpHardware;
  ///motor
  bool? motorHardware;
  ///麦克风
  bool? micHardware;
  ///喇叭
  bool? speakHardware;
  ///gps
  bool? gpsHardware;
  ///nor_flash
  bool? norFlashHardware;
  ///nand_flash
  bool? nAndFlashHardware;

  @override
  String toString() {
    return 'HardwareSupportModel{heartRateHardware: $heartRateHardware, accHardware: $accHardware, gyroHardware: $gyroHardware, buttonHardware: $buttonHardware, lcdHardware: $lcdHardware, tpHardware: $tpHardware, motorHardware: $motorHardware, micHardware: $micHardware, speakHardware: $speakHardware, gpsHardware: $gpsHardware, norFlashHardware: $norFlashHardware, nAndFlashHardware: $nAndFlashHardware}';
  }
}

class DeviceSizeModel{
  ///宽
  int? width;
  ///高
  int? height;
  ///圆角角度
  int? angle;

  @override
  String toString() {
    return 'DeviceSizeModel{width: $width, height: $height, angle: $angle}';
  }
}

class VoiceAssistantModel{
   /// 固件主版本号
  int? fwMajorVersion;
   /// 固件次版本号
  int? fwMinorVersion;
  /// 固件语言类型
  int? fwType;
  /// 网络主版本号
  int? nwMajorVersion;
 /// 网络次版本号
  int? nwMinorVersion;
  /// 网络语言类型
  int? nwType;
  ///当前语言
  int? currentLanguage;
  ///是否切换语言  0是切换 1是未切换
  int? switchLanguage;

  String getVersion(){
    return '${(fwMajorVersion ?? 0)}.${(fwMinorVersion ?? 0)}';
  }
  String getNetVersion(){
    return '${(nwMajorVersion ?? 0)}.${(nwMinorVersion ?? 0)}';
  }
  @override
  String toString() {
    return 'VoiceAssistantModel{fwMajorVersion: $fwMajorVersion, fwMinorVersion: $fwMinorVersion, fwType: $fwType, nwMajorVersion: $nwMajorVersion, nwMinorVersion: $nwMinorVersion, nwType: $nwType, currentLanguage: $currentLanguage, switchLanguage: $switchLanguage}';
  }
}

class DeviceSnModel{
  ///产品系列标识
  int? productId;
  ///工厂标识
  int? factoryId;
  ///客户标识
  int? customerId;
  ///生产年月日
  int? productionDate;
  ///批次号
  int? batchNum;
  ///顺序编号
  int? serialNum;
  ///颜色代号
  int? colorCode;

  @override
  String toString() {
    return 'DeviceSnModel{productId: $productId, factoryId: $factoryId, customerId: $customerId, productionDate: $productionDate, batchNum: $batchNum, serialNum: $serialNum, colorCode: $colorCode}';
  }

  String toSNCode(){
    String snCode="${listToASCLL(productId??0)}${listToASCLL(factoryId??0)}${listToASCLL(customerId??0)}${listToASCLL(productionDate??0)}${listToASCLL(batchNum??0)}${listToASCLL(serialNum??0)}${listToASCLL(colorCode??0)}";
   if(snCode.startsWith('0.0.0.0.0.0.0')){
     return "";
    }
    return snCode.trim();
  }
  String listToASCLL(int id){
    return utf8.decode(BlueTool.int4ToListASCLL(id));
  }

  String customerIdToASCLL(){
    return (customerId==null || customerId==0)?"":utf8.decode(BlueTool.int4ToListASCLL(customerId ?? 0));
  }

}

