package com.watchic.app.notification_listener


import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log


class RebootBroadcastReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        when (intent.action) {
            Intent.ACTION_REBOOT, Intent.ACTION_BOOT_COMPLETED -> {
                Log.i("NotificationListener", "Registering notification listener, after reboot!")
                NotificationListenerPlugin.registerAfterReboot(context)
            }
            else -> {
                Log.i("NotificationListener", intent.action.toString())
            }
        }
    }
}