package com.watchic.app.notification_listener.keeplive.service

import android.app.Service
import android.content.Intent
import android.os.Handler
import android.os.IBinder
import android.util.Log
import com.watchic.app.notification_listener.keeplive.config.NotificationUtils
import com.watchic.app.notification_listener.keeplive.receiver.NotificationClickReceiver

/** 隐藏前台服务通知*/
class HideForegroundService : Service() {

    private var handler: Handler = Handler()
    private var  TAG ="lxk-HideForegroundService"
    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        startForeground()
        handler.postDelayed({
            stopForeground(true)
            stopSelf()
        }, 2000)
        return START_NOT_STICKY
    }


    /** 显示通知，开启前台服务*/
    private fun startForeground() {
        Log.e(TAG,"显示通知，开启前台服务()")
        val intent = Intent(applicationContext, NotificationClickReceiver::class.java)
        intent.action = NotificationClickReceiver.CLICK_NOTIFICATION
        val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
        val notification = NotificationUtils.createNotification(
                this,
               " KeepLive.foregroundNotification.title",
               " KeepLive.foregroundNotification.description",
            imageId,
                intent,false)
        startForeground(13691, notification)
    }

    override fun onBind(intent: Intent): IBinder? = null

}