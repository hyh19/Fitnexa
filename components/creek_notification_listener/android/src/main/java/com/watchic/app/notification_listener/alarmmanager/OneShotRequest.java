package com.watchic.app.notification_listener.alarmmanager;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class OneShotRequest {
    public static   OneShotRequest fromJson(JSONArray json) throws JSONException {
        int requestCode = json.getInt(0);
        boolean alarmClock = json.getBoolean(1);
        boolean allowWhileIdle = json.getBoolean(2);
        boolean exact = json.getBoolean(3);
        boolean wakeup = json.getBoolean(4);
        long startMillis = json.getLong(5);
        boolean rescheduleOnReboot = json.getBoolean(6);
        long callbackHandle = json.getLong(7);
        JSONObject params = json.getJSONObject(8);

        return new OneShotRequest(
                requestCode,
                alarmClock,
                allowWhileIdle,
                exact,
                wakeup,
                startMillis,
                rescheduleOnReboot,
                callbackHandle,
                params);
    }

    public  final int requestCode;
    public  final boolean alarmClock;
    public  final boolean allowWhileIdle;
    public  final boolean exact;
    public  final boolean wakeup;
    public  final long startMillis;
    public  final boolean rescheduleOnReboot;
    public  final long callbackHandle;
    public  final JSONObject params;

    OneShotRequest(
            int requestCode,
            boolean alarmClock,
            boolean allowWhileIdle,
            boolean exact,
            boolean wakeup,
            long startMillis,
            boolean rescheduleOnReboot,
            long callbackHandle,
            JSONObject params) {
        this.requestCode = requestCode;
        this.alarmClock = alarmClock;
        this.allowWhileIdle = allowWhileIdle;
        this.exact = exact;
        this.wakeup = wakeup;
        this.startMillis = startMillis;
        this.rescheduleOnReboot = rescheduleOnReboot;
        this.callbackHandle = callbackHandle;
        this.params = params;
    }
}
