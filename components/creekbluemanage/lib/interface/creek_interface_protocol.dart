
part of creek_blue;

abstract class CreekInterfaceProtocol{


   ///根据设备标识，查询绑定设备
   ///address  null 查所有
   Future<List<BlueDeviceInfo>> getBindDevice({String? address});

   ///修改蓝牙设备名称
   Future<bool> modifyDeviceInfo(String address,String name);

   ///删除绑定设备
   Future<bool> delBindDevice({String? address});

   ///设置目标
   Future<int> setGoals({required dynamic userGoalModel});

   ///查询目标
   Future<CreekGoalsModel> getGoals();

   ///根据设备标识，查询设备信息
   Future<DeviceModel?> getDeviceInfo({String? address});

   ///，查询所有设备信息
   Future<List<DeviceModel>> getDeviceInfoList();

   ///****************************
   ///查询首页数据
   ///timeFormat 时间格式 1 24小时  2 12小时
   ///****************************
   Future<dynamic> getHomeValue({int timeFormat = 1});

   ///****************************
   ///查询新首页数据
   ///timeFormat 时间格式 1 24小时  2 12小时
   ///****************************
   Future<CreekHomeModel> getNewHomeValue({int timeFormat = 1});

   ///****************************
   ///根据时间范围查询活动数据
   ///格式2022-1-2
   ///****************************
    Future<List<CreekActivityModel>> getActivityNewTimeData(String startTime, String endTime);

   ///****************************
   ///根据时间范围查询睡眠数据
   ///格式2022-1-2
   ///****************************
   Future<List<CreekSleepTotalModel>> getSleepNewTimeData(String startTime, String endTime);

   ///****************************
   ///根据时间范围查询心率数据
   ///格式2022-1-2
   ///****************************
   Future<List<CreekHeartRateModel>> getHeartRateNewTimeData(String startTime, String endTime);

   ///****************************
   ///根据时间范围查询hrv数据
   ///格式2022-1-2
   ///****************************
   Future<List<CreekHrvModel>> getHrvNewTimeData(String startTime, String endTime);

   ///****************************
   ///根据时间范围查询压力数据
   ///格式2022-1-2
   ///****************************
   Future<List<CreekStressModel>> getStressNewTimeData(String startTime, String endTime);

   ///****************************
   ///根据时间范围查询噪音数据
   ///格式2022-1-2
   ///****************************
   Future<List<CreekNoiseModel>> getNoiseNewTimeData(String startTime, String endTime);

   ///****************************
   ///根据时间范围查询血氧数据
   ///格式2022-1-2
   ///****************************
   Future<List<CreekOxygenModel>> getSpoNewTimeData(String startTime, String endTime);




   ///*********************************
   ///查询当天的运动记录
   ///time 格式2022-01-03
   ///***********************************
   Future<SportDayTypeModel> getSportDayTypeData({required String time});

   ///*********************************
   ///运动记录列表
   ///***********************************
   Future<List<CreekSportWorkDayModel>> getSportRecord({int sportType = 1000,String time = ""});

   ///*********************************
   ///删除运动列表
   ///***********************************
    Future<bool> delSportRecord(int id);

   ///*********************************
   ///查询运动类型
   ///***********************************
   Future<dynamic> getSportType();

   ///*********************************
   ///查询运动类型
   ///***********************************
   Future<List<int>> getNewSportType();




   ///*********************************
   ///查询奖章数据
   ///time 格式2022-01-03
   ///***********************************
   Future<List<CreekActivityModel>> getMedalTypeData(String startTime, String endTime);




}

CreekInterfaceProtocol _initInterfaceProtocol() {
   return CreekInterface();
}

final CreekInterfaceProtocol interfaceProtocol = _initInterfaceProtocol();