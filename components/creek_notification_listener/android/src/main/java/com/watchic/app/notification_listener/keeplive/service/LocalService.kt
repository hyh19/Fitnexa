package com.watchic.app.notification_listener.keeplive.service

import android.app.Service
import android.content.*
import android.media.MediaPlayer
import android.os.*
import android.util.Log
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import com.watchic.app.notification_listener.GuardAidl
import com.watchic.app.notification_listener.keeplive.KeepLive
import com.watchic.app.notification_listener.R
import com.watchic.app.notification_listener.keeplive.config.NotificationUtils
import com.watchic.app.notification_listener.keeplive.receiver.NotificationClickReceiver

/** 本地服务*/
class LocalService : Service() {
    private  val CHANNEL_ID = "LocalService_listener_channel"
    private var  TAG ="lxk-LocalService"
    private  var mBinder: MyBinder? =null
    private  var mediaPlayer: MediaPlayer? =null
    override fun onCreate() {
        super.onCreate()
        mBinder = MyBinder()
    }

    override fun onBind(intent: Intent): IBinder? {
        return mBinder
    }
    /** 播放音乐*/
    private fun playMusic() {
        mediaPlayer = MediaPlayer.create(this, R.raw.novioce)
        //声音设置为0
        mediaPlayer?.setVolume(0f, 0f)
        mediaPlayer?.isLooping = true//循环播放
        mediaPlayer?.let {
            if ( mediaPlayer !=null && !mediaPlayer!!.isPlaying) mediaPlayer?.start()
        }

    }

    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        try {
            //播放无声音乐
            //  playMusic()
            //启用前台服务，提升优先级
            startForegroundService()
            //绑定守护进程
            bindGuardService()
            //隐藏服务通知
            //  hideServiceNotification()

            KeepLive.keepLiveService.onWorking()
        } catch (e: Exception) {
        }
        return START_REDELIVER_INTENT
    }

    /** 启动前台服务*/
    private fun startForegroundService() {
        val intent = Intent(applicationContext, NotificationClickReceiver::class.java)
        intent.action = NotificationClickReceiver.CLICK_NOTIFICATION
        val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
        var title="${getApplicationName()} Running"
        val notification = NotificationUtils.createNotification(
            this,
            title,
            "",
            imageId,
            intent,false)
//        val channel = NotificationChannel(CHANNEL_ID, "Listener", NotificationManager.IMPORTANCE_HIGH)
//        (getSystemService(NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(channel)
//        val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
//        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
//            .setContentTitle(KeepLive.foregroundNotification.title)
//            .setContentText( KeepLive.foregroundNotification.description)
//            .setShowWhen(true)
//            .setSubText(KeepLive.foregroundNotification.iconRes.toString())
//            .setSmallIcon(imageId)
//            .setPriority(NotificationCompat.PRIORITY_HIGH)
//            .setCategory(NotificationCompat.CATEGORY_SERVICE)
//            .build()
        startForeground(13691, notification)
        Log.e(TAG,"启动前台服务 显示通知，开启前台服务()")
    }
    fun getApplicationName(): String {
        val packageName = packageName
        val packageManager: PackageManager = applicationContext.packageManager
        val applicationInfo = packageManager.getApplicationInfo(packageName, 0)
        return packageManager.getApplicationLabel(applicationInfo).toString()
    }
    /** 绑定守护进程*/
    private fun bindGuardService() {
        val intent = Intent(this, RemoteService::class.java)
        bindService(intent, connection, Context.BIND_ABOVE_CLIENT)
    }
    private inner class MyBinder : GuardAidl.Stub(), IBinder {
        @Throws(RemoteException::class)
        override fun wakeUp(title: String, discription: String, iconRes: Int) {
        }


    }

    private val connection = object : ServiceConnection {

        override fun onServiceDisconnected(name: ComponentName) {
            val remoteService = Intent(this@LocalService, RemoteService::class.java)
            this@LocalService.startService(remoteService)
            this@LocalService.bindService(remoteService, this, Context.BIND_ABOVE_CLIENT)
        }

        override fun onServiceConnected(name: ComponentName, service: IBinder) {
            try {
                val guardAidl = GuardAidl.Stub.asInterface(service)
                val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
                var title="${getApplicationName()} Running"
                guardAidl.wakeUp(
                    title,
                    "",
                    imageId)
            } catch (e: RemoteException) {
                e.printStackTrace()
            }
        }
    }
}