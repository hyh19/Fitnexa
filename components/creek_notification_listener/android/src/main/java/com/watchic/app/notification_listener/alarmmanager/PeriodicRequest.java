package com.watchic.app.notification_listener.alarmmanager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PeriodicRequest {
    public  static PeriodicRequest fromJson(JSONArray json) throws JSONException {
        int requestCode = json.getInt(0);
        boolean allowWhileIdle = json.getBoolean(1);
        boolean exact = json.getBoolean(2);
        boolean wakeup = json.getBoolean(3);
        long startMillis = json.getLong(4);
        int intervalMillis = json.getInt(5);
        boolean rescheduleOnReboot = json.getBoolean(6);
        long callbackHandle = json.getLong(7);
        JSONObject params = json.getJSONObject(8);
        return new PeriodicRequest(
                requestCode,
                allowWhileIdle,
                exact,
                wakeup,
                startMillis,
                intervalMillis,
                rescheduleOnReboot,
                callbackHandle,
                params);
    }

    public final int requestCode;
    public  final boolean allowWhileIdle;
    public  final boolean exact;
    public   final boolean wakeup;
    public  final long startMillis;
    public  final int intervalMillis;
    public  final boolean rescheduleOnReboot;
    public  final long callbackHandle;
    public  final JSONObject params;

   public PeriodicRequest(
            int requestCode,
            boolean allowWhileIdle,
            boolean exact,
            boolean wakeup,
            long startMillis,
            int intervalMillis,
            boolean rescheduleOnReboot,
            long callbackHandle,
            JSONObject params) {
        this.requestCode = requestCode;
        this.allowWhileIdle = allowWhileIdle;
        this.exact = exact;
        this.wakeup = wakeup;
        this.startMillis = startMillis;
        this.intervalMillis = intervalMillis;
        this.rescheduleOnReboot = rescheduleOnReboot;
        this.callbackHandle = callbackHandle;
        this.params = params;
    }
}
