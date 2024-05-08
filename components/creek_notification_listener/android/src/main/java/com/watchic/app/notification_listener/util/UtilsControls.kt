package com.watchic.app.notification_listener.util

import android.content.Context
import android.content.Intent
import android.media.RemoteController
import android.provider.Settings
import android.util.Log
import android.view.KeyEvent
import androidx.core.app.NotificationManagerCompat


object UtilsControls {

    /**
     * 是否开启通知权限
     * @param context
     * @return
     */
    fun isNotificationListenerEnabled(context: Context): Boolean {
        val packageNames = NotificationManagerCompat.getEnabledListenerPackages(context)
        return if (packageNames.contains(context.packageName)) {
            true
        } else false
    }

    /**
     * 开启通知权限
     */
    fun openNotificationListenSettings(context: Context) {
        try {
            val intent = Intent(Settings.ACTION_NOTIFICATION_LISTENER_SETTINGS)
            context.startActivity(intent)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    @JvmName("setRemoteController")
    fun setRemoteController(remoteController: RemoteController?) {
        UtilsControls.remoteController = remoteController
    }

    private var remoteController: RemoteController? = null

    fun getCurrentMs(): Long {
        return if (remoteController != null) {
            remoteController!!.estimatedMediaPosition
        } else 0
    }

     fun previousSong() {
        Log.e("lxk", "previousSong")
        if (UtilsControl.remoteController != null) {
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_UP,
                    KeyEvent.KEYCODE_MEDIA_PREVIOUS
                )
            )
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_DOWN,
                    KeyEvent.KEYCODE_MEDIA_PREVIOUS
                )
            )
            Log.e("lxk", "down==$down----up=$up")
        }else{
            remoteController?.apply {
                val down: Boolean = this.sendMediaKeyEvent(
                    KeyEvent(
                        KeyEvent.ACTION_UP,
                        KeyEvent.KEYCODE_MEDIA_PREVIOUS
                    )
                )
                val up: Boolean = this.sendMediaKeyEvent(
                    KeyEvent(
                        KeyEvent.ACTION_DOWN,
                        KeyEvent.KEYCODE_MEDIA_PREVIOUS
                    )
                )
            }
            Log.e("lxk", "remoteController = null")
        }
    }

     fun nextSong() {
        Log.e("lxk", "nextSong")
        if (UtilsControl.remoteController != null) {
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_UP,
                    KeyEvent.KEYCODE_MEDIA_NEXT
                )
            )
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_DOWN,
                    KeyEvent.KEYCODE_MEDIA_NEXT
                )
            )


            Log.e("lxk", "down==$down----up=$up")
        }else{
            remoteController?.apply{
                val down: Boolean = this.sendMediaKeyEvent(
                    KeyEvent(
                        KeyEvent.ACTION_UP,
                        KeyEvent.KEYCODE_MEDIA_NEXT
                    )
                )
                val up: Boolean = this.sendMediaKeyEvent(
                    KeyEvent(
                        KeyEvent.ACTION_DOWN,
                        KeyEvent.KEYCODE_MEDIA_NEXT
                    )
                )
            }
            Log.e("lxk", "remoteController = null")
        }
    }

     fun pauseMusic() {
        Log.e("lxk", "pauseMusic")
        if (UtilsControl.remoteController != null) {
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_PAUSE))
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PAUSE)
            )
            Log.e("lxk", "down==$down----up=$up")
        }else{
            remoteController?.apply {
                val down: Boolean = this.sendMediaKeyEvent(KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_PAUSE))
                val up: Boolean = this.sendMediaKeyEvent(
                    KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PAUSE)
                )
            }
            Log.e("lxk", "remoteController = null")

        }
    }

     fun startPlayMusic() {
        Log.e("lxk", "startPlayMusic")
        if (UtilsControl.remoteController != null) {
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_UP,
                    KeyEvent.KEYCODE_MEDIA_PLAY
                )
            )
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_DOWN,
                    KeyEvent.KEYCODE_MEDIA_PLAY
                )
            )
            Log.e("lxk", "down==$down----up=$up")

        }else{
            remoteController?.apply {
                val down: Boolean = this.sendMediaKeyEvent(
                    KeyEvent(
                        KeyEvent.ACTION_UP,
                        KeyEvent.KEYCODE_MEDIA_PLAY
                    )
                )
                val up: Boolean =this.sendMediaKeyEvent(
                    KeyEvent(
                        KeyEvent.ACTION_DOWN,
                        KeyEvent.KEYCODE_MEDIA_PLAY
                    )
                )
                Log.e("lxk", "remoteController__down:$down--up:$up")
            }


        }
    }

}