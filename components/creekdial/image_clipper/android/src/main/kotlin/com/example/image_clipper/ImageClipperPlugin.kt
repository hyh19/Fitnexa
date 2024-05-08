package com.example.image_clipper

import android.graphics.*
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.BinaryMessenger
import android.graphics.Path.Direction.*
import java.io.ByteArrayOutputStream
import java.io.FileOutputStream
import java.io.IOException

class ImageClipperPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        val messenger: BinaryMessenger = binding.binaryMessenger
        channel = MethodChannel(messenger, "image_clipper")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "clipImage" -> {
                val path = call.argument<String>("path")
                val cornerRadius = call.argument<Double>("cornerRadius")?.toFloat()
                if (path != null && cornerRadius != null) {
                    val outputPath = clipImage(path, cornerRadius)
                    if (outputPath != null) {
                        result.success(outputPath)
                    } else {
                        result.error("CLIP_ERROR", "Failed to clip image", null)
                    }
                } else {
                    result.error("INVALID_ARGUMENTS", "Invalid arguments", null)
                }
            }

            "scaleImage" -> {
                val data = call.argument<ByteArray>("data")
                val targetWidth = call.argument<Int>("targetWidth")
                val targetHeight = call.argument<Int>("targetHeight")
                if (data != null && targetWidth != null && targetHeight != null) {
                    val outputData = scaleImage(data, targetWidth, targetHeight)
                    if (outputData != null) {
                        result.success(outputData)
                    } else {
                        result.error("SCALE_ERROR", "Failed to scale image", null)
                    }
                } else {
                    result.error("INVALID_ARGUMENTS", "Invalid arguments", null)
                }
            }

            else -> {
                result.notImplemented()
            }
        }
    }

    private fun clipImage(path: String, cornerRadius: Float): String? {
        val bitmap = BitmapFactory.decodeFile(path)
        val outputBitmap = Bitmap.createBitmap(bitmap.width, bitmap.height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(outputBitmap)
        val p = Path()
        val rect = RectF(0f, 0f, bitmap.width.toFloat(), bitmap.height.toFloat())
        p.addRoundRect(rect, cornerRadius, cornerRadius, CW)
        canvas.clipPath(p)
        val paint = Paint().apply {
            isAntiAlias = true
        }
        canvas.drawBitmap(bitmap, 0f, 0f, paint)

        val outputStream = ByteArrayOutputStream()
        outputBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
        try {
            outputStream.use {
                it.writeTo(FileOutputStream(path))
                return path
            }
        } catch (e: IOException) {
            e.printStackTrace()
            return null
        }
    }

    private fun scaleImage(data: ByteArray, targetWidth: Int, targetHeight: Int): ByteArray? {
        val bitmap = BitmapFactory.decodeByteArray(data, 0, data.size)

        // 创建目标大小的空白Bitmap
        val scaledBitmap = Bitmap.createBitmap(targetWidth, targetHeight, Bitmap.Config.ARGB_8888)

        // 创建画布
        val canvas = Canvas(scaledBitmap)

        // 创建画笔并设置抗锯齿
        val paint = Paint()
        paint.isAntiAlias = true

        // 绘制缩放后的图片到目标Bitmap上
        canvas.drawBitmap(bitmap, null, RectF(0f, 0f, targetWidth.toFloat(), targetHeight.toFloat()), paint)

        // 将目标Bitmap转换为字节数组
        val outputStream = ByteArrayOutputStream()
        scaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
        return outputStream.toByteArray()
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    companion object {
        @JvmStatic
        fun registerWith(registrar: PluginRegistry.Registrar) {
            val plugin = ImageClipperPlugin()
            val channel = MethodChannel(registrar.messenger(), "image_clipper")
            channel.setMethodCallHandler(plugin)
        }
    }
}
