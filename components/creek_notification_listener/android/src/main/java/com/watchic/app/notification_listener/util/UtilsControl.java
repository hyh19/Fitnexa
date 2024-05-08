package com.watchic.app.notification_listener.util;

import android.content.Context;
import android.content.Intent;
import android.media.RemoteController;
import android.provider.Settings;
import android.util.Log;

import androidx.core.app.NotificationManagerCompat;
import androidx.work.BackoffPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
//import androidx.work.OneTimeWorkRequest;
//import androidx.work.WorkManager;

import java.lang.reflect.Field;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterJNI;

public class UtilsControl {
    /**
     * 是否开启通知权限
     * @param context
     * @return
     */
    public static boolean isNotificationListenerEnabled(Context context) {
        Set<String> packageNames = NotificationManagerCompat.getEnabledListenerPackages(context);
        if (packageNames.contains(context.getPackageName())) {
            return true;
        }
        return false;
    }

    /**
     * 开启通知权限
     */
    public static void openNotificationListenSettings(Context context) {
        try {
            Intent intent = new Intent(Settings.ACTION_NOTIFICATION_LISTENER_SETTINGS);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setRemoteController(RemoteController remoteController) {
        this.remoteController = remoteController;
    }

    public static RemoteController remoteController;

    public static  long  getCurrentMs(){
       if (remoteController != null) {
         return   remoteController.getEstimatedMediaPosition();
       }
       return  0;
    }

//    public void startKeepWork() {
//        WorkManager.getInstance().cancelAllWorkByTag(TAG_KEEP_WORK);
//        Log.d("lxk", "keep-> dowork startKeepWork");
//        OneTimeWorkRequest oneTimeWorkRequest = new OneTimeWorkRequest.Builder(KeepLiveWork.class)
//                .setBackoffCriteria(BackoffPolicy.LINEAR, 5, TimeUnit.SECONDS)
//                .addTag(TAG_KEEP_WORK)
//                .build();
//        WorkManager.getInstance().enqueueUniquePeriodicWork(oneTimeWorkRequest);
//
//    }

   public static FlutterJNI getDeclaredField(FlutterEngine flutterEngine){
        //获取FlutterJNI用于引擎通信相关的
        FlutterJNI flutterJNI = null;
        try {
            Field field = FlutterEngine.class.getDeclaredField("flutterJNI");
            field.setAccessible(true);
            flutterJNI = (FlutterJNI)field.get(flutterEngine);
        } catch (Throwable e) {
            try {
                for(Field field:FlutterEngine.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object o = field.get(flutterEngine);
                    if(o instanceof FlutterJNI) {
                        flutterJNI = (FlutterJNI)o;
                    }
                }
//                if(flutterJNI == null) {
//                    throw new RuntimeException("FlutterJNI not found");
//                }
            }catch (Throwable it){
                Log.w("lxk","getDeclaredField_flutterJNI_Throwable:"+e);
            }
        }
        return  flutterJNI;
    }
}
