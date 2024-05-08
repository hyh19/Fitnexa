// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package com.watchic.app.notification_listener.alarmmanager;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;

import com.watchic.app.notification_listener.NotificationListenerPlugin;
import com.watchic.app.notification_listener.util.UtilsControl;

import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.embedding.engine.dart.DartExecutor.DartCallback;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.PluginRegistrantCallback;
import io.flutter.view.FlutterCallbackInformation;
import java.util.concurrent.atomic.AtomicBoolean;
import static com.google.android.gms.common.util.CollectionUtils.listOf;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/**
 * An background execution abstraction which handles initializing a background isolate running a
 * callback dispatcher, used to invoke Dart callbacks while backgrounded.
 */
public class FlutterBackgroundExecutor implements MethodCallHandler {
  private static final String TAG = "lxk_FlutterBackgroundExecutor";
  private static final String CALLBACK_HANDLE_KEY = "callback_handle";
  private static PluginRegistrantCallback pluginRegistrantCallback;

  /**
   * The {@link MethodChannel} that connects the Android side of this plugin with the background
   * Dart isolate that was created by this plugin.
   */
  public MethodChannel backgroundChannel;

  private FlutterEngine backgroundFlutterEngine;

  private final AtomicBoolean isCallbackDispatcherReady = new AtomicBoolean(false);


  public static void setPluginRegistrant(PluginRegistrantCallback callback) {
    pluginRegistrantCallback = callback;
  }


  /**
   * Sets the Dart callback handle for the Dart method that is responsible for initializing the
   * background Dart isolate, preparing it to receive Dart callback tasks requests.
   */
  public static void setCallbackDispatcher(Context context, long callbackHandle) {
    SharedPreferences prefs = context.getSharedPreferences(AlarmManagerUtil.SHARED_PREFERENCES_KEY, 0);
    prefs.edit().putLong(CALLBACK_HANDLE_KEY, callbackHandle).apply();
  }

  /** Returns true when the background isolate has started and is ready to handle alarms. */
  public boolean isRunning() {
    return isCallbackDispatcherReady.get();
  }

  public void onInitialized() {
    isCallbackDispatcherReady.set(true);
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    String method = call.method;
    Object arguments = call.arguments;
    Log.w(TAG,"onMethodCall==$"+method+"-----arguments"+arguments);

    try {
      if (method.equals("AlarmService.initialized")) {
        onInitialized();
        result.success(true);
      } else {
        result.notImplemented();
      }
    } catch (PluginRegistrantException e) {
      result.error("error", "AlarmManager error: " + e.getMessage(), null);
    }
  }


  public Context mContext;




  private FlutterEngine getFlutterEngine( Context context) {
    FlutterEngine eng = FlutterEngineCache.getInstance().get(NotificationListenerPlugin.FLUTTER_ENGINE_CACHE_KEY);
    if (eng != null) return eng;

    Log.i(TAG, "flutter engine cache is null, create a new one");
    eng = new FlutterEngine(context);

    // ensure initialization
    FlutterInjector.instance().flutterLoader().startInitialization(context);
    FlutterInjector.instance().flutterLoader().ensureInitializationComplete(context,null);

    // call the flutter side init
    // get the call back handle information
    long cb = context.getSharedPreferences(NotificationListenerPlugin.SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE).getLong(NotificationListenerPlugin.CALLBACK_DISPATCHER_HANDLE_KEY, 0);

    if (cb != 0L) {
      Log.d(TAG, "try to find callback: $cb");
      FlutterCallbackInformation info = FlutterCallbackInformation.lookupCallbackInformation(cb);
      DartCallback args = new DartCallback(context.getAssets(), FlutterInjector.instance().flutterLoader().findAppBundlePath(), info);

      eng.getDartExecutor().executeDartCallback(args);
    } else {
      Log.e(TAG, "Fatal: no callback register");
    }

    FlutterEngineCache.getInstance().put(NotificationListenerPlugin.FLUTTER_ENGINE_CACHE_KEY, eng);
    return eng ;
  }



  public void startBackgroundIsolate(Context context) {
    if (backgroundFlutterEngine != null) {
      Log.e(TAG, "Background isolate already started");
      return;
    }

    Log.i(TAG, "Starting startBackgroundIsolate...");
    if (!isRunning()) {
      Log.i(TAG, "!isRunning() startBackgroundIsolate...");
      backgroundFlutterEngine = getFlutterEngine(context);
      initializeMyMethodChannel();
      if (pluginRegistrantCallback != null) {
        pluginRegistrantCallback.registerWith(new ShimPluginRegistry(backgroundFlutterEngine));
      }
    }
  }


  public void executeDartCallbackInBackgroundIsolate(Intent intent) {
    long callbackHandle = intent.getLongExtra("callbackHandle", 0);
    Log.w(TAG, "invokeAlarmManagerCallback");
    if (callbackHandle == 0L) {
      callbackHandle = mContext.getSharedPreferences(NotificationListenerPlugin.SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE)
              .getLong(NotificationListenerPlugin.CALLBACK_HANDLE_KEY, 0);

    }
    Log.w(TAG, "callbackHandle=="+callbackHandle);

    try {
      if(backgroundFlutterEngine !=null){
        FlutterJNI flutterJNI = UtilsControl.getDeclaredField(backgroundFlutterEngine);
        if(flutterJNI !=null){
          Log.w(TAG, "callbackHandle=--backgroundFlutterEngine--isAttached="+flutterJNI.isAttached());
        }
//        if(flutterJNI.isAttached()){
//          flutterJNI.attachToNative();
//        }
      }
    }catch (Exception e){
      e.printStackTrace();
    }

    backgroundChannel.invokeMethod("invokeAlarmManagerCallback",listOf(callbackHandle, intent.getIntExtra("id", -1)),result);
  }
  MethodChannel.Result result =new MethodChannel.Result(){

    @Override
    public void success(@Nullable Object o) {

      Log.w(TAG,"sendInvokeAlarmManagerCallback-evt.data---call success$result"+o);
    }

    @Override
    public void error(@NonNull String s, @Nullable String s1, @Nullable Object o) {
      Log.w(TAG,"sendInvokeAlarmManagerCallback-evt.data---call error"+s+"__s1"+s1+"__"+o);
    }

    @Override
    public void notImplemented() {
      Log.w(TAG,"sendInvokeAlarmManagerCallback-evt.data---call notImplemented");
    }
  };

  private void initializeMyMethodChannel() {
    backgroundChannel =new MethodChannel(backgroundFlutterEngine.getDartExecutor().getBinaryMessenger(), "notification_listener/bg_method");
    backgroundChannel.setMethodCallHandler(this);
  }


  private void initializeMethodChannel(BinaryMessenger isolate) {
    backgroundChannel = new MethodChannel(isolate, "notification_listener/android_alarm_manager_background", JSONMethodCodec.INSTANCE);
    backgroundChannel.setMethodCallHandler(this);
  }
}
