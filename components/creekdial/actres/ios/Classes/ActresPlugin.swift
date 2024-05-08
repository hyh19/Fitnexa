import Flutter
import UIKit
import ActResSdk

public class ActresPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "acts_res", binaryMessenger: registrar.messenger())
    let instance = ActresPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "encodeImage":
        if let arguments = call.arguments as? [String:Any],
            let imagePath = arguments["imagePath"] as? String,
           let imageType = arguments["imageType"] as? Int  {
            let outputFilePath = URL(fileURLWithPath: imagePath).deletingPathExtension().path
            let outputPath = URL(fileURLWithPath: imagePath).deletingLastPathComponent().path
            var info = [String: Any]()
            info["OutputPath"] = outputPath
            info["PicPath"] = imagePath
            info["JPEGMinWidth"] = 160
            info["JPEGMinHeight"] = 160
            info["JPEGMinSplitWidth"] = 466
            info["JPEGMinSplitHeight"] = 466
            info["JPEGQuality"] = 20
            info["IsRawJPEG"] = 1
            info["PicFormat"] = 6
            info["IsCompress"] = 1
            info["IsBestQuarlity"] = 1
            info["TitleWidth"] = 32
            info["TitleHeight"] = 32
            let code = ActWearablePackaging.addSinglePicture(info)
             if(code == 1) {
                 result("\(outputFilePath).lz4")
               }else {
                   result(nil)
               }
        }

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

extension String {
     func removeSuffix(_ suffix: String)-> String {
         var newStr = self
        if self.hasSuffix(suffix) {
            let newLength = self.count - suffix.count
            newStr = String(self.prefix(newLength))
        }
        return newStr
    }
}
