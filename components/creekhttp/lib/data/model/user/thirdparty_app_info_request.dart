class ThirdPartyNoticeRequestModel{
 List<String>? appPackageNameList;
 String? macId;
 int? langId;

 ThirdPartyNoticeRequestModel({this.appPackageNameList, this.macId, this.langId});

 Map<String, dynamic> toJson() => {
  "appPackageNameList": appPackageNameList,
  "macId": macId,
  "langId": langId,
 };


}