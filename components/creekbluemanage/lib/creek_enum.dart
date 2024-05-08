int mtu = 180;


enum ConnectionStatus{
  ///无设备
  none,
  ///已连接
  connect,
  ///连接中
  connecting,
  ///同步中
  sync,
  ///同步完成
  syncComplete,
  ///未连接
  unconnected,
  ///切换中
  inTransition,

}
///绑定状态
enum BindStart{
  ///未绑定
  none,
  ///已绑定
  bind,
}

enum SyncStatus{
  ///同步中
  syncing,
  ///未同步
  none,
  ///同步失败
  failure,
}

///命令id
enum CmdId {
  ///设备信息
  device,

  ///时间
  time,

  ///用户
  user,

  ///语言
  language,

  ///绑定
  binding,

  ///健康
  health,

  ///健康数据
  healthSync,

  ///传感器
  sensor,
  ///传感器
  log,
  ///闹钟
  alarm,

  ///勿扰
  disturb,

  ///屏幕
  screen,

  ///压力
  stress,

  ///监测
  monitor,

  ///睡眠监测
  sleepMonitor,

  ///喝水监测
  waterMonitor,

  ///站立
  standing,

  ///女性健康获
  menstrual,

  ///固件通知
  update,

  ///音乐
  music,

  ///天气
  weather,

  ///消息提醒_获取设备支持消息类型
  messageType,
  ///消息提醒_app消息提醒
  messageApp,
  ///消息提醒_设置消息开关
  messageOnOff,

  ///来电配置
  call,
  ///来电提醒
  callReminder,
  ///来电状态
  callState,

  ///设备支持运动类型
  sportType,

  ///设备运动排列顺序
  sportSort,

  ///运动中子项数据
  sportSub,

  ///运动自识别
  sportIdentification,

  ///运动心率区间设置
  sportHeartRate,

  ///同步gps
  sportGps,

  ///表盘
  watchDial,

  ///事项
  schedule,

  ///寻找手机/手表
  findPhone,

  ///手势抬腕
  gesture,

  ///快捷卡片
  card,

  ///世界时钟
  worldTime,

  ///联系人
  contacts,

  ///联系人
  contactsSOS,

  ///联系人
  mtu,
  ///语言助手
  voice,

  ///系统操作
  system,

  ///事件上报
  event,

  ///设备信息
  table,

  ///快捷键操作
  hotKey,

  ///知存固件传输
  wtm,

  ///专注模式
  focus,
  ///alexa 传输操作
  alexa1,
  ///alexa 状态返回
  alexa2,
  ///alexa 识别结果返回
  alexa3,
  ///alexa 闹钟
  alexa_alarm,
  ///alexa 事件提醒
  alexa_reminder,
  ///alexa 定时器
  alexa_timer,
  ///alexa 天气
  alexa_weather,
  ///alexa 通知
  alexa_notify,
  ///应用列表
  app,
  ///埋点
  track,





}

///命令类型
enum CmdType {
  start,

  ///- 0xC1 命令帧:开始发送数据
  middle,

  ///- 0xC2 命令帧:中间帧，后面还有数据
  end,

  ///- 0xC3命令帧: 已经结束
  stopRequest,

  ///- 0xCC 命令帧:终止发送
  stopReceive,

  ///- 0xCD 命令帧:终止接收

}

///应答码
enum CodeType {
  ///    0x00 正常
  code0,

  ///    0x01 命令ID不支持
  code1,

  ///   - 0x02 校验错误
  code2,

  ///  - 0x03 应用内部错误
  code3,

  ///   - 0x04 内存不足
  code4,

  ///   - 0x04 内存不足
  code5,

  ///  - 0x06 无效标志，帧命令类型不支持
  code6,

  /// 解码错误 前端自己定义的字段，固件那边没有
  code100,
}

///文件传输协议帧
enum FileProtocol {
  ///开始下发文件 0xD1
  start,
  ///下发数据中 0xD2
  middle,
  ///查询传输位置 0xD3
  queryIndex,
  ///结束 0xD4
  end,
  ///帮助
  help,
  ///无校验协议帧：开始 0xD6
  noCrcStart,
  ///无校验协议帧：数据帧  0xD7
  noCrcMiddle,
  ///无校验协议帧：数据帧  0xD7
  noCrcEnd,

  ///固件开始请求上传
  downStart,
  ///固件开始请求上传
  downMiddle,
  ///固件开始请求上传
  downEnd,


}

// ///任务队列状态
// enum TaskState{
//   start,       //开始
//   inProcess    //处理中
//
// }
///上传状态
enum UploadState {
  noStart,
  ///未开始
  uploading,
  ///上传中
  stop
  ///停止
}

///设备信息
///
enum CreekPlatform {
  JX_3085C_PLATFORM,//炬芯3085C平台
  JX_3085L_PLATFORM,//炬芯3085L平台
  JX_3085E_PLATFORM //炬芯3085E平台
}

enum CreekShape {
  squareShape, //方形
  roundShape //圆形
}

enum CreekDevType {
  watchType, //手表
  bandType, //手环
}

enum BatteryModel {
  invalid, //无效
  normal, //正常模式（非省电模式）
  economy //省电模式
}

enum BatteryStatus {
  normal, //未充电
  charge, //充电中
  full, //满电
  low //低电量
}

enum OperationType {
  invalid,

  ///查询
  inquire,

  ///设置
  set,
}

enum GenderType {
  ///男性
  male,

  ///女性
  female,

  other
}

///语言
enum LanguageType {
  ///无效
  invalid,

  ///中文
  chinese,

  ///英文
  english,

  ///德语
  german,

  ///西班牙
  spanish,

  ///意大利
  italian,

  ///日语
  japanese,

  ///俄罗斯
  russian,

  ///葡萄牙
  portuguese,

  ///法语
  french,
}

enum HeartRateKey {
  ///心率头部数据，
  head,

  ///心率图表详情数据
  data,

  ///心率过高过低时心率数据
  lowData,
}

enum AlarmType {
  ///起床
  getUp,

  ///睡觉
  sleep,
}

enum DisStatus {
  disOff,
  disOn,
}

enum NotifyType {
  ///允许通知
  allow,
  ///静默通知
  silent,
  ///关闭通知
  close,

}
enum HealthMonitorMode {
  ///手动
  manual,

  ///自动
  auto,

  ///连续监测
  continuous,

  ///智能监测
  intelligence
}

enum HealthType {
  ///心率
  heartRate,
  ///压力
  stress,
  ///血氧
  spo2,
  ///噪音
  noise,
  ///身体电量
  bodyEnergy,
  ///呼吸率
  respiratoryRate,
  ///皮肤温度
  skinTemperature,
}

enum SyncStressKey {
  ///压力头部数据，
  head,

  ///压力图表详情数据
  data,
}

enum SyncSpoKey {
  ///血氧头部数据，
  head,

  ///血氧图表详情数据
  data,
}

enum SyncHrvKey {
  ///Hrv头部数据，
  head,

  ///Hrv图表详情数据
  data,
}

enum SyncSleepKey {
  ///睡眠头部数据
  head,

  ///睡眠图表详情数据
  data,
}

enum SyncActivityKey {
  ///活动头部数据
  head,

  ///活动图表详情数据
  data,
}

enum SyncNoiseKey {
  ///活动头部数据
  head,

  ///活动图表详情数据
  data,
}

enum SyncSportKey {
  ///运动头部数据
  head,

  ///实时运动心率 每秒钟保存一组,最大保存20小时
  hr,

  ///实时公里速度详情 每5秒存一次 s钟数据传输 一公里用了多少
  kmSpeed,

  ///实时步频详情 每5秒存一次 步/分钟 一分钟多少步
  step,

  ///实时配速详情 每5秒存一次 传过来的是 s 钟  每5S算一次
  kmPace,

  ///实时步幅  每5S存一次
  stepStride,

  ///运动轨迹-纬度 每2秒存一次
  trailData,

  ///实时英里速度详情 每达到1英里时存一次 一英里用了多少s
  imSpeed,
  ///实时英里配速详情 每达到1公里时存一次 传过来的是 s 钟
  imPace,
  ///实时的绝对海拔高度详情 单位米 每10秒存一个值
  elevation,
  speedPace,

}

enum TimeType { day, week, month, year }

enum SportType {
  ORUN, //室外跑步
  IRUN, //室内跑步
  OWALK, //户外走路
  IWALK, //室内走路
  HIKING, //徒步
  OCYCLE, //户外骑行
  ICYCLE, //室内单车
  CRICKET, //板球
  FOOTBALL, //足球
  PSWIM, //泳池游泳
  OSWIM, //开放区游泳
  YOGA, //瑜伽
  PILATES, //普拉提
  DANCE, //跳舞
  ZUMBA, //尊巴舞
  ROWER, //划船机
  ELLIPTICAL, //椭圆机
  CTRAINING, //核心训练
  TSTRAINING, //传统力量训练
  FSTRAINING, //功能性力量训练
  HIIT, //HIIT
  COOLDOWN, //整理放松
  WORKOUT, //自由训练
  FITNESS, //健身
  OTHER, //其他

// 健身
  TREADMILL, //踏步机
  AEROBICS, //有氧健身操
  SIT_UP, //仰卧起坐
  PLANK, //平板支撑
  JUMPING_JACK, //开合跳
  CHIN_UP, //引体向上
  PUSH_UP, //俯卧撑
  DEEP_SQUAT, //深蹲
  HIGH_KNEE_LIFT, //高抬腿
  DUMBBELL, //哑铃
  BARBELL, //杠铃
  BOXING, //拳击
  KICKBOXING, //自由搏击
  HORIZONTAL_BAR, //单杠
  PARALLEL_BARS, //双杠
  WALKING_MACHINE, //漫步机
  SUMMIT_TRAINERS, //登山机

/*球类*/
  BOWLING, //保龄球
  TENNIS, //网球
  TABLE_TENNIS, //乒乓球
  GOLF, //高尔夫球
  BASKETBALL, //篮球
  BADMINTON, //羽毛球
  HOCKEY, //曲棍球
  RUGBY, //橄榄球
  HANDBALL, //手球
  SQUASH, //壁球
  BASEBALL, //棒球
  SOFTBALL, //垒球
  SHUTTLECOCK, //毽球
  SEPAKTAKRAW, //藤球

/*休闲运动*/
  STREET_DANCE, //街舞
  MOUNTAIN_CLINBING, //登山
  ROPE_SKIPPING, //跳绳
  CLIMB_STAIRS, //爬楼
  BALLET, //芭蕾
  SOCIAL_DANCE, //社交舞
  DARTS, //飞镖
  HORSEBACK_RIDING, //骑马

/*冰雪运动*/
  SLEIGH, //雪橇
  SKATING, //滑冰
  BOBSLEIGH_AND_TOBOGGANING, //雪车
  CURLING, //冰壶
  ICE_HOCKEY, //冰球

/*水上运动*/
  SURFING, //冲浪
  SAILBOAT, //帆船
  SAILBOARD, //帆板
  FOLDBOATING, //皮艇
  CANOEING, //划艇
  BOAT_RACE, //赛艇
  MOTORBOAT, //摩托艇
  WATER_POLO, //水球

/*极限运动*/
  SLIDING_PLATE, //滑板
  ROCK_CLIMBING, //攀岩
  BUNGEE_JUMPING, //蹦极
  PARKOUR, //跑酷
}

enum SportGoalType{
    TARGET,
    DURATION,
    CALORIE,
    PACE,
    SPEED,
    DISTANCE,
    LAP,
    SWINDISTANCE,
}

///配对状态
enum PairType{
  ///不需要配对
  noPair,
  ///需要配对
  pair,
}

///自连是否需要验证授权码
enum Authorization{
  ///不验证
  none,
  ///验证
  verify,
}

enum TaskType{
  ///同步
  sync,
  ///上传
  upload,
  ///下载
  down,
  ///Alexa
  alexa,
}

enum SyncServerType{
  activity,
  goal,
  hearRate,
  noise,
  pressure,
  sleep,
  spo,
  sport,
  hrv
}

enum SyncServerUpDownloadType{
  up,
  download,
}