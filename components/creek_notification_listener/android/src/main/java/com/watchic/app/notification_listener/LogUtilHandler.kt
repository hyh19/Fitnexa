package com.watchic.app.notification_listener

import android.annotation.SuppressLint
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import androidx.core.content.pm.PackageInfoCompat
import java.io.File
import java.io.RandomAccessFile
import java.text.SimpleDateFormat
import java.util.*


class LogUtilHandler private constructor(context: Context) {

    // 上下文对象
    private val mContext = context

    // 用于存放参数信息
    private val info = LinkedHashMap<String, String>()

    // 用于格式化日期
    private val mDateFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault())

    // 单例模式
    companion object {
        private var instance: LogUtilHandler? = null
        fun getInstance(context: Context): LogUtilHandler? {
            if (instance == null) {
                synchronized(LogUtilHandler::class) {
                    instance = LogUtilHandler(context)
                }
            }
            return instance
        }
    }





    @SuppressLint("NewApi")
    fun setMessage(currentStacktrace: String, context: Context){

    }

    fun sendMessage(currentStacktrace: String){
        try {
            val dir = File(mContext.dataDir, "app_flutter/creek/Android_Log/")
            if (!dir.exists()) {
                dir.mkdirs()
            }
            val dateFormat = SimpleDateFormat("yyyy-MM-dd")
            val time: String = dateFormat.format(Date())
            val filename = "log-$time.log"
            val reportFile = File(dir, filename)
            //如果为追加则在原来的基础上继续写文件
            val raf = RandomAccessFile(reportFile, "rw")
            raf.seek(reportFile.length())
            val times: String =  mDateFormat.format(Date())
            raf.write("$times:".toByteArray())
            raf.write(currentStacktrace.toByteArray())
            raf.write("\n".toByteArray())
            raf.close();
        } catch (e: java.lang.Exception) {
            Log.e("ExceptionHandler", e.message!!)
        }

    }
    ///todo 保存消息日志--目前先打印日志到文件
    @SuppressLint("NewApi")
    fun setMessages(currentStacktrace: String, context: Context){
        try {
            val dir = File(context.dataDir, "app_flutter/Android_Log")
            if (!dir.exists()) {
                dir.mkdirs()
            }
            val dateFormat = SimpleDateFormat("yyyy-MM-dd")
            val time: String = dateFormat.format(Date())
            val filename = "log-$time.log"
            val reportFile = File(dir, filename)
            //如果为追加则在原来的基础上继续写文件
            val raf = RandomAccessFile(reportFile, "rw")
            raf.seek(reportFile.length())
            raf.write(currentStacktrace.toByteArray())
            raf.write("\n".toByteArray())
            raf.close();
            // val dateFormat = SimpleDateFormat("yyyy-MM-dd-HH-mm-ss")
            // val timestamp = System.currentTimeMillis()
            //val filename = "crash-$time-$timestamp.txt"
//            val fileWriter = FileWriter(reportFile)
//            fileWriter.append(currentStacktrace)
//            fileWriter.flush()
//            fileWriter.close()
        } catch (e: java.lang.Exception) {
            Log.e("ExceptionHandler", e.message!!)
        }

    }


    /**
     * 收集参数信息
     * @param context
     */
    private fun putInfoToMap(context: Context) {
        info["设备型号"] = Build.MODEL
        info["设备品牌"] = Build.BOARD
        info["硬件名称"] = Build.HARDWARE
        info["硬件制造商"] = Build.MANUFACTURER
        info["系统版本"] = Build.VERSION.RELEASE
        info["系统版本号"] = "${Build.VERSION.SDK_INT}"
        val pm = context.packageManager
        val pi = pm.getPackageInfo(context.packageName, PackageManager.GET_ACTIVITIES)
        if (pi != null) {
            info["应用版本"] = pi.versionName
            info["应用版本号"] = "${PackageInfoCompat.getLongVersionCode(pi)}"
        }
    }

    /**
     * 获取日志头信息
     * @return StringBuffer
     */
    private  fun getLogHeader(): StringBuffer {
        val sb = StringBuffer()
        sb.append(">>>>时间: ${mDateFormat.format(Date())}\n")
        putInfoToMap(mContext)
        info.entries.forEach {
            sb.append("${it.key}: ${it.value}\n")
        }
        return sb
    }

}