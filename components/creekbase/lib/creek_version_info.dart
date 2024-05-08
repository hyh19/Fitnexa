part of creek_base;

class CreekVersionInfo {
  String? version;
  String? buildNumber;
  String? appName;
  String? packageName;

  static Future<CreekVersionInfo> get versionInfo async {
    PackageInfo info = await PackageInfo.fromPlatform();
    CreekVersionInfo creekVersionInfo = CreekVersionInfo();
    creekVersionInfo.version = info.version;
    creekVersionInfo.buildNumber = info.buildNumber;
    creekVersionInfo.appName = info.appName;
    creekVersionInfo.packageName =  info.packageName;
    return creekVersionInfo;
  }
}
