// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:creekbase/creek_base.dart';
import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/core/creek_interceptor.dart';
import 'package:creekhttp/core/creek_log.dart';
import 'package:creekhttp/core/creek_net_error.dart';
import 'package:creekhttp/data/http/dao/base_dao.dart';
import 'package:creekhttp/data/http/error/error_code.dart';
import 'package:creekhttp/data/http/request/device/ThirdPartyAPPInfoList.dart';
import 'package:creekhttp/data/http/request/user/check_app_update.dart';
import 'package:creekhttp/data/http/request/user/confirm_notice.dart';
import 'package:creekhttp/data/http/request/user/email_send.dart';
import 'package:creekhttp/data/http/request/user/email_update.dart';
import 'package:creekhttp/data/http/request/user/email_verify.dart';
import 'package:creekhttp/data/http/request/user/feedback_log.dart';
import 'package:creekhttp/data/http/request/user/get_all_medal.dart';
import 'package:creekhttp/data/http/request/user/get_article.dart';
import 'package:creekhttp/data/http/request/user/get_notice.dart';
import 'package:creekhttp/data/http/request/user/get_record_medal.dart';
import 'package:creekhttp/data/http/request/user/get_token.dart';
import 'package:creekhttp/data/http/request/user/get_user_info.dart';
import 'package:creekhttp/data/http/request/user/login.dart';
import 'package:creekhttp/data/http/request/user/logoff.dart';
import 'package:creekhttp/data/http/request/user/logoff_cancel.dart';
import 'package:creekhttp/data/http/request/user/logout.dart';
import 'package:creekhttp/data/http/request/user/password_forget.dart';
import 'package:creekhttp/data/http/request/user/password_update.dart';
import 'package:creekhttp/data/http/request/user/post_record_medal.dart';
import 'package:creekhttp/data/http/request/user/put_user_info.dart';
import 'package:creekhttp/data/http/request/user/refresh_token.dart';
import 'package:creekhttp/data/http/request/user/register.dart';
import 'package:creekhttp/data/http/request/user/report/delete_person_data_request.dart';
import 'package:creekhttp/data/http/request/user/report/sleep_report_request.dart';
import 'package:creekhttp/data/http/request/user/report/sport_report_request.dart';
import 'package:creekhttp/data/http/request/user/report/use_report_request.dart';
import 'package:creekhttp/data/http/request/user/report/visit_report_request.dart';
import 'package:creekhttp/data/http/request/user/update_appinfo.dart';
import 'package:creekhttp/data/model/user/appInfo.dart';
import 'package:creekhttp/data/model/user/app_update.dart';
import 'package:creekhttp/data/model/user/article_list.dart';
import 'package:creekhttp/data/model/user/dial_download_report.dart';
import 'package:creekhttp/data/model/user/email_send.dart';
import 'package:creekhttp/data/model/user/email_update.dart';
import 'package:creekhttp/data/model/user/email_verify.dart';
import 'package:creekhttp/data/model/user/login.dart';
import 'package:creekhttp/data/model/user/normal.dart';
import 'package:creekhttp/data/model/user/password_forget.dart';
import 'package:creekhttp/data/model/user/password_update.dart';
import 'package:creekhttp/data/model/user/register.dart';
import 'package:creekhttp/data/model/user/sleep_record.dart';
import 'package:creekhttp/data/model/user/sport_record.dart';
import 'package:creekhttp/data/model/user/thirdparty_app_info_request.dart';
import 'package:creekhttp/data/model/user/thirdparty_app_info.dart';
import 'package:creekhttp/data/model/user/token.dart';
import 'package:creekhttp/data/model/user/use_record.dart';
import 'package:creekhttp/data/model/user/user_info.dart';
import 'package:dartx/dartx.dart';

import '../../../model/user/all_medal.dart';
import '../../../model/user/notice.dart';
import '../../../model/user/record_medal.dart';
import '../../../model/user/upgrade_app_details.dart';
import '../../../model/user/upgrade_app_details_request.dart';
import '../../request/user/get_feedback_count.dart';
import '../../request/user/get_upgrade_app_details.dart';
import '../../request/user/report/dial_download_report_request.dart';

/// 用户管理
class UserDao {
  UserDao._();

  /// 用户登录
  static Future<LoginResultModel> login(LoginRequestModel params) async {
    final request = LoginRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    final data = LoginResultModel.fromJson(result);
    await CreekStorageUtils.saveString(SPUtilKey.accessToken, data.token);
    await CreekStorageUtils.saveString(SPUtilKey.domainUrl, data.domain);
    await CreekStorageUtils.saveString(
        SPUtilKey.refreshToken, data.refreshToken);
    return data;
  }

  /// 用户注册
  static Future register(RegisterRequestModel params) async {
    final request = RegisterRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 保存用户信息
  static Future putUserInfo(UserInfoRequestModel params) async {
    final request = PutUserInfoRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 获取用户信息
  static Future<UserInfoResultModel?> getUserInfo() async {
    final request = GetUserInfoRequest();
    final result = await BaseDao.send(request);
    if (result == null) {
      return null;
    }
    final data = UserInfoResultModel.fromJson(result);
    return data;
  }

  /// 修改邮箱
  static Future emailUpdate(EmailUpdateRequestModel params) async {
    final request = EmailUpdateRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 注销用户
  static Future logoff(String password) async {
    final request = LogoffRequest();
    request.params = {'password': password};
    final result = await BaseDao.send(request);
    return result;
  }

  /// 取消注销用户
  static Future logoffCancel() async {
    final request = LogoffCancelRequest();
    final result = await BaseDao.send(request);
    return result;
  }

  /// 退出登录
  static Future logout() async {
    final request = LogoutRequest();
    final result = await BaseDao.send(request);
    return result;
  }

  /// 忘记密码
  static Future passwordForget(PasswordForgetRequestModel params) async {
    final request = PasswordForgetRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 修改密码
  static Future passwordUpdate(PasswordUpdateRequestModel params) async {
    final request = PasswordUpdateRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 发送邮件
  static Future emailSend(EmailSendRequestModel params) async {
    var creekVersionInfo = await CreekVersionInfo.versionInfo;
    params.appName = creekVersionInfo.appName ?? "";
    final request = EmailSendRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 验证邮件
  static Future emailVerify(EmailVerifyRequestModel params) async {
    final request = EmailVerifyRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 获取Token
  static Future<TokenResultModel> getToken(TokenRequestModel params) async {
    final request = GetTokenRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    final data = TokenResultModel.fromJson(result);
    final saveToken = CreekStorageUtils.getString(SPUtilKey.accessToken);
    if (saveToken != null && saveToken.isNotEmpty) {
      final iat = iatTime(saveToken);
      final newIat = iatTime(data.token);
      if (newIat > iat) {
        await CreekStorageUtils.saveString(SPUtilKey.accessToken, data.token);
        await CreekStorageUtils.saveString(
            SPUtilKey.refreshToken, data.refreshToken);
      }
    } else {
      await CreekStorageUtils.saveString(SPUtilKey.accessToken, data.token);
      await CreekStorageUtils.saveString(
          SPUtilKey.refreshToken, data.refreshToken);
    }
    await CreekStorageUtils.saveInt(SPUtilKey.tokenExp, tokenExp(data.token));
    await CreekStorageUtils.saveInt(
        SPUtilKey.refreshTokenExp, tokenExp(data.refreshToken));
    await CreekStorageUtils.saveString(SPUtilKey.domainUrl, data.domain);
    CreekHttpLog.printlocal("data.domain--${data.domain}");
    return data;
  }

  /// 刷新Token
  static Future<TokenResultModel> refreshToken(String refreshToken) async {
    String? millisecondsSinceEpoch =
        CreekStorageUtils.getString(SPUtilKey.refreshTokenLastTime);
    DateTime nowDateTime = DateTime.now();
    if (millisecondsSinceEpoch != null && millisecondsSinceEpoch.isNotEmpty) {
      DateTime lastTime = DateTime.fromMillisecondsSinceEpoch(
          int.parse(millisecondsSinceEpoch));
      var differenceTime = nowDateTime.difference(lastTime);
      CreekHttpLog.d(
          "refreshTokenLastTime:${lastTime.toString()}_nowDateTime:${nowDateTime.toString()}__differenceTime:${differenceTime.inSeconds}");

      ///如果是在5s内
      if (differenceTime.inSeconds < 5) {
        CreekHttpLog.d('refreshTokenLastTime_是在5s内,直接抛异常回去');
        CreekHttpLog.printlocal('refreshTokenLastTime_是在5s内,直接抛异常回去');
        throw CreekNetError(ErrorCode.tokenCustomFilterCode, "", null);
      }
    }
    CreekHttpLog.d('请求refreshToken');
    CreekHttpLog.printlocal('请求refreshToken');
    await CreekStorageUtils.saveString(SPUtilKey.refreshTokenLastTime,
        nowDateTime.millisecondsSinceEpoch.toString());

    final request = RefreshTokenRequest();
    request.params = {"refreshToken": refreshToken};
    final result = await BaseDao.send(request);
    CreekHttpLog.printlocal('请求refreshToken=result:$result');
    final data = TokenResultModel.fromJson(result);
    final saveToken = CreekStorageUtils.getString(SPUtilKey.accessToken);
    if (saveToken != null) {
      final iat = iatTime(saveToken);
      final newIat = iatTime(data.token);
      if (newIat > iat) {
        await CreekStorageUtils.saveString(SPUtilKey.accessToken, data.token);
        await CreekStorageUtils.saveString(
            SPUtilKey.refreshToken, data.refreshToken);
      }
    } else {
      await CreekStorageUtils.saveString(SPUtilKey.accessToken, data.token);
      await CreekStorageUtils.saveString(
          SPUtilKey.refreshToken, data.refreshToken);
    }
    await CreekStorageUtils.saveInt(SPUtilKey.tokenExp, tokenExp(data.token));
    await CreekStorageUtils.saveInt(
        SPUtilKey.refreshTokenExp, tokenExp(data.refreshToken));
    return data;
  }

  static bool _refreshTokenExpired() {
    try {
      final expTime = DateTime.fromMillisecondsSinceEpoch(
          CreekStorageUtils.getInt(SPUtilKey.refreshTokenExp) ?? 0);
      final now = DateTime.now() + 10.minutes;
      return now.isAfter(expTime);
    } catch (e) {
      return true;
    }
  }

  /// 获取通知
  static Future<List<NoticeResultModel>> getNotice(
      {required NormalRequestModel params,
      required String userId,
      required String? updateTime}) async {
    final request = GetNoticeRequest();
    request.params = params;
    if (updateTime != null && updateTime.isNotEmpty) {
      if (request.params is NormalRequestModel) {
        (request.params as NormalRequestModel).updateTime = updateTime;
      }
    }
    final result = await BaseDao.send(request) as List;
    // final result = await BaseDao.send(request) as List;
    final data = result
        .map((e) => NoticeResultModel.fromJson(e["data"], e["type"], userId))
        .toList();
    return data;
  }

  ///文章列表
  static Future<List<ArticleModel>> getArticleList(dynamic params) async {
    final request = ArticleListRequest();
    request.params = params;
    final result = await BaseDao.send(request) as List;
    final data = result.map((e) => ArticleModel.fromJson(e)).toList();
    return data;
  }

  /// 签收通知
  static Future confirmNotice(List<int> noticeIdList) async {
    final request = ConfirmNoticeRequest();
    request.params = noticeIdList;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 上传app信息
  static Future updateAppInfo(UpdateAppInfoModel updateAppInfoModel) async {
    final request = UpdateAppInfoRequest();
    request.params = updateAppInfoModel;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 获取反馈未读数量
  static Future<int> getFeedbackCount() async {
    final request = GetFeedbackCountRequest();
    final result = await BaseDao.send(request);
    return result;
  }

  /// 检查app更新
  static Future<AppUpdateModel?> checkAppUpdate(
      NormalRequestModel params) async {
    final request = CheckAppUpdate();
    request.params = params;
    final result = await BaseDao.send(request);
    if (result == null) {
      return null;
    }
    final data = AppUpdateModel.fromJson(result);
    return data;
  }

  /// 问题反馈添加日志
  static Future feedbackAddLog(String id, String logUrl) async {
    final request = FeedbackLogRequest();
    request.params = {'id': id, 'logUrl': logUrl};
    final result = await BaseDao.send(request);
    return result;
  }

  /// 获取所有奖章
  static Future<List<AllMedalModel>> getAllMedals() async {
    final request = GetAllMedalRequest();
    final result = await BaseDao.send(request) as List;
    final data = result.map((e) => AllMedalModel.fromJson(e)).toList();
    return data;
  }

  /// 获取奖章记录
  static Future<List<RecordMedalModel>> getRecordMedals() async {
    final request = GetRecordMedalRequest();
    final result = await BaseDao.send(request) as List;
    final data = result.map((e) => RecordMedalModel.fromJson(e)).toList();
    return data;
  }

  /// 上报奖章记录
  static Future postRecordMedals(List<RecordMedalModel> recordMedals) async {
    final request = PostRecordMedalRequest();
    request.params = jsonEncode(recordMedals);
    final result = await BaseDao.send(request);
    return result;
  }

  /// 上报设备使用记录
  static Future postUseRecord(UseRecordModel useRecordModel) async {
    final request = UseRecordRequest();
    request.params = jsonEncode(useRecordModel);
    final result = await BaseDao.send(request);
    return result;
  }

  /// 上报表盘下载记录
  static Future postDialDownloadRecord(
      DialDownloadRecordModel dialDownloadRecordModel) async {
    final request = DialDownloadRecordRequest();
    request.params = jsonEncode(dialDownloadRecordModel);
    final result = await BaseDao.send(request);
    return result;
  }

  /// 上报睡眠记录
  static Future postSleepRecord(SleepRecordModel sleepRecordModel) async {
    final request = SleepRecordRequest();
    request.params = jsonEncode(sleepRecordModel);
    final result = await BaseDao.send(request);
    return result;
  }

  /// 上报运动记录
  static Future postSportRecord(SportRecordModel sportRecordModel) async {
    final request = SportRecordRequest();
    request.params = jsonEncode(sportRecordModel);
    final result = await BaseDao.send(request);
    return result;
  }

  /// 上报访问次数
  static Future postVisitRecord() async {
    final request = VisitRecordRequest();
    request.params = '';
    final result = await BaseDao.send(request);
    return result;
  }

  /// 添加第三方接口
  static Future getThirdPartyNoticeList(
      ThirdPartyNoticeRequestModel thirdPartyNoticeRequestModel) async {
    final request = ThirdPartyAPPInfoListRequest();
    request.params = thirdPartyNoticeRequestModel;
    final result = await BaseDao.send(request) as List;
    final data = result.map((e) => ThirdPartyInfoModel.fromJson(e)).toList();
    return data;
  }

  //! ---------------新增请求 清除个人云端数据--------------------
  /// 清除个人云端数据
  static Future deletePersonDataFromCloudFn(String? password) async {
    final request = DeletePersonDataRequest();
    // 请求的参数 password
    request.params = {'password': password};
    print('----------------$request-----------------');
    final result = await BaseDao.send(request);
    print('----------------$result------------------');
    return result;
  }

  /// 清除个人云端数据
  static Future deletePersonDataFromCloudFns() async {
    final request = DeletePersonDataRequest();
    print('----------------$request-----------------');
    final result = await BaseDao.send(request);
    print('----------------$result------------------');
    return result;
  }

  /// -------------新增请求 获得升级app升级内容详情------------------

  /// -------------新增请求 获得升级app升级内容详情------------------
  static Future<UpgradeAppDetails?> getAppUpgradeList(
      UpgradeAppDetailsRequestModel upgradeAppDetailsRequestModel) async {
    final request = GetUpgradeAppDetails();
    request.params = upgradeAppDetailsRequestModel;
    print('-----------request-----$request-----------------');
    final result = await BaseDao.send(request) ;
    if (result == null) {
      return null;
    }
    final data =  UpgradeAppDetails.fromJson(result);
    print('-----------result-----$result------------------');
    print('-----------data-----$data------------------');
    return data;
  }
}
