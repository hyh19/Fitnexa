
part of creek_blue;

class CreekInterface extends CreekInterfaceProtocol{



  ///设置目标
  @override
  Future<int> setGoals({required dynamic userGoalModel}) async{
   return await CreekProcedure.insertGoals(userGoalModel: userGoalModel);
  }

  ///查询目标
  @override
  Future<CreekGoalsModel> getGoals() async{
    return await CreekProcedure.getGoals();
  }

  ///根据设备标识，查询绑定设备
  ///address  null 查所有
  @override
  Future<List<BlueDeviceInfo>> getBindDevice({String? address}) async{
      dynamic json = await CreekProcedure.getBindDevice(address: address);
      List<BlueDeviceInfo> devices = [];
      if(json is Map){
        dynamic data = json["data"];
        if(data is List){
            for(var e in data){
              if(e is Map){
                 BluetoothDevice device = BluetoothDevice.fromId(e["address"],name: e["name"],type: BluetoothDeviceType.unknown);
                 BlueDeviceInfo info = BlueDeviceInfo();
                 info.device = device;
                 info.lastBind = e["lastBind"] == 1 ? true : false;
                 info.blueName = e["blueName"];
                 devices.add(info);
              }
            }
        }
      }
      return devices;
  }

  ///删除绑定设备
  @override
  Future<bool> delBindDevice({String? address}) async{
    CreekLog.info("删除绑定设备:$address");
   return await CreekProcedure.delBindDevice(address: address);
  }

  ///修改蓝牙设备名称
  @override
  Future<bool> modifyDeviceInfo(String address,String name) async{
    return await CreekProcedure.modifyDeviceInfo(address: address,name: name);
  }


  ///根据设备标识，查询设备信息
  @override
  Future<DeviceModel?> getDeviceInfo({String? address}) async{
    return await CreekProcedure.getDeviceInfo(address: address);
  }

  ///，查询所有设备信息
  @override
  Future<List<DeviceModel>> getDeviceInfoList() async{
    return await CreekProcedure.getDeviceInfoList();
  }

  ///****************************
  ///查询首页数据
  ///timeFormat 时间格式 1 24小时  2 12小时
  ///****************************
  @override
  Future<dynamic> getHomeValue({int timeFormat = 1}) async{
    dynamic json = await CreekProcedure.getHomeValue(timeFormat: timeFormat);
    return json;
  }

  ///****************************
  ///查询新首页数据
  ///timeFormat 时间格式 1 24小时  2 12小时
  ///****************************
  @override
  Future<CreekHomeModel> getNewHomeValue({int timeFormat = 1}) async{
    return await CreekProcedure.getNewHomeValue(timeFormat: timeFormat);
  }

  ///*********************************
  ///查询当天的运动记录
  ///time 格式2022-01-03
  ///***********************************
  @override
  Future<SportDayTypeModel> getSportDayTypeData({required String time}) async {
    return await CreekProcedure.getSportDayTypeData(time: time);
  }

  ///*********************************
  ///运动记录列表
  ///***********************************
  @override
  Future<List<CreekSportWorkDayModel>> getSportRecord({int sportType = 1000,String time = ""}) async {
    List<CreekSportWorkDayModel> model = await CreekProcedure.getSportRecord(sportType: sportType,time: time);
    return model;
  }

  ///*********************************
  ///删除运动列表
  ///***********************************
  @override
  Future<bool> delSportRecord(int id) async {
    return await CreekProcedure.delSportRecord(id);
  }

  ///*********************************
  ///查询运动类型
  ///***********************************
  @override
  Future<dynamic> getSportType() async{
    return await CreekProcedure.getSportType();
  }

  ///*********************************
  ///查询运动类型
  ///***********************************
  @override
  Future<List<int>> getNewSportType() async {
    return await CreekProcedure.getNewSportType();
  }

  ///*********************************
  ///查询当天奖章数据
  ///time 格式2022-01-03
  ///***********************************
  @override
  Future<List<CreekActivityModel>> getMedalTypeData(String startTime, String endTime) async{
   List<CreekActivityModel> list = await CreekProcedure.getActivityNewTimeData(startTime, endTime);
   List<CreekActivityModel> models = [];
   if(list.isNotEmpty){
     for (var e in list) {
       CreekActivityModel model = e;
       SportDayTypeModel sportDayTypeModel = await CreekProcedure.getSportDayTypeData(time: model.createTime ?? "");
       model.sportTypes = sportDayTypeModel.sportTypes;
       models.add(model);
     }

   }
   return models;
  }

  ///****************************
  ///根据时间范围查询活动数据
  ///格式2022-1-2
  ///****************************
  @override
  Future<List<CreekActivityModel>> getActivityNewTimeData(String startTime, String endTime) async{
    return await CreekProcedure.getActivityNewTimeData(startTime, endTime);
  }

  ///****************************
  ///根据时间范围查询睡眠数据
  ///格式2022-1-2
  ///****************************
  @override
  Future<List<CreekSleepTotalModel>> getSleepNewTimeData(String startTime, String endTime) async{
    return await CreekProcedure.getSleepNewTimeData(startTime, endTime);
  }

  @override
  Future<List<CreekHeartRateModel>> getHeartRateNewTimeData(String startTime, String endTime)async {
    // TODO: implement getHeartRateNewTimeData
    return await CreekProcedure.getHeartRateNewTimeData(startTime, endTime);
  }

  @override
  Future<List<CreekHrvModel>> getHrvNewTimeData(String startTime, String endTime)async {
    // TODO: implement getHeartRateNewTimeData
    return await CreekProcedure.getHrvNewTimeData(startTime, endTime);
  }

  @override
  Future<List<CreekNoiseModel>> getNoiseNewTimeData(String startTime, String endTime)async {
    // TODO: implement getNoiseNewTimeData
    return await CreekProcedure.getNoiseNewTimeData(startTime, endTime);
  }

  @override
  Future<List<CreekOxygenModel>> getSpoNewTimeData(String startTime, String endTime) async{
    // TODO: implement getSpoNewTimeData
    return await CreekProcedure.getSpoNewTimeData(startTime, endTime);
  }

  @override
  Future<List<CreekStressModel>> getStressNewTimeData(String startTime, String endTime) async{
    // TODO: implement getStressNewTimeData
    return await CreekProcedure.getStressNewTimeData(startTime, endTime);
  }


}

