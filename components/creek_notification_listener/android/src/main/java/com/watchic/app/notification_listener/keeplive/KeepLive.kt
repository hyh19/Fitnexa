package com.watchic.app.notification_listener.keeplive

import android.app.ActivityManager
import android.app.Application
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import com.watchic.app.notification_listener.NotificationsHandlerService
import com.watchic.app.notification_listener.keeplive.config.ForegroundNotification
import com.watchic.app.notification_listener.keeplive.config.KeepLiveService
import com.watchic.app.notification_listener.keeplive.service.JobHandlerService


object KeepLive {

    /** 运行模式 */
    enum class RunMode {
        /** 省电模式：省电一些，但保活效果会差一点*/
        ENERGY,
        /** 流氓模式：相对耗电，但可造就不死之身*/
        ROGUE
    }

    /** 前台通知*/
    lateinit var foregroundNotification: ForegroundNotification
    /** 保活的服务*/
    lateinit var keepLiveService: KeepLiveService
    /** 运行模式*/
    private lateinit var runMode: RunMode

    fun startWork(application: Application, runMode: RunMode, foregroundNotification: ForegroundNotification, keepLiveService: KeepLiveService) {
        if (!isMain(application)) return
        KeepLive.foregroundNotification = foregroundNotification
        KeepLive.keepLiveService = keepLiveService
        KeepLive.runMode = runMode
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            //启动定时器，在定时器中启动本地服务和守护进程
            startService21(application)
        } else {
            startService(application)
        }
    }

    /**
     * 启动服务
     * @param application Application
     */
    private fun startService(application: Application) {
        //启动本地服务
        val localIntent = Intent(application, NotificationsHandlerService::class.java)

        application.startService(localIntent)

    }

    /**
     * 21及以上启动服务
     * @param application Application
     */
    private fun startService21(application: Application) {
        val intent = Intent(application, JobHandlerService::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Log.e("KeepLive","startForegroundService()")
            application.startForegroundService(intent)
        } else {
            application.startService(intent)
        }
    }

    /**
     * 应用是否在运行
     * @param app Application
     * @return Boolean
     */
    private fun isMain(app: Application): Boolean {
        val pid = android.os.Process.myPid()
        var processName = ""
        val mActivityManager = app.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        for (appProcess in mActivityManager.runningAppProcesses) {
            if (appProcess.pid == pid) {
                processName = appProcess.processName
                break
            }
        }
        return processName == app.packageName
    }

}

