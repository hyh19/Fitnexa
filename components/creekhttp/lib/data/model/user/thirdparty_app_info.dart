

import 'package:isar/isar.dart';
part 'thirdparty_app_info.g.dart';

@collection
class ThirdPartyInfoModel{
 Id? id;

 @Index(unique: true, replace: true)
 String? appPackageName;

 String? appName;
 String? logo;
 String? logoPath;

 bool? uploadState;


 ThirdPartyInfoModel({this.appName, this.logo,this.appPackageName});

  factory ThirdPartyInfoModel.fromJson(Map<String, dynamic> json) {
  return ThirdPartyInfoModel(
   appName: json["appName"],
   logo: json["logo"],
   appPackageName: json["appPackageName"],
  );
 }

 Map<String, dynamic> toJson() => {
  "appName": appName,
  "logo": logo,
  "appPackageName": appPackageName,
  "uploadState": uploadState,
 };

}