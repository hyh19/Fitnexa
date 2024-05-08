// 环境配置
class EnvConfig {
  final String appDomain;
  EnvConfig({
    required this.appDomain,
  });
}

// 获取的配置信息
class Env {
  // 获取到当前环境
  static const appEnv = String.fromEnvironment(EnvName.envKey);

  // 开发环境
  static final EnvConfig _debugConfig = EnvConfig(
    appDomain: 'http://cloud-test.creekwearable.com:9501',
  );
  // 发布环境
  static final EnvConfig _releaseConfig = EnvConfig(
    appDomain: 'http://cloud-test.creekwearable.com:9501',
  );
  // 测试环境
  static final EnvConfig _testConfig = EnvConfig(
    appDomain: 'http://cloud-test.creekwearable.com:9501',
  );

  static EnvConfig get envConfig => _getEnvConfig();

// 根据不同环境返回对应的环境配置
  static EnvConfig _getEnvConfig() {
    switch (appEnv) {
      case EnvName.debug:
        return _debugConfig;
      case EnvName.release:
        return _releaseConfig;
      case EnvName.test:
        return _testConfig;
      default:
        return _debugConfig;
    }
  }
}

// 声明的环境
abstract class EnvName {
  // 环境key
  static const String envKey = "APP_ENV";
  // 环境value
  static const String debug = "debug";
  static const String release = "release";
  static const String test = "test";
}