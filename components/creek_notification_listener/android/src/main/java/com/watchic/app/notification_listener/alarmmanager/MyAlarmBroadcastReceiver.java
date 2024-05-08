package com.watchic.app.notification_listener.alarmmanager;

import static android.os.Looper.getMainLooper;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
public class MyAlarmBroadcastReceiver extends BroadcastReceiver {

  @Override
  public void onReceive(Context context, Intent intent) {
    Log.w("lxk","AlarmBroadcastReceiver===");
    new Handler(getMainLooper()).post(() -> AlarmManagerUtil.onMYHandleWork(context,intent));
  }
}
