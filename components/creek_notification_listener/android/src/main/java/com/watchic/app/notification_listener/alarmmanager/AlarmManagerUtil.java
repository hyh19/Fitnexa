package com.watchic.app.notification_listener.alarmmanager;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.app.AlarmManagerCompat;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class AlarmManagerUtil {
    private static final String TAG = "AlarmManagerUtil";
    private static final String PERSISTENT_ALARMS_SET_KEY = "persistent_alarm_ids";
    protected static final String SHARED_PREFERENCES_KEY = "android_alarm_manager_plugin";
    private static final int JOB_ID = 1984; // Random job ID.
    private static final Object persistentAlarmsLock = new Object();
    /** Background Dart execution context. */
    private static FlutterBackgroundExecutor flutterBackgroundExecutor;
    public static void addPersistentAlarm(
            Context context,
            int requestCode,
            boolean alarmClock,
            boolean allowWhileIdle,
            boolean repeating,
            boolean exact,
            boolean wakeup,
            long startMillis,
            long intervalMillis,
            long callbackHandle,
            JSONObject params) {
        HashMap<String, Object> alarmSettings = new HashMap<>();
        alarmSettings.put("alarmClock", alarmClock);
        alarmSettings.put("allowWhileIdle", allowWhileIdle);
        alarmSettings.put("repeating", repeating);
        alarmSettings.put("exact", exact);
        alarmSettings.put("wakeup", wakeup);
        alarmSettings.put("startMillis", startMillis);
        alarmSettings.put("intervalMillis", intervalMillis);
        alarmSettings.put("callbackHandle", callbackHandle);
        alarmSettings.put("params", params);
        JSONObject obj = new JSONObject(alarmSettings);
        String key = getPersistentAlarmKey(requestCode);
        SharedPreferences prefs = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0);

        synchronized (persistentAlarmsLock) {
            Set<String> persistentAlarms =
                    new HashSet<>(prefs.getStringSet(PERSISTENT_ALARMS_SET_KEY, new HashSet<>()));
            if (persistentAlarms.isEmpty()) {
                MyRebootBroadcastReceiver.enableRescheduleOnReboot(context);
            }
            persistentAlarms.add(Integer.toString(requestCode));
            prefs
                    .edit()
                    .putString(key, obj.toString())
                    .putStringSet(PERSISTENT_ALARMS_SET_KEY, persistentAlarms)
                    .apply();
        }
    }

    public static String getPersistentAlarmKey(int requestCode) {
        return "android_alarm_manager/persistent_alarm_" + requestCode;
    }



    public static void clearPersistentAlarm(Context context, int requestCode) {
        SharedPreferences prefs = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0);
        synchronized (persistentAlarmsLock) {
            Set<String> persistentAlarms =
                    new HashSet<>(prefs.getStringSet(PERSISTENT_ALARMS_SET_KEY, new HashSet<>()));
            if (!persistentAlarms.contains(Integer.toString(requestCode))) {
                return;
            }
            persistentAlarms.remove(Integer.toString(requestCode));
            String key = getPersistentAlarmKey(requestCode);
            prefs.edit().remove(key).putStringSet(PERSISTENT_ALARMS_SET_KEY, persistentAlarms).apply();

            if (persistentAlarms.isEmpty()) {
                MyRebootBroadcastReceiver.disableRescheduleOnReboot(context);
            }
        }
    }

    public static void reschedulePersistentAlarms(Context context) {
        synchronized (persistentAlarmsLock) {
            SharedPreferences prefs = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0);
            Set<String> persistentAlarms = prefs.getStringSet(PERSISTENT_ALARMS_SET_KEY, null);
            // No alarms to reschedule.
            if (persistentAlarms == null) {
                return;
            }

            for (String persistentAlarm : persistentAlarms) {
                int requestCode = Integer.parseInt(persistentAlarm);
                String key = getPersistentAlarmKey(requestCode);
                String json = prefs.getString(key, null);
                if (json == null) {
                    Log.e(TAG, "Data for alarm request code " + requestCode + " is invalid.");
                    continue;
                }
                try {
                    JSONObject alarm = new JSONObject(json);
                    boolean alarmClock = alarm.getBoolean("alarmClock");
                    boolean allowWhileIdle = alarm.getBoolean("allowWhileIdle");
                    boolean repeating = alarm.getBoolean("repeating");
                    boolean exact = alarm.getBoolean("exact");
                    boolean wakeup = alarm.getBoolean("wakeup");
                    long startMillis = alarm.getLong("startMillis");
                    long intervalMillis = alarm.getLong("intervalMillis");
                    long callbackHandle = alarm.getLong("callbackHandle");
                    JSONObject params = alarm.getJSONObject("params");
                    scheduleAlarm(
                            context,
                            requestCode,
                            alarmClock,
                            allowWhileIdle,
                            repeating,
                            exact,
                            wakeup,
                            startMillis,
                            intervalMillis,
                            false,
                            callbackHandle,
                            params);
                } catch (JSONException e) {
                    Log.e(TAG, "Data for alarm request code " + requestCode + " is invalid: " + json);
                }
            }
        }
    }
    public static void scheduleAlarm(
            Context context,
            int requestCode,
            boolean alarmClock,
            boolean allowWhileIdle,
            boolean repeating,
            boolean exact,
            boolean wakeup,
            long startMillis,
            long intervalMillis,
            boolean rescheduleOnReboot,
            long callbackHandle,
            JSONObject params) {
        Log.w("lxk","scheduleAlarm==="+callbackHandle);
        if (rescheduleOnReboot) {
            addPersistentAlarm(
                    context,
                    requestCode,
                    alarmClock,
                    allowWhileIdle,
                    repeating,
                    exact,
                    wakeup,
                    startMillis,
                    intervalMillis,
                    callbackHandle,
                    params);
        }

        // Create an Intent for the alarm and set the desired Dart callback handle.
        Intent alarm = new Intent(context, MyAlarmBroadcastReceiver.class);
        alarm.putExtra("id", requestCode);
        alarm.putExtra("callbackHandle", callbackHandle);
        alarm.putExtra("params", params == null ? null : params.toString());


        PendingIntent pendingIntent =
                PendingIntent.getBroadcast(
                        context,
                        requestCode,
                        alarm,
                        (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ? PendingIntent.FLAG_IMMUTABLE : 0)
                                | PendingIntent.FLAG_UPDATE_CURRENT);

        // Use the appropriate clock.
        int clock = AlarmManager.RTC;
        if (wakeup) {
            clock = AlarmManager.RTC_WAKEUP;
        }

        // Schedule the alarm.
        AlarmManager manager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);

        if (alarmClock) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S && !manager.canScheduleExactAlarms()) {
                Log.e(TAG, "Can`t schedule exact alarm due to revoked SCHEDULE_EXACT_ALARM permission");
            } else {
                AlarmManagerCompat.setAlarmClock(manager, startMillis, pendingIntent, pendingIntent);
                Log.w("lxk","setAlarmClock===");
            }
            return;
        }

        if (exact) {
            if (repeating) {
                Log.w("lxk", "allowWhileIdle==setRepeating=");
                manager.setRepeating(clock, startMillis, intervalMillis, pendingIntent);
            } else {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S && !manager.canScheduleExactAlarms()) {
                    Log.e(TAG, "Can`t schedule exact alarm due to revoked SCHEDULE_EXACT_ALARM permission");
                } else {

                    if (allowWhileIdle) {
                        Log.w("lxk", "allowWhileIdle==setExactAndAllowWhileIdle=");
                        AlarmManagerCompat.setExactAndAllowWhileIdle(manager, clock, startMillis, pendingIntent);
                    } else {
                        Log.w("lxk", "allowWhileIdle==setExact=");
                        AlarmManagerCompat.setExact(manager, clock, startMillis, pendingIntent);
                    }
                }
            }
        } else {
            if (repeating) {
                Log.w("lxk", "allowWhileIdle==setInexactRepeating=");
                manager.setInexactRepeating(clock, startMillis, intervalMillis, pendingIntent);
            } else {
                if (allowWhileIdle) {
                    Log.w("lxk", "allowWhileIdle==setAndAllowWhileIdle=");
                    AlarmManagerCompat.setAndAllowWhileIdle(manager, clock, startMillis, pendingIntent);
                } else {
                    Log.w("lxk", "allowWhileIdle==set=");
                    manager.set(clock, startMillis, pendingIntent);
                }
            }
        }
    }

    /** Schedules a one-shot alarm to be executed once in the future. */
    public static void setOneShot(Context context, OneShotRequest request) {
        final boolean repeating = false;
        scheduleAlarm(
                context,
                request.requestCode,
                request.alarmClock,
                request.allowWhileIdle,
                repeating,
                request.exact,
                request.wakeup,
                request.startMillis,
                0,
                request.rescheduleOnReboot,
                request.callbackHandle,
                request.params);
    }

    /** Schedules a periodic alarm to be executed repeatedly in the future. */
    public static void setPeriodic(
            Context context, PeriodicRequest request) {
        Log.w("lxk","setPeriodic===");
        final boolean repeating = true;
        final boolean alarmClock = false;
        scheduleAlarm(
                context,
                request.requestCode,
                alarmClock,
                request.allowWhileIdle,
                repeating,
                request.exact,
                request.wakeup,
                request.startMillis,
                request.intervalMillis,
                request.rescheduleOnReboot,
                request.callbackHandle,
                request.params);
    }

    /** Cancels an alarm with ID {@code requestCode}. */
    public static void cancel(Context context, int requestCode) {
        // Clear the alarm if it was set to be rescheduled after reboots.
        clearPersistentAlarm(context, requestCode);

        // Cancel the alarm with the system alarm service.
        Intent alarm = new Intent(context, MyAlarmBroadcastReceiver.class);
        PendingIntent existingIntent =
                PendingIntent.getBroadcast(
                        context,
                        requestCode,
                        alarm,
                        (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ? PendingIntent.FLAG_IMMUTABLE : 0)
                                | PendingIntent.FLAG_NO_CREATE);
        if (existingIntent == null) {
            Log.i(TAG, "cancel: broadcast receiver not found");
            return;
        }
        AlarmManager manager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
        manager.cancel(existingIntent);
    }


    public static void startBackgroundIsolate(Context context  ) {
        if (flutterBackgroundExecutor != null) {
            Log.w(TAG, "Attempted to start a duplicate background isolate. Returning...");
            return;
        }
        flutterBackgroundExecutor = new FlutterBackgroundExecutor();
        flutterBackgroundExecutor.startBackgroundIsolate(context);

    }



    public static void onMYHandleWork(@NonNull Context context,@NonNull final Intent intent) {
        Log.i(TAG, "AlarmService onMYHandleWork.");
        if(flutterBackgroundExecutor ==null){
            startBackgroundIsolate(context);
        }
        flutterBackgroundExecutor.executeDartCallbackInBackgroundIsolate(intent);

    }

}
