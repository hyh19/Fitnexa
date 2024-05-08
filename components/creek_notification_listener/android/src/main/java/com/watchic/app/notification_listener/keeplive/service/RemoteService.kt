package com.watchic.app.notification_listener.keeplive.service

import android.app.ActivityManager
import android.app.Service
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.os.Build
import android.os.IBinder
import android.os.RemoteException
import android.util.Log
import com.watchic.app.notification_listener.GuardAidl
import com.watchic.app.notification_listener.LogUtilHandler
import com.watchic.app.notification_listener.NotificationListenerPlugin
import com.watchic.app.notification_listener.NotificationsHandlerService
import com.watchic.app.notification_listener.keeplive.receiver.NotificationClickReceiver
import com.watchic.app.notification_listener.util.Utils

/** 远程服务*/
class RemoteService : Service() {

    private  var mBinder: MyBinder? =null
    private var  TAG ="lxk-RemoteService"
    override fun onCreate() {
        super.onCreate()
        mBinder = MyBinder()
    }

//    override fun onBind(intent: Intent): IBinder? = mBinder
    override fun onBind(intent: Intent): IBinder? {
        return mBinder
    }
    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        try {
            val remoteService   = Intent(this, NotificationsHandlerService::class.java)
            if (!isServiceRunning(applicationContext, NotificationsHandlerService::class.java)){
                startService(remoteService)
            }
            this.bindService(remoteService, connection, Context.BIND_ABOVE_CLIENT)
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return START_REDELIVER_INTENT
    }

    override fun onDestroy() {
        super.onDestroy()
        unbindService(connection)
    }

    private inner class MyBinder : GuardAidl.Stub() {
        @Throws(RemoteException::class)
        override fun wakeUp(title: String, discription: String, iconRes: Int) {
            if (Build.VERSION.SDK_INT > 25) {
                Log.w(TAG,"RemoteException__wakeUp")
                val intent = Intent(applicationContext, NotificationClickReceiver::class.java)
                intent.action = NotificationClickReceiver.CLICK_NOTIFICATION
              //  val notification = NotificationUtils.createNotification(this@RemoteService, title, discription, iconRes, intent,false)
              //  this@RemoteService.startForeground(13691, notification)
            }
        }
    }

    private val connection = object : ServiceConnection {
        override fun onServiceDisconnected(name: ComponentName) {
            val remoteService = Intent(this@RemoteService, NotificationsHandlerService::class.java)
           // startService(remoteService)
            internalStartService(this@RemoteService,null,true)
            bindService(remoteService, this, Context.BIND_ABOVE_CLIENT)
        }

        private fun internalStartService(context: Context, cfg: Utils.PromoteServiceConfig?, isReboot:Boolean): Boolean {

            if (!NotificationsHandlerService.permissionGiven(context)) {
                Log.e(NotificationListenerPlugin.TAG, "can't get permission to start service.")
                return false
            }

            Log.d(NotificationListenerPlugin.TAG, "start service with args: $cfg")

            val cfg = cfg ?: Utils.PromoteServiceConfig.load(context)
            LogUtilHandler.getInstance(context)?.sendMessage("internalStartService---${cfg}")
            // and try to toggle the service to trigger rebind
            with(NotificationsHandlerService) {

                /* Start the notification service once permission has been given. */
                val intent = Intent(context, NotificationsHandlerService::class.java)

                intent.putExtra("isReboot",isReboot)
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && cfg.foreground==true) {
                    Log.i(NotificationListenerPlugin.TAG, "start service foreground")
                    try {
                        context.startForegroundService(intent)
                    }catch (e:Exception){
                        context.startService(intent)
                    }

                } else {
                    Log.i(NotificationListenerPlugin.TAG, "start service normal")
                    context.startService(intent)
                }

                // and try to toggle the service to trigger rebind
                disableServiceSettings(context)
                enableServiceSettings(context)

            }

            return true
        }

        override fun onServiceConnected(name: ComponentName, service: IBinder) {}
    }
    /**
     * 服务是否正在运行
     * @param ctx Context
     * @param className String
     * @return Boolean
     */
    fun isServiceRunning(context: Context, serviceClass: Class<*>): Boolean {
        return null != getRunningService(context, serviceClass)
    }

    private fun getRunningService(context: Context, serviceClass: Class<*>): ActivityManager.RunningServiceInfo? {
        val manager = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager?
        for (service in manager!!.getRunningServices(Int.MAX_VALUE)) {
            if (serviceClass.name == service.service.className) {
                Log.d(TAG, "getRunningService---${serviceClass.name}: ${service.service.className}");
                return service
            }
        }

        return null
    }

}
