package com.actions.actres


import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** ActsResPlugin */
class ActresPlugin : FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    private lateinit var resBuilder: ResBuilder

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "acts_res")
        channel.setMethodCallHandler(this)
        resBuilder = ResBuilder()
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
            "encodeImage" -> {
                val imagePath = call.argument<String>("imagePath")
                val imageType = call.argument<Int>("imageType")
                val outputPath = imagePath?.removeSuffix(".png")?.removeSuffix(".bmp")?.removeSuffix(".jpg")
                val array = intArrayOf(160, 160, 466, 466, 20, 1, 6, 1, 1, 32, 32)
//                if (imageType != null) {
//                    array[6] = imageType
//                }
                val code = resBuilder.addSinglePicture(outputPath, imagePath, array)
                return if(code == 1) {
                    result.success("$outputPath.lz4")
                }else {
                    result.success(null);
                }
            }

            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
