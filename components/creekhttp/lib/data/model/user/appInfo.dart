/// appName : ""
/// appVersion : ""
/// phoneModel : ""
/// phoneSystem : ""
/// phoneSystemVersion : ""

class UpdateAppInfoModel {
  UpdateAppInfoModel({
    this.appName,
    this.appVersion,
    this.phoneModel,
    this.phoneBrand,
    this.phoneSystem,
    this.isLogin,
    this.privacyAgreementConsentTime,
    this.phoneSystemVersion,
  });

  UpdateAppInfoModel.fromJson(dynamic json) {
    appName = json['appName'];
    appVersion = json['appVersion'];
    phoneModel = json['phoneModel'];
    phoneSystem = json['phoneSystem'];
    phoneBrand = json['brand'];
    phoneSystemVersion = json['phoneSystemVersion'];
    privacyAgreementConsentTime = json['privacyAgreementConsentTime'];
  }
  String? phoneBrand;
  String? appName;
  String? appVersion;
  String? phoneModel;
  String? phoneSystem;
  String? phoneSystemVersion;
  String? privacyAgreementConsentTime;
  bool? isLogin;
  String? domainUrl;
  UpdateAppInfoModel copyWith({
    String? phoneBrand,
    String? appName,
    String? appVersion,
    String? phoneModel,
    String? phoneSystem,
    String? isLogin,
    String? phoneSystemVersion,
    String? privacyAgreementConsentTime,
  }) =>
      UpdateAppInfoModel(
        phoneBrand: phoneBrand ?? this.phoneBrand,
        appName: appName ?? this.appName,
        appVersion: appVersion ?? this.appVersion,
        phoneModel: phoneModel ?? this.phoneModel,
        phoneSystem: phoneSystem ?? this.phoneSystem,
        privacyAgreementConsentTime: privacyAgreementConsentTime ?? this.privacyAgreementConsentTime,
        phoneSystemVersion: phoneSystemVersion ?? this.phoneSystemVersion,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phoneBrand'] = phoneBrand;
    map['appName'] = appName;
    map['appVersion'] = appVersion;
    map['phoneModel'] = phoneModel;
    map['phoneSystem'] = phoneSystem;
    map['phoneSystemVersion'] = phoneSystemVersion;
    map['privacyAgreementConsentTime'] = privacyAgreementConsentTime;
    return map;
  }

  Map<String, dynamic> toLocalJson() {
    final map = <String, dynamic>{};
    map['phoneBrand'] = phoneBrand;
    map['appName'] = appName;
    map['appVersion'] = appVersion;
    map['phoneModel'] = phoneModel;
    map['phoneSystem'] = phoneSystem;
    map['phoneSystemVersion'] = phoneSystemVersion;
    map['isLogin'] = isLogin;
    map['privacyAgreementConsentTime'] = privacyAgreementConsentTime;
    return map;
  }

  @override
  String toString() {
    return 'UpdateAppInfoModel{appName: $appName,phoneBrand: $phoneBrand, appVersion: $appVersion, phoneModel: $phoneModel, phoneSystem: $phoneSystem, phoneSystemVersion: $phoneSystemVersion, privacyAgreementConsentTime: $privacyAgreementConsentTime, isLogin: $isLogin, domainUrl: $domainUrl}';
  }

/*@override
  String toString() {
    return 'UpdateAppInfoModel{appName: $appName, appVersion: $appVersion, phoneModel: $phoneModel, phoneSystem: $phoneSystem, phoneSystemVersion: $phoneSystemVersion, privacyAgreementConsentTime: $privacyAgreementConsentTime, isLogin: $isLogin}';
  }*/

}
