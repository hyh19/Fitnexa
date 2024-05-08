package com.watchic.app.notification_listener

import android.app.Notification
import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.content.pm.PackageManager.NameNotFoundException
import android.graphics.Bitmap
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Icon
import android.os.Build
import android.os.Build.VERSION_CODES
import android.os.Bundle
import android.service.notification.StatusBarNotification
import android.util.Log
import androidx.annotation.RequiresApi
import com.watchic.app.notification_listener.util.NotificationUtils.getAppNameFromNotification
import com.watchic.app.notification_listener.util.NotificationUtils.getBitmapFromDrawable
import com.watchic.app.notification_listener.util.NotificationUtils.getQuickReplyAction


import com.watchic.app.notification_listener.util.Utils
import com.watchic.app.notification_listener.util.Utils.Companion.toBitmap
import com.watchic.app.notification_listener.models.Action
import java.io.ByteArrayOutputStream


class NotificationEvent(context: Context, sbn: StatusBarNotification,namePackage:String) {

    var mSbn = sbn
    var mNamePackage = namePackage

    val data: Map<String, Any?> = fromSbn(context, sbn,mNamePackage)

    val uid: String
        get() = data[NOTIFICATION_UNIQUE_ID] as String

    companion object {
        private const val NOTIFICATIONS_LARGE_ICON = "notifications_large_icon"
        private const val NOTIFICATIONS_ICON = "notifications_icon"
        private const val NOTIFICATION_NAME = "app_name"
        private const val NOTIFICATION_PACKAGE_NAME= "package_name"
        private const val NOTIFICATION_TIMESTAMP = "timestamp"
        private const val NOTIFICATION_ID = "id"
        private const val NOTIFICATION_UID = "uid"
        private const val NOTIFICATION_CHANNEL_ID = "channelId"
        private const val NOTIFICATION_ACTIONS = "actions"
        private const val NOTIFICATION_CAN_TAP = "canTap"
        private const val NOTIFICATION_KEY = "key"
        private const val NOTIFICATION_UNIQUE_ID = "_id"
        private const val NOTIFICATION_UNIQUE_FLAGS = "_flags"

        fun genKey(vararg items: Any?): String {
            return Utils.md5(items.joinToString(separator="-"){ "$it" }).slice(IntRange(0, 12))
        }

        // https://developer.android.com/guide/topics/ui/notifiers/notifications
        // extra more fields from docs
        fun fromSbn(context: Context, sbn: StatusBarNotification,namePackage:String): Map<String, Any?> {
            // val map = HashMap<String, Any?>()

            // Retrieve extra object from notification to extract payload.
            val notify = sbn.notification

            val map = turnExtraToMap(context, notify?.extras)
            var packageName:String=""
            // add 3 sbn fields
            map[NOTIFICATION_TIMESTAMP] = sbn.postTime
            if(namePackage.isNotEmpty()){
                map[NOTIFICATION_PACKAGE_NAME] =  namePackage
                packageName=namePackage
            }else{
                map[NOTIFICATION_PACKAGE_NAME] =  sbn.packageName
                packageName=sbn.packageName
            }
//            var appIcon = getAppIcon(packageName,context)
//            if(appIcon ==null){
//                appIcon=getNotificationIcon(context, sbn.notification)
//            }
          //  var largeIcon: ByteArray?  = getNotificationLargeIcon(context, sbn.notification)
          //  map[NOTIFICATIONS_ICON] = appIcon
          //  map[NOTIFICATIONS_LARGE_ICON] = largeIcon
            map[NOTIFICATION_ID] = sbn.id

            val appLabel = getAppNameFromNotification(context,packageName)
            map[NOTIFICATION_NAME] = appLabel
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                map[NOTIFICATION_UID] = sbn.uid
            }

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                map[NOTIFICATION_CHANNEL_ID] = notify.channelId
            }

            // generate the unique id
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT_WATCH) {
                map[NOTIFICATION_KEY] = sbn.key
                map[NOTIFICATION_UNIQUE_ID] = genKey(sbn.key)
            } else {
                map[NOTIFICATION_UNIQUE_ID] = genKey(
                    map[NOTIFICATION_PACKAGE_NAME],
                    map[NOTIFICATION_CHANNEL_ID],
                    map[NOTIFICATION_ID]
                )
            }
            map[ NOTIFICATION_UNIQUE_FLAGS]=notify.flags
            map[NOTIFICATION_CAN_TAP] = notify.contentIntent != null

            map[NOTIFICATION_ACTIONS] = getActions(context, notify, packageName)

            return map
        }

        private val EXTRA_KEYS_WHITE_LIST = arrayOf(
            Notification.EXTRA_TITLE,
            Notification.EXTRA_TEXT,
            Notification.EXTRA_SUB_TEXT,
            Notification.EXTRA_SUMMARY_TEXT,
            Notification.EXTRA_TEXT_LINES,
            Notification.EXTRA_BIG_TEXT,
            Notification.EXTRA_INFO_TEXT,
            Notification.EXTRA_SHOW_WHEN,
           // Notification.EXTRA_LARGE_ICON
            // Notification.EXTRA_LARGE_ICON_BIG
        )
        @RequiresApi(api = VERSION_CODES.M)
        private fun getNotificationLargeIcon(
            context: Context,
            notification: Notification
        ): ByteArray? {
            return try {

                val largeIcon = notification.getLargeIcon() ?: return null
                 if(context ==null){
                     return  null
                 }
                if(largeIcon ==null){
                     return  null
                 }
                val iconDrawable = largeIcon.loadDrawable(context)
                val iconBitmap = (iconDrawable as BitmapDrawable?)?.bitmap ?: return  null
                val outputStream = ByteArrayOutputStream()
                iconBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
                outputStream.toByteArray()
            } catch (e: Exception) {
                e.printStackTrace()
                Log.d("ERROR LARGE ICON", "getNotificationLargeIcon: " + e.message)
                null
            }
        }
        private fun getAppIcon(packageName: String?, context:Context): ByteArray? {
            return try {
                val manager: PackageManager = context.packageManager
                val icon = manager.getApplicationIcon(packageName!!)
                val stream = ByteArrayOutputStream()
                getBitmapFromDrawable(icon).compress(Bitmap.CompressFormat.PNG, 100, stream)
                stream.toByteArray()
            } catch (e: NameNotFoundException) {
                e.printStackTrace()
               return null
            }
        }
        @RequiresApi(api = VERSION_CODES.M)
        private fun getNotificationIcon(
            context: Context,
            notification: Notification
        ): ByteArray? {
            return try {

                val smallIcon = notification.smallIcon?: return null
                if(context ==null){
                    return  null
                }
                if(smallIcon ==null){
                    return  null
                }
                val iconDrawable = smallIcon.loadDrawable(context)
                val iconBitmap = (iconDrawable as BitmapDrawable?)?.bitmap ?: return  null
                val outputStream = ByteArrayOutputStream()
                iconBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)
                return  outputStream.toByteArray()
            } catch (e: Exception) {
                e.printStackTrace()
                Log.d("ERROR LARGE ICON", "getNotificationLargeIcon: " + e.message)
                return  null
            }
        }
        private fun getAppLabel(packageName: String, context:Context): String? {
            return try {
                val manager: PackageManager = context.packageManager
                var appInfo: ApplicationInfo? = null
                try {
                    appInfo = manager.getApplicationInfo(packageName, 0)
                } catch (e: NameNotFoundException) {
                    e.printStackTrace()
                }
               // val applicationInfo = manager.getApplicationInfo(packageName, 0)
                if(appInfo !=null){
                    val appName = manager.getApplicationLabel(appInfo)
                    return appName.toString()
                }
                return ""
               // return manager.getApplicationLabel(applicationInfo).toString()
            } catch (e: NameNotFoundException) {
                e.printStackTrace()
                return ""
            }
        }

        private fun turnExtraToMap(context: Context, extras: Bundle?): HashMap<String, Any?> {
            val map = HashMap<String, Any?>()
            if (extras == null) return map
            val ks: Set<String> = extras.keySet()
            val iterator = ks.iterator()
            while (iterator.hasNext()) {
                val key = iterator.next()
                if (!EXTRA_KEYS_WHITE_LIST.contains(key)) continue

                val bits = key.split(".")
                val nKey = bits[bits.size - 1]

                map[nKey] = marshalled(context, extras.get(key))
            }
            return map
        }

        private fun marshalled(context: Context, v: Any?): Any? {
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                when (v) {
                    is Icon -> {
                        convertIconToByteArray(context, v)
                    }
                    else -> internalMarshalled(context, v)
                }
            } else {
                internalMarshalled(context, v)
            }
        }

        private fun internalMarshalled(context: Context, v: Any?): Any? {
            return when (v) {
                is CharSequence -> v.toString()
                is Array<*> -> v.map { marshalled(context, it) }
                is Bitmap -> convertBitmapToByteArray(v)
                // TODO: turn other types which cause exception
                else -> v
            }
        }

        @RequiresApi(Build.VERSION_CODES.M)
        private fun convertIconToByteArray(context: Context, icon: Icon): ByteArray {
            return convertBitmapToByteArray(icon.loadDrawable(context)!!.toBitmap())
        }

        private fun convertBitmapToByteArray(bitmap: Bitmap): ByteArray {
            val stream = ByteArrayOutputStream()
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream)
            return stream.toByteArray()
        }

        private fun getActions(context: Context, n: Notification?,packageName:String ): List<*>? {
            if (n?.actions == null) return null
            var items: List<Map<String, Any>?> = mutableListOf()
            n.actions.forEachIndexed { idx, act ->
                val map = HashMap<String, Any>()
                map["id"] = idx
                map["title"] = act.title.toString()
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                    map["semantic"] = act.semanticAction
                }
                if(map["semantic"] ==null || map["semantic"]==0){
                    val action: Action? = getQuickReplyAction(n, packageName)
                    if(action !=null){
                        map["semantic"]=1
                    }
                }
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT_WATCH) {
                    var ins: List<Map<String, Any>?> = mutableListOf()
                    if (act.remoteInputs != null) {
                        act.remoteInputs.forEach {
                            val input = HashMap<String, Any>()
                            input["label"] = it.label.toString()
                            input["key"] = it.resultKey
                            // input["choices"] = it.choices
                            ins = ins + input
                        }
                    }
                    map["inputs"] = ins
                    if(map["semantic"] ==null || map["semantic"]==0){
                        if(ins.isNotEmpty()){
                            map["semantic"]=1
                        }
                    }
                    Log.d("=====>", "action extra semanticAction: ${ map["semantic"]}---packageName:$packageName")
                    // val iterator = act.extras.keySet().iterator()
                    // while (iterator.hasNext()) {
                    //     val key = iterator.next()
                    //     Log.d("=====>", "action extra key: $key, value: ${act.extras.get(key)}")
                    // }
                }
                items = items.plus(map)
            }
            return items
        }
    }

}