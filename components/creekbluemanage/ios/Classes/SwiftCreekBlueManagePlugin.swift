import Flutter
import UIKit

public class SwiftCreekBlueManagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "creek_blue_manage", binaryMessenger: registrar.messenger())
    let instance = SwiftCreekBlueManagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(UIDevice.current.systemVersion)
  }
}
