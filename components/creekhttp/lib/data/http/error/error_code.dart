class ErrorCode {
  ErrorCode._();

  /// 请求语法错误或提供的参数无效
  static const int failed = 400;
  /// 未授权，请登录
  static const int unauthorized = 401;
  /// 请求不受支持
  static const int notSupportedRequest = 402;
  /// 未经授权,您无权访问
  static const int permissionDenied = 403;
  /// 服务器未找到匹配给定 URI 的路由
  static const int urlNotFound = 404;
  /// 无数据
  static const int noData = 405;
  /// 非法操作
  static const int illegalOperation = 406;
  /// 服务器异常
  static const int unknownError = 500;
  /// Token无效，请登录
  static const int tokenInvalid = 502;
  /// Token已过期
  static const int tokenExpired = 503;
  /// 账号被踢
  static const int accountKicked = 509;
  /// 操作频繁，请稍后再试
  static const int userOperationFrequent = 504;
  /// 用户请求参数错误
  static const int paramError = 517;
  /// 业务处理失败
  static const int businessError = 518;
  ///自定义过滤码
  static const int tokenCustomFilterCode = 198023;
  static const int tokenCustomRequestFilterCode = 1980234;

  ///自定义连接超时
  static const int connectionTimeoutCode = 1980231;
  ///自定义接收超时
  static const int receiveTimeout = 1980232;

}
