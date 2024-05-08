package com.watchic.app.notification_listener.util;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;

import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.app.RemoteInput;



import java.util.List;

import com.watchic.app.notification_listener.models.Action;


public final class NotificationUtils {

    private static final String[] REPLY_KEYWORDS = {"reply", "android.intent.extra.text"};
    private static final CharSequence INPUT_KEYWORD = "input";

    public static Bitmap getBitmapFromDrawable(Drawable drawable) {
        final Bitmap bmp = Bitmap.createBitmap(
                drawable.getIntrinsicWidth(),
                drawable.getIntrinsicHeight(),
                Bitmap.Config.ARGB_8888);

        final Canvas canvas = new Canvas(bmp);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);

        return bmp;
    }

    public static boolean isPermissionGranted(Context context) {
        String packageName = context.getPackageName();
        String flat = Settings.Secure.getString(context.getContentResolver(),
                "enabled_notification_listeners");
        if (!TextUtils.isEmpty(flat)) {
            String[] names = flat.split(":");
            for (String name : names) {
                ComponentName componentName = ComponentName.unflattenFromString(name);
                boolean nameMatch = TextUtils.equals(packageName, componentName.getPackageName());
                if (nameMatch) {
                    return true;
                }
            }
        }
        return false;
    }

    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    public static Action getQuickReplyAction(Notification n, String packageName) {
        NotificationCompat.Action action = null;
        if (Build.VERSION.SDK_INT >= 24)
            action = getQuickReplyAction(n);
        if (action == null)
            action = getWearReplyAction(n);
        if (action == null)
            return null;
        return new Action(action, packageName, true);
    }

    private static NotificationCompat.Action getQuickReplyAction(Notification n) {
        for (int i = 0; i < NotificationCompat.getActionCount(n); i++) {
            NotificationCompat.Action action = NotificationCompat.getAction(n, i);
            if (action.getRemoteInputs() != null) {
                for (int x = 0; x < action.getRemoteInputs().length; x++) {
                    RemoteInput remoteInput = action.getRemoteInputs()[x];
                    if (isKnownReplyKey(remoteInput.getResultKey()))
                        return action;
                }
            }
        }
        return null;
    }

    private static NotificationCompat.Action getWearReplyAction(Notification n) {
        NotificationCompat.WearableExtender wearableExtender = new NotificationCompat.WearableExtender(n);
        for (NotificationCompat.Action action : wearableExtender.getActions()) {
            if (action.getRemoteInputs() != null) {
                for (int x = 0; x < action.getRemoteInputs().length; x++) {
                    RemoteInput remoteInput = action.getRemoteInputs()[x];
                    if (isKnownReplyKey(remoteInput.getResultKey()))
                        return action;
                    else if (remoteInput.getResultKey().toLowerCase().contains(INPUT_KEYWORD))
                        return action;
                }
            }
        }
        return null;
    }

    private static boolean isKnownReplyKey(String resultKey) {
        if (TextUtils.isEmpty(resultKey))
            return false;

        resultKey = resultKey.toLowerCase();
        for (String keyword : REPLY_KEYWORDS)
            if (resultKey.contains(keyword))
                return true;

        return false;
    }
    static  public void getAllApplicationInfo(Context context, String packageName) {
        PackageManager packageManager = context.getPackageManager();
        List<ApplicationInfo> installedApps = packageManager.getInstalledApplications(PackageManager.GET_META_DATA);

        for (ApplicationInfo appInfo : installedApps) {
            String appName = packageManager.getApplicationLabel(appInfo).toString();
            String packageNames = appInfo.packageName;

            // 在这里可以处理每个已安装应用的信息，例如应用名称和包名
            Log.d("Installed App", "应用名称: " + appName + ", 包名: " + packageNames);
        }
    }
    static  public String getAppNameFromNotification(Context context, String packageName) {

        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo appInfo = null;

        try {
            appInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }

        if (appInfo != null) {
            CharSequence appName = packageManager.getApplicationLabel(appInfo);
            return appName.toString();
        } else {
            return "";
        }
    }

}
