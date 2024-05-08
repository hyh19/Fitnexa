/*
  *数据存储
  * bean 2021.12.22
 */

part of creek_tool;

class CreekSharedPref {

  ///保存
  static Future<bool> save(dynamic value, String key) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (value is String) {
        prefs.setString(key, value);
      } else if (value is int) {
        prefs.setInt(key, value);
      } else if (value is bool) {
        prefs.setBool(key, value);
      } else if (value is double) {
        prefs.setDouble(key, value);
      } else if (value is List<String>) {
        prefs.setStringList(key, value);
      } else {
        return false;
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  ///获取
  static Future<dynamic> get(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);

  }

  static Future<bool> clean(String key) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove(key);
      return true;
    } catch(e) {
      return false;
    }

  }

}
