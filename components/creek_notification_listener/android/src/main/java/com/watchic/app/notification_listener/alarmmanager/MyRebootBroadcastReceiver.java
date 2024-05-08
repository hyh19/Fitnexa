// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package com.watchic.app.notification_listener.alarmmanager;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;

import com.watchic.app.notification_listener.RebootBroadcastReceiver;



public class MyRebootBroadcastReceiver extends BroadcastReceiver {

  @Override
  public void onReceive(Context context, Intent intent) {
    if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
      Log.i("AlarmService", "Rescheduling after boot!");
      AlarmManagerUtil.reschedulePersistentAlarms(context);
    }
  }

  public static void enableRescheduleOnReboot(Context context) {
    scheduleOnReboot(context, PackageManager.COMPONENT_ENABLED_STATE_ENABLED);
  }

  public static void disableRescheduleOnReboot(Context context) {
    scheduleOnReboot(context, PackageManager.COMPONENT_ENABLED_STATE_DISABLED);
  }

  private static void scheduleOnReboot(Context context, int state) {
    ComponentName receiver = new ComponentName(context, RebootBroadcastReceiver.class);
    PackageManager pm = context.getPackageManager();
    pm.setComponentEnabledSetting(receiver, state, PackageManager.DONT_KILL_APP);
  }
}
