//package com.watchic.app.notification_listener;
//
//import android.content.Context;
//import android.util.Log;
//
//import androidx.annotation.NonNull;
//import androidx.work.Worker;
//import androidx.work.WorkerParameters;
//
//public class KeepLiveWork extends Worker {
//    private static final String TAG = "KeepLiveWork";
//
//    public KeepLiveWork(@NonNull Context context, @NonNull WorkerParameters workerParams) {
//        super(context, workerParams);
//    }
//
//    @NonNull
//    @Override
//    public Result doWork() {
//        Log.d(TAG, "keep-> doWork: startKeepService");
//        //启动job服务
//       // startJobService();
//        return Result.success();
//    }
//}
//
