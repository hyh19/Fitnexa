part of creek_blue;

abstract class CreekCommandProtocol {
  ///*****************************************
  ///获取设备信息
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getDeviceInfo(
      {Function(DeviceModel p1)? callBack,
      Function(String p1)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///获取设备信息
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getNewDeviceInfo(
      {Function(protocol_device_info)? callBack,
      Function(String p1)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///获取mtu大小
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getMtuSize(
      {Function(protocol_connect_status_inquire_reply)? callBack,
      Function(String p1)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置蓝牙状态
  ///reconnectOperate 重连操作
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void setMtuSize(bool reconnectOperate,
      {Function()? callBack,
      Function(String p1)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///时间获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getTime({Function(TimeModel)? callBack, Function(String)? errCallBack});

  ///*****************************************
  ///时间获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getNewTime(
      {Function(protocol_device_time_inquire_reply)? callBack,
      Function(String)? errCallBack});

  ///时间设置
  void setTime(
      {Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///时间设置
  @override
  void setNewTime(
      {required protocol_device_time_operate operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///查询支持语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getLanguage(
      {Function(LanguageModel)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setLanguage(LanguageType languageType,
      {Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///查询支持语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getNewLanguage(
      {Function(protocol_language_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setNewLanguage(protocol_language_operate operate,
      {Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///绑定设备
  ///authCode 授权码
  ///bindMethod  0 授权绑定 1直接绑定 2解除绑定 3配对码绑定
  ///callBack 授权码
  void bindingDevice(
      {int bindMethod = 0,
      String macAddress = "",
      List<int>? pairCode,
      Function()? callBack,
      Function()? errorCallBack,
      Function()? authorizationFailure,
      Function(List<int>)? pairCodeCallBack});

  ///*****************************************
  ///设置用户信息和偏好设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///userInfoModel 用户信息
  ///UserUnitModel 单位信息
  ///*****************************************

  void setUserInfo(UserInfoModel userInfoModel, UserUnitModel userUnitModel,
      UserGoalModel userGoalModel,
      {Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///查询用户信息和偏好设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getUserInfo(
      {Function(UserModel)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置闹钟
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///list 闹钟数组
  ///*****************************************
  void setAlarm(List<AlarmItemModel> list,
      {Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///本地闹钟获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getAlarm(
      {Function(AlarmReplyModel)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置闹钟
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///list 闹钟数组
  ///*****************************************
  void setNewAlarm(List<protocol_set_alarm_item> list,
      {Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///本地闹钟获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getNewAlarm(
      {Function(protocol_alarm_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///勿扰获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getDisturb(
      {Function(DisturbReplyModel)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置勿扰
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///disturbNum 勿扰数量
  ///disturbOnOff 勿扰开关 true 开启,false 关闭
  ///items 子项数据
  ///*****************************************
  void setDisturb(
      {int disturbNum = 4,
      bool disturbOnOff = false,
      required List<DisturbItem> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///勿扰获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getNewDisturb(
      {Function(protocol_disturb_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置勿扰
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///disturbNum 勿扰数量
  ///disturbOnOff 勿扰开关 true 开启,false 关闭
  ///items 子项数据
  ///*****************************************
  void setNewDisturb(
      {required protocol_disturb_operate disturb,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///屏幕亮度设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///level等级(0-100)
  ///switchFlag 息屏显示开关 true 开启,false 关闭
  ///wristSwitchFlag 抬腕时亮屏开关 true 开启,false 关闭
  ///errCallBack 失败返回信息
  ///screenAutoModel 间自动亮度调整子项数据
  ///*****************************************
  void setScreen(
      {required int level,
      required int showInterval,
      required ScreenAutoModel screenAutoModel,
      bool switchFlag = false,
      bool wristSwitchFlag = false,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///屏幕亮度获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************

  void getScreen(
      {Function(ScreenReplyModel)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///屏幕亮度设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///level等级(0-100)
  ///switchFlag 息屏显示开关 true 开启,false 关闭
  ///wristSwitchFlag 抬腕时亮屏开关 true 开启,false 关闭
  ///errCallBack 失败返回信息
  ///screenAutoModel 间自动亮度调整子项数据
  ///*****************************************
  void setNewScreen(
      {required protocol_screen_brightness_operate screenOperate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///屏幕亮度获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************

  void getNewScreen(
      {Function(protocol_screen_brightness_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///专注模式获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getFocus(
      {Function(protocol_focus_mode_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///专注模式设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setFocus(
      {required protocol_focus_mode_operate operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///健康监测获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getMonitor(
      {health_type healthType = health_type.HEART_RATE,
      health_monitor_mode mode = health_monitor_mode.AUTO,
      Function(protocol_health_monitor_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///健康监测设置
  ///health_type 健康监测类型
  ///health_monitor_mode 默认监测模式类型
  ///interval 测量间隔,单位s
  ///adjust 监测模式自动调整子项数据
  ///notify 提醒通知配置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setMonitor(
      {health_type healthType = health_type.HEART_RATE,
      health_monitor_mode mode = health_monitor_mode.AUTO,
      int interval = 2,
      required protocol_health_monitor_auto_adjust adjust,
      required protocol_heart_monitor_notify notify,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///睡眠监测获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getSleepMonitor(
      {Function(protocol_sleep_monitor_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///睡眠监测设置
  ///sleepMonitorType 健康监测类型
  ///switchFlag  开关 true 开启,false 关闭
  /// GENERAL = 0;//普通睡眠
  /// SCIENCE = 1;//科学睡眠
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setSleepMonitor(
      {sleep_monitor_type sleepMonitorType = sleep_monitor_type.GENERAL,
      bool switchFlag = false,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///喝水提醒获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getWater(
      {Function(protocol_drink_water_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///喝水提醒设置
  ///switchFlag 喝水提醒开关 true 开启,false 关闭
  /// notifyFlag 通知类型
  /// startHour  startMinute 提醒开始时间
  /// endHour  endMinute 提醒开始时间
  /// interval 提醒间隔,单位分钟
  ///errCallBack 失败返回信息
  ///*****************************************
  void setWater(
      {required bool switchFlag,
      required notify_type notifyFlag,
      int startHour = 0,
      int startMinute = 0,
      int endHour = 0,
      int endMinute = 0,
      int interval = 10,
      required List<bool> repeat,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///寻找手机/手表获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getFindPhoneWatch(
      {Function(protocol_find_phone_watch_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///寻找手机/手表设置
  ///phoneSwitch 寻找手机开关 true 开启,false 关闭
  /// watchSwitch 寻找手表开关 true 开启,false 关闭
  ///errCallBack 失败返回信息
  ///*****************************************
  void setFindPhoneWatch(
      {required bool findWatchFlag,
      required bool watchSwitch,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///语音助手获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getVoice(
      {Function(protocol_voice_assistant_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///语音助手设置
  ///awakenSwitchFlag 按住表冠对话开关
  ///wristSwitchFlag 抬腕呼叫语音助手开关
  ///errCallBack 失败返回信息
  ///***********************************
  void setVoice(
      {required bool awakenSwitchFlag,
      required bool wristSwitchFlag,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///世界时钟获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getWorldTime(
      {Function(protocol_world_time_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///世界时钟设置
  ///items 世界时间
  ///errCallBack 失败返回信息
  ///*****************************************
  void setWorldTime(
      {required List<protocol_world_time_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///站立提醒获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getStanding(
      {Function(protocol_standing_remind_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///站立提醒设置
  ///standingRemind 设置参数
  ///errCallBack 失败返回信息
  ///*****************************************
  void setStanding(
      {required protocol_standing_remind_set standingRemind,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///女性健康获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getMenstrual(
      {Function(protocol_menstruation_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///女性健康设置
  ///periodSet 经期设置
  ///record 根据经期周期，展示两个周期的记录
  ///errCallBack 失败返回信息
  ///*****************************************
  void setMenstrual(
      {required protocol_menstrual_period_set periodSet,
      required List<protocol_menstrual_record> records,
      required int utcTime,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///获取设备支持的消息类型
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getMessageType(
      {Function(protocol_message_notify_func_support_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///app消息提醒查询
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getMessageApp(
      {Function(protocol_message_notify_data_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///app消息提醒设置
  ///operate
  ///notify 经期提醒
  ///errCallBack 失败返回信息
  ///*****************************************
  void setMessageApp(
      {required protocol_message_notify_data operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///消息开关查询
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void getMessageOnOff(
      {Function(protocol_message_notify_switch_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///消息开关设置
  ///totalSwitch 消息应用总开关
  ///notifySwitch app消息通知开关
  ///errCallBack 失败返回信息
  ///*****************************************
  void setMessageOnOff(
      {bool notifySwitch = false,
      bool directSwitch = false,
      required List<protocol_message_notify_switch_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///音乐控制
  ///totalSwitch 消息应用总开关
  ///notifySwitch app消息通知开关
  ///errCallBack 失败返回信息
  ///*****************************************
  void setMusic(
      {required protocol_music_control_operate operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置天气
  ///callBack 成功返回
  ///errCallBack 失败返回信息
  ///*****************************************
  void setWeather(
      {required List<protocol_weather_detail_data_item> items,
      bool switchFlag = false,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///来电配置查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getCall(
      {Function(protocol_call_switch_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///来电配置设置
  ///callSwitch 来电开关 true 开启 false 关闭
  ///callDelay 来电延时 单位秒
  ///errCallBack 失败返回信息
  ///*****************************************
  void setCall(
      {required bool callSwitch,
      required int callDelay,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///来电提醒设置
  ///operate
  ///errCallBack 失败返回信息
  ///*****************************************
  void setCallReminder(
      {required protocol_call_remind operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///来电状态
  ///state 0 来电已接 1 来电已拒
  ///errCallBack 失败返回信息
  ///*****************************************
  void setCallState(
      {int state = 0,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///常用联系人 查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getContacts(
      {Function(protocol_frequent_contacts_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///联系人设置
  ///items 常用联系人信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setContactsSOS(
      {required List<protocol_emergency_contacts_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///紧急联系人 查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getContactsSOS(
      {Function(protocol_emergency_contacts_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///联系人设置
  ///items 紧急联系人信息
  ///errCallBack 失败返回信息
  ///*****************************************
  void setContacts(
      {required List<protocol_frequent_contacts_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///快捷卡片查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************

  void getCard(
      {Function(protocol_quick_card_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///快捷卡片设置
  ///type 卡片类型
  ///errCallBack 失败返回信息
  ///*****************************************
  void setCard(
      {required List<quick_card_type> types,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///获取设备支持运动类型
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************

  void getSportType(
      {Function(protocol_exercise_func_support_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设备运动排列顺序查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************

  void getSportSort(
      {Function(protocol_exercise_sport_mode_sort_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设备运动排列顺序设置
  ///sportTypes 运动类型
  ///errCallBack 失败返回信息
  ///*****************************************
  void setSportSort(
      {required List<sport_type> sportTypes,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///运动中子项数据查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************

  void getSportSub(
      {Function(protocol_exercise_sporting_param_sort_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///运动中子项数据设置
  ///sportTypes 运动类型
  ///errCallBack 失败返回信息
  ///*****************************************

  void setSportSub(
      {required List<int> items,
      required sport_type sportType,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///运动自识别查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getSportIdentification(
      {Function(protocol_exercise_intelligent_recognition_inquire_reply)?
          callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///运动自识别设置
  ///operate 运动自识别配置
  ///errCallBack 失败返回信息
  ///*****************************************
  void setSportIdentification(
      {required protocol_exercise_intelligent_recognition operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  // ///*****************************************
  // ///心率区间查询
  // ///errCallBack 失败返回信息
  // ///seedCmd 返回发送的命令
  // ///rawData 返回原始数据
  // ///*****************************************
  // void getSportHeartRate(
  //     {Function(protocol_exercise_heart_rate_zone_inquire_reply)? callBack,
  //       Function(String)? errCallBack,
  //       Function(String)? seedCmd,
  //       Function(String)? rawData});

  ///*****************************************
  ///心率区间设置
  ///maxHeartRate 最大心率
  ///restingHeartRate 静息心率值
  ///errCallBack 失败返回信息
  ///*****************************************
  void setSportHeartRate(
      {required int zone1,
      required int zone2,
      required int zone3,
      required int zone4,
      required int zone5,
      required int zone6,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///增加事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************

  void addSchedule(
      {required protocol_schedule_item item,
      notify_type notifyFlag = notify_type.ALLOW,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///删除事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  void delSchedule(
      {required protocol_schedule_item item,
      notify_type notifyFlag = notify_type.ALLOW,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///改事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  void updateSchedule(
      {required protocol_schedule_item item,
      notify_type notifyFlag = notify_type.ALLOW,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///查事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  void getSchedule(
      {Function(protocol_schedule_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///查询表盘
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getWatchDial(
      {Function(protocol_watch_dial_plate_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///设置表盘
  ///dialName 表盘名称
  ///errCallBack 失败返回信息
  ///*****************************************
  void setWatchDial(
      {required List<String> dialNames,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///删除表盘
  ///dialName 表盘名称
  ///errCallBack 失败返回信息
  ///*****************************************
  void delWatchDial(
      {required List<String> dialNames,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///系统操作
  ///type  1 重启操作 2关机操作
  ///errCallBack 失败返回信息
  ///*****************************************
  void setSystem(
      {required int type,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///功能表
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  void getTable(
      {Function(protocol_function_table)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///按键快捷获取
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getHotKey(
      {Function(protocol_button_crown_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///按键快捷设置
  ///errCallBack 失败返回信息
  ///*****************************************
  void setHotKey(
      {required protocol_button_crown_operate operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///知存固件传输
  ///*****************************************
  void setWtm(
      {required wtm_operate_type type,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///应用列表获取
  ///*****************************************
  void getAppList(
      {Function(protocol_app_list_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///应用列表设置
  ///*****************************************
  void setAppList(
      {required protocol_app_list_operate operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData});

  ///*****************************************
  ///查询埋点
  ///*****************************************
  void getTrack({Function(protocol_event_tracking_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
}

CreekCommandProtocol _initCommandProtocol() {
  return FoundationCommand();
}

final CreekCommandProtocol foundationCommand = _initCommandProtocol();
