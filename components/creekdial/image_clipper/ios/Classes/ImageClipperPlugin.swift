import Flutter
import UIKit

public class ImageClipper {
    public static func clipImage(path: String, cornerRadius: CGFloat) -> String? {
        let image = UIImage(contentsOfFile: path)

        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        let renderer = UIGraphicsImageRenderer(size: image?.size ?? CGSize.zero,format: format)
        let clippedImage = renderer.image { context in
            UIBezierPath(roundedRect: CGRect(origin: .zero, size: image?.size ?? CGSize.zero), cornerRadius: cornerRadius).addClip()
            image?.draw(in: CGRect(origin: .zero, size: image?.size ?? CGSize.zero))
        }

        guard let data = clippedImage.pngData() else {
            return nil
        }

        do {
            try data.write(to: URL(fileURLWithPath: path))
            return path
        } catch {
            return nil
        }
    }

    public static func scaleImage(data: FlutterStandardTypedData, targetWidth: Int,targetHeight:Int) -> FlutterStandardTypedData? {
        guard let image = UIImage(data: data.data) else {
            return nil
        }

        let targetSize = CGSize(width: targetWidth, height: targetHeight)

        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        let renderer = UIGraphicsImageRenderer(size: targetSize,format: format)
        let scaledImage = renderer.image { context in
                    image.draw(in: CGRect(origin: .zero, size: targetSize))
                }

        guard let outputData = scaledImage.pngData() else {
            return nil
        }

        return FlutterStandardTypedData(bytes: outputData)
    }
}

public class ImageClipperPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "image_clipper", binaryMessenger: registrar.messenger())
        let instance = ImageClipperPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "clipImage" {
            guard let args = call.arguments as? [String: Any],
                  let path = args["path"] as? String,
                  let cornerRadius = args["cornerRadius"] as? CGFloat else {
                result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments", details: nil))
                return
            }

            if let outputPath = ImageClipper.clipImage(path: path, cornerRadius: cornerRadius) {
                result(outputPath)
            } else {
                result(FlutterError(code: "CLIP_ERROR", message: "Failed to clip image", details: nil))
            }
        } else if call.method == "scaleImage" {
            guard let args = call.arguments as? [String: Any],
                  let data = args["data"] as? FlutterStandardTypedData,
                  let targetWidth = args["targetWidth"] as? Int,
                  let targetHeight = args["targetHeight"] as? Int
                   else {
                result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments", details: nil))
                return
            }

            if let outputData = ImageClipper.scaleImage(data: data, targetWidth: targetWidth,targetHeight:targetHeight) {
                result(outputData)
            } else {
                result(FlutterError(code: "SCALE_ERROR", message: "Failed to scale image", details: nil))
            }
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
}
