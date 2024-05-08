import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';

/// 接口地址
class UrlPath {
  UrlPath._();

  /// url 前缀
  static const String baseTestURLs = 'test-center.creekwearable.com:9501';
  static const String releaseBaseURL = 'test-center.creekwearable.com:9501';


  /// 用户登录
  static const String login = '/service-user/v1/auth/login';

  /// 用户注册
  static const String register = '/service-user/v1/auth/register';

  /// 保存用户信息
  static const String putUserInfo = '/service-user/v1/user/info';

  /// 获取用户信息
  static const String getUserInfo = '/service-user/v1/user/info';

  /// 修改邮箱
  static const String emailUpdate = '/service-user/v1/auth/email/update';

  /// 注销用户
  static const String logoff = '/service-user/v1/auth/logoff';

  /// 取消注销用户
  static const String logoffCancel = '/service-user/v1/auth/logoff/cancel';

  /// 退出登录
  static const String logout = '/service-user/v1/auth/logout';

  /// 忘记密码
  static const String passwordForget = '/service-user/v1/auth/password/forget';

  /// 修改密码
  static const String passwordUpdate = '/service-user/v1/auth/password/update';

  /// 发送邮件
  static const String emailSend = '/service-user/v1/email/send';

  /// 验证邮箱
  static const String emailVerify = '/service-user/v1/email/verify';

  /// 上传文件
  static const String upload = '/service-user/v1/file/upload';

  /// 游客获取token
  static const String getToken = '/service-user/v1/auth/token';

  /// 刷新token
  static const String refreshToken = '/service-user/v1/auth/token/refresh';

  /// 城市分页
  static const String getCityLists = '/service-device/v1/city/pages';

  ///城市分页新接口
  static const String getCityList = '/service-device/v1/weather/location/search';

  /// 时区分页
  static const String getTimezoneList = '/service-device/v1/timezone/pages';

  /// 国家分页
  static const String getCountryList = '/service-device/v1/country/pages';

  /// 查询当前天气
  static const String currentWeather = '/service-device/v1/weather/currentWeather';

  ///未来48小时
  static const String forecastHourlyWeather = '/service-device/v1/weather/forecastHourly';

  ///未来7天
  static const String forecastDailyWeather = '/service-device/v1/weather/forecastDaily';

  static const String weatherCollect = '/service-device/v1/weather/weatherCollect';

  /// 查询设备的升级版本
  static const String checkDeviceUpgrade = '/service-device/v1/upgrade';

  /// 获取实时星历
  static const String realTime = '/service-user/v1/ephemeris/realTime';

  /// 获取离线星历
  static const String offLineTime = '/service-user/v1/ephemeris/offLineTime';

  /// 获取通知
  static const String getNotice = '/service-user/v2/notice/push';

  /// 签收通知
  static const String confirmNotice = '/service-user/v1/notice/confirm';

  /// 表盘市场
  static const String dialMarket = '/service-parts/v1/dial/classify/list';

  /// 表盘分页
  static const String dialList = '/service-parts/v1/dial/pages';

  /// 表盘上新
  static const String dialNew = '/service-parts/v1/dial/new';

  /// 所有表盘列表
  static const String allDialList = '/service-parts/v1/dial/listFirmware';

  /// 文章列表
  static const String articleList = '/service-user/v1/article/list';

  ///上报App信息
  /// static const String updateAppInfo = '/service-user/v1/appInfo';
  static const String updateAppInfo = '/service-user/v1/user/info/app';

  ///上报升级记录
  static const String updateReportedDeviceUpgrade =
      '/service-device/v1/device/upgrade/record/reportedDeviceUpgrade';

  /// 上报使用记录
  static const String useRecordReport = '/service-user/v1/report/device/use/record';

  /// 上报表盘下载记录
  static const String dialDownloadRecordReport = '/service-user/v1/report/dial/download/records';

  /// 上报睡眠记录
  static const String sleepRecordReport = '/service-user/v1/report/sleep/record';

  /// 上报运动记录
  static const String sportRecordReport = '/service-user/v1/report/sport/record';

  /// 上报访问次数
  static const String visitRecordReport = '/service-user/v1/report/visit';

  /// 反馈未读数量
  static const String getFeedbackCount = '/service-user/v1/feedback/unreadCount';

  ///绑定信息
  static const String upLoadBindData = '/service-device/v1/device/bind';

  ///解除绑定信息
  static const String upLoadUnBindData = '/service-device/v1/device/unbind';

  /// app检查更新
  static const String appUpgrade = '/service-user/v1/app/upgrade';

  /// APP 上传日志
  static const String appLogReporting = '/app_logs/_doc';

  /// 固件 上传日志
  static const String firmwareLogReporting = '/firmware_logs/_doc';

  /// app打开次数上报
  static const String appOpenTimesReport = '/service-user/v1/report/visit';

  /// 问题反馈添加日志
  static const String feedbackAddLog = '/service-user/v1/feedback/addLogUrl';

  ///新增上报运动记录接口地址/v1/report/sport/record
  static const String uploadSportRecord = '/v1/report/sport/record';

  ///日常活动数据
  static const String activity = '/service-health-data/v1/activity';

  ///压力数据
  static const String pressure = '/service-health-data/v1/pressure';

  ///噪音数据
  static const String noise = '/service-health-data/v1/noise';

  ///心率数据
  static const String heartRate = '/service-health-data/v1/heart-rate';

  ///睡眠数据
  static const String sleep = '/service-health-data/v1/sleep';

  ///血氧数据
  static const String spo = '/service-health-data/v1/spo';

  ///血氧数据
  static const String hrv = '/service-health-data/v1/heart-rate-variability';

  ///运动数据
  static const String sport = '/service-health-data/v1/sport';

  ///目标数据
  static const String goal = '/service-health-data/v1/goal';

  ///批量上传
  static const String batch = '/service-health-data/v1/batch';

  /// 所有奖章
  static const String allMedal = '/service-user/v1/medal/all';

  /// 奖章记录
  static const String recordMedal = '/service-user/v1/medal/record';

  /// 获取机头图片
  static const String modelColor = '/service-device/v1/model/color';

  ///第三方应用包名信息
  static const String thirdPartyNotice = '/service-user/v1/thirdPartyNotice/lookup';

  //!------------新增----------------
  //!------------删除个人数据接口-----
  /// 云端个人数据
  static const String cleanPersonDataFromCloud = '/service-user/v1/user/data/remove';

  /// alexa语言选择
  static const String alexaLanguageSelect = '/service-user/v1/alexa/list';

  /// 翻译文本
  static const String translateText = '/service-user/v1/translate/text';

  ///----------App更新提示------------
  static const String appUpgradeDetails = '/service-user/v1/app/upgrade';


  static String get baseURL =>
      CreekStorageUtils.getBool(SPUtilKey.releaseService) ?? false ? releaseBaseURL : baseTestURLs;
}
