import 'package:creektool/creek_tool.dart' as tool;
import 'package:logger/logger.dart';

/// 日志
class CreekHttpLog {
  CreekHttpLog._();

  static final _debugLogger = Logger(
      printer: PrefixPrinter(PrettyPrinter(
          stackTraceBeginIndex: 0,
          methodCount: 0,
          colors: true,
          printTime: true,
          printEmojis: false)));

  static final _errorLogger = Logger(
      printer: PrefixPrinter(PrettyPrinter(
          stackTraceBeginIndex: 5,
          methodCount: 0,
          colors: true,
          printTime: true,
          printEmojis: false)));

  static void d(dynamic message) {
    _debugLogger.d(message);
    tool.CreekLog.writeNetworkLog(message);
  }

  static void i(dynamic message) {
    _debugLogger.i(message);
    tool.CreekLog.writeNetworkLog(message);
  }

  static void w(dynamic message) {
    _errorLogger.w(message);
    tool.CreekLog.writeNetworkLog(message);
  }


  static void e(dynamic message) {
    _errorLogger.e(message);
    tool.CreekLog.writeNetworkLog(message);
  }

  static void wtf(dynamic message) {
    _errorLogger.wtf(message);
    tool.CreekLog.writeNetworkLog(message);
  }
  static void printlocal(dynamic message) {
    tool.CreekLog.info(message);
  }
}
