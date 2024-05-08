package com.watchic.app.notification_listener.keeplive.config

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.core.app.NotificationCompat

class NotificationUtils(context: Context) : ContextWrapper(context) {

    private var manager: NotificationManager? = null
    private var id: String = context.packageName + "51"
    private var name: String = context.packageName
    /** 通知渠道*/
    private var channel: NotificationChannel? = null

    companion object {
        private var notificationUtils: NotificationUtils? = null

        /**
         * 创建一个通知
         * @param context Context
         * @param title String
         * @param content String
         * @param icon Int
         * @param intent Intent
         * @return Notification
         */
        fun createNotification(context: Context, title: String, content: String, icon: Int, intent: Intent,isActivity: Boolean): Notification {
            if (notificationUtils == null) notificationUtils = NotificationUtils(context)
            return if (Build.VERSION.SDK_INT >= 26) {
                notificationUtils!!.createNotificationChannel()
                notificationUtils!!.getChannelNotification(title, content, icon, intent,isActivity).build()
            } else {
                notificationUtils!!.getNotification25(title, content, icon, intent).build()
            }
        }
    }

    /**
     * 创建通知渠道8.0及以上
     */
    @RequiresApi(api = Build.VERSION_CODES.O)
    fun createNotificationChannel() {
        if (channel == null) {
            channel = NotificationChannel(id, name, NotificationManager.IMPORTANCE_HIGH)
            channel?.let {
                it.enableLights(false)
                it.enableVibration(false)
                it.vibrationPattern = longArrayOf(0)
                it.setSound(null, null)
            }
            getManager().createNotificationChannel(channel!!)
        }
    }

    /**
     * 获取NotificationManager
     * @return NotificationManager
     */
    private fun getManager(): NotificationManager {
        if (manager == null) {
            manager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        }
        return manager!!
    }

    /**
     * 获取渠道通知
     * @param title String
     * @param content String
     * @param icon Int
     * @param intent Intent
     * @return Notification.Builder
     */
    @RequiresApi(api = Build.VERSION_CODES.O)
    fun getChannelNotification(title: String, content: String, icon: Int, intent: Intent,isActivity: Boolean): Notification.Builder {
      //  val pendingIntent = PendingIntent.getBroadcast(baseContext, 0, intent, PendingIntent.FLAG_MUTABLE)

        var pendingIntents:PendingIntent
        if (Build.VERSION.SDK_INT >=Build.VERSION_CODES.S) {
            pendingIntents = if(isActivity){
                PendingIntent.getActivity(baseContext, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT or    PendingIntent.FLAG_IMMUTABLE)

            }else{
                PendingIntent.getBroadcast(baseContext, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT or    PendingIntent.FLAG_IMMUTABLE)

            }
        } else {
            pendingIntents = PendingIntent.getBroadcast(baseContext, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT)
        }

        return Notification.Builder(baseContext, id)
                .setContentTitle(title)
                .setContentText(content)
                .setSmallIcon(icon)
                .setAutoCancel(true)
                 .setShowWhen(true)
                .setPriority(Notification.PRIORITY_HIGH)
               .setCategory(NotificationCompat.CATEGORY_SERVICE)
                .setContentIntent(pendingIntents)
    }

    /**
     * 获取通知
     * @param title String
     * @param content String
     * @param icon Int
     * @param intent Intent
     * @return NotificationCompat.Builder
     */
    fun getNotification25(title: String, content: String, icon: Int, intent: Intent): NotificationCompat.Builder {
        val pendingIntent = PendingIntent.getBroadcast(baseContext, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT)
        return NotificationCompat.Builder(baseContext, id)
                .setContentTitle(title)
                .setContentText(content)
                .setSmallIcon(icon)
                .setAutoCancel(true)
                .setVibrate(longArrayOf(0))
                .setSound(null)
                .setLights(0, 0, 0)
                .setContentIntent(pendingIntent)
    }

}

