//
// part of creek_blue;
// class CreekLog{
//
//    ///日志
//    static info(String t){
//       FLog.info(text: t);
//    }
//
//    ///获取最后一个小时日志
//    static Future<List<Log>> getLastHourLogsByFilter() async {
//       return await FLog.getAllLogsByFilter(filterType: FilterType.LAST_HOUR);
//    }
//
//    ///获取最后一个小时日志
//    static Future<List<Log>> get24hourLogsByFilter() async {
//       return await FLog.getAllLogsByFilter(filterType: FilterType.LAST_24_HOURS);
//    }
//
//    ///获取一周日志
//    static Future<List<Log>> getAllLogsByFilter() async {
//       return await FLog.getAllLogsByFilter(filterType: FilterType.WEEK);
//    }
//
//
//
//    ///清除日志
//    static  clearLogs() async {
//       return await FLog.clearLogs();
//    }
//
//
// }