package com.watchic.app.notification_listener


import com.watchic.app.notification_listener.alarmmanager.AlarmManagerUtil
import com.watchic.app.notification_listener.alarmmanager.OneShotRequest
import com.watchic.app.notification_listener.alarmmanager.PeriodicRequest
import android.Manifest
import android.annotation.SuppressLint
import android.app.ActivityManager
import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothManager
import android.content.*
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.PowerManager
import android.text.TextUtils
import android.util.Log
import androidx.annotation.NonNull
import androidx.annotation.RequiresApi
import androidx.core.app.ActivityCompat

import com.watchic.app.notification_listener.keeplive.service.JobHandlerService
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.json.JSONException
import org.json.JSONObject
import java.util.*
import java.util.concurrent.CountDownLatch


import android.content.Intent
import android.provider.Settings
import com.watchic.app.notification_listener.util.RomUtil
import com.watchic.app.notification_listener.util.Utils
import com.watchic.app.notification_listener.util.UtilsControl
import com.watchic.app.notification_listener.util.UtilsControls


class NotificationListenerPlugin : FlutterPlugin, MethodChannel.MethodCallHandler, EventChannel.StreamHandler{
  private var eventSink: EventChannel.EventSink? = null
  private  var methodChannel: MethodChannel ? = null
  private  var flutterEngine: FlutterEngine? = null
  private lateinit var mContext: Context
  private var mBluetoothAdapter: BluetoothAdapter? = null
  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    Log.i(TAG, "on attached to engine")

    mContext = flutterPluginBinding.applicationContext

    val binaryMessenger = flutterPluginBinding.binaryMessenger

    // event stream channel
    EventChannel(binaryMessenger, EVENT_CHANNEL_NAME).setStreamHandler(this)
    // method channel
    methodChannel= MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME)
    methodChannel?.setMethodCallHandler(this)

    // store the flutter engine
    val engine = flutterPluginBinding.flutterEngine
    flutterEngine =engine

    FlutterEngineCache.getInstance().put(FLUTTER_ENGINE_CACHE_KEY, engine)

    // TODO: remove those code
    val receiver = NotificationReceiver()
    val intentFilter = IntentFilter()
    intentFilter.addAction(NotificationsHandlerService.NOTIFICATION_INTENT)
    mContext.registerReceiver(receiver, intentFilter)

    Log.i(TAG, "attached engine finished")
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    // methodChannel.setMethodCallHandler(null)
  }

  @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN_MR2)
  override fun onListen(o: Any?, eventSink: EventChannel.EventSink?) {
    this.eventSink = eventSink
  }

  override fun onCancel(o: Any?) {
    eventSink = null
  }

  internal inner class NotificationReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
      eventSink?.success(intent.getStringExtra(NotificationsHandlerService.NOTIFICATION_INTENT_KEY)?:"{}")
    }
  }


  inner  class  MyAlarmBroadcastReceiver :BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
      Log.w("lxk", "MyAlarmBroadcastReceiver----onReceive")
      Handler(mContext.mainLooper).post {
        executeDartCallbackInBackgroundIsolate(intent,  null) }
    }

    private fun executeDartCallbackInBackgroundIsolate(intent: Intent, latch: CountDownLatch?) {
      var callbackHandle = intent.getLongExtra("callbackHandle", 0)
      val paramsJsonString = intent.getStringExtra("params")
      var params: JSONObject? = null
      if (!TextUtils.isEmpty(paramsJsonString)) {
        params = try {
          JSONObject(paramsJsonString)
        } catch (e: JSONException) {
          throw IllegalArgumentException("Can not convert 'params' to JsonObject", e)
        }
      }
      Log.w("lxk", "executeDartCallbackInBackgroundIsolate")
      Log.w("lxk", "callbackHandle==$callbackHandle")
      methodChannel?.invokeMethod("invokeAlarmManagerCallback", arrayOf<Any?>(callbackHandle, intent.getIntExtra("id", -1), params))
    }
  }
  companion object {
    const val TAG = "lxk_NotificationListenerPlugin"

    private const val EVENT_CHANNEL_NAME = "notification_listener/events"
    private const val METHOD_CHANNEL_NAME = "notification_listener/method"

    const val SHARED_PREFERENCES_KEY = "flutter_notification_cache"
    const val REMOTE_SHARED_PREFERENCES_KEY = "FlutterSharedPreferences"

    const val CALLBACK_DISPATCHER_HANDLE_KEY = "callback_dispatch_handler"
    const val PROMOTE_SERVICE_ARGS_KEY = "promote_service_args"
    const val PROMOTE_JOB_HANDLE_SERVICE_ARGS_KEY = "promote_job_handle__service_args"
    const val REMOTE_PROMOTE_SERVICE_ARGS_KEY = "remote_promote_service_args"
    const val CALLBACK_HANDLE_KEY = "callback_handler"

    const val FLUTTER_ENGINE_CACHE_KEY = "flutter_engine_main"
    const val Alarm_Notice_KEY = "alarm_notice_key"

    private val sNotificationCacheLock = Object()

    fun registerAfterReboot(context: Context) {
      synchronized(sNotificationCacheLock) {
        Log.i(TAG, "try to start service after reboot")
        internalStartService(context, null,true)
        internalStartJobHandlerService(context)
      }
    }

    private fun initialize(context: Context, cbId: Long) {
      Log.d(TAG, "plugin init: install callback and notify the service flutter engine changed")
      context.getSharedPreferences(SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE)
        .edit()
        .putLong(CALLBACK_DISPATCHER_HANDLE_KEY, cbId)
        .apply()

      // TODO: update the flutter engine
      // call the service to update the flutter engine
      NotificationsHandlerService.updateFlutterEngine(context)
    }
    private fun updateFlutterEngine(context: Context) {
      Log.d(TAG, "plugin init: install callback and notify the service flutter engine changed--updateFlutterEngine")
      NotificationsHandlerService.updateFlutterEngineNotFinish(context)
    }

    private fun internalStartJobHandlerService(context: Context): Boolean {
      val intentHandlerService = Intent(context, JobHandlerService::class.java)
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
        try {
          if(!isServiceRunning(context,JobHandlerService::class.java)){
            Log.i(TAG, "start service foreground")
            context.startForegroundService(intentHandlerService)
          }else{
            Log.i(TAG, "JobHandlerService isServiceRunning ")
          }
        }catch (e:Exception){
          context.startService(intentHandlerService)
        }
      }else{
        context.startService(intentHandlerService)
      }
      return true
    }

    private fun internalStartService(context: Context, cfg: Utils.PromoteServiceConfig?,isReboot:Boolean): Boolean {

      if (!NotificationsHandlerService.permissionGiven(context)) {
        Log.e(TAG, "can't get permission to start service.")
        return false
      }

      Log.d(TAG, "start service with args: $cfg")

      val cfg = cfg ?: Utils.PromoteServiceConfig.load(context)
      LogUtilHandler.getInstance(context)?.sendMessage("internalStartService---${cfg}")
      // and try to toggle the service to trigger rebind
      with(NotificationsHandlerService) {

        /* Start the notification service once permission has been given. */
        val intent = Intent(context, NotificationsHandlerService::class.java)

        intent.putExtra("isReboot",isReboot)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && cfg.foreground == true) {
          Log.i(TAG, "start service foreground")
          context.startForegroundService(intent)
        } else {
          Log.i(TAG, "start service normal")
          context.startService(intent)
        }

        // and try to toggle the service to trigger rebind
        disableServiceSettings(context)
        enableServiceSettings(context)

      }

      return true
    }



    fun stopService(context: Context): Boolean {
      if (!isServiceRunning(context, NotificationsHandlerService::class.java)) return true

      val intent = Intent(context, NotificationsHandlerService::class.java)
      intent.action = NotificationsHandlerService.ACTION_SHUTDOWN
      context.startService(intent)
      return true
    }

    fun isServiceRunning(context: Context, serviceClass: Class<*>): Boolean {
      return null != getRunningService(context, serviceClass)
    }

    private fun getRunningService(context: Context, serviceClass: Class<*>): ActivityManager.RunningServiceInfo? {
      val manager = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager?
      for (service in manager!!.getRunningServices(Int.MAX_VALUE)) {
        if (serviceClass.name == service.service.className) {
          Log.d(TAG, "getRunningService---${serviceClass.name}: ${service.service.className}");
          return service
        }
      }

      return null
    }

    fun registerEventHandle(context: Context, cbId: Long): Boolean {
      context.getSharedPreferences(SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE)
        .edit()
        .putLong(CALLBACK_HANDLE_KEY, cbId)
        .apply()
      return true
    }
  }

  override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
    Log.i(TAG, "attached engine ${call.method}")
    when (call.method) {
      "plugin.initialize" -> {
        val cbId = call.arguments<Long?>()!!
        initialize(mContext, cbId)
        return result.success(true)
      }
      "plugin.updateFlutterEngine" -> {
        updateFlutterEngine(mContext)
        return result.success(true)
      }
      "plugin.startService" -> {
        Log.d("lxk","call.arguments==${call.arguments}")
        val cfg = Utils.PromoteServiceConfig.fromMap(call.arguments as Map<*, *>)
        cfg.save(mContext)
        Log.d(TAG, "save  config: $cfg")
        return result.success(  internalStartService(mContext, cfg,false))

      }

      "plugin.startServiceTest" -> {
        Log.d("lxk","call.arguments==${call.arguments}")
        val cfg = Utils.PromoteServiceConfig.fromMap(call.arguments as Map<*, *>)
        cfg.save(mContext)
        Log.d(TAG, "save  config: $cfg")
        return result.success(true)
      }
      "plugin.internalStartJobHandlerService" -> {
        return result.success(internalStartJobHandlerService(mContext))
      }
      "plugin.stopService" -> {
        return result.success(stopService(mContext))
      }
      "plugin.hasPermission" -> {
        return result.success(NotificationsHandlerService.permissionGiven(mContext))
      }
      "plugin.openPermissionSettings" -> {
        return result.success(NotificationsHandlerService.openPermissionSettings(mContext))
      }
      "plugin.isJobServiceRunning" -> {
        return result.success(isServiceRunning(mContext, JobHandlerService::class.java))
      }
      "plugin.isServiceRunning" -> {
        return result.success(isServiceRunning(mContext, NotificationsHandlerService::class.java))
      }
      "plugin.registerEventHandle" -> {
        val cbId = call.arguments<Long?>()!!
        registerEventHandle(mContext, cbId)
        return result.success(true)
      }
      // TODO: register handle with filter
      "setFilter" -> {
        // TODO
      }

      "plugin.previousSong" -> {
        UtilsControls.previousSong()
        return result.success(true)
      }
      "plugin.nextMusic" -> {
        UtilsControls.nextSong()
        return result.success(true)
      }
      "plugin.setLowVolume" -> {
        return result.success(true)
      }
      "plugin.setHighVolume" -> {
        return result.success(true)
      }
      "plugin.pauseMusic" -> {
        UtilsControls.pauseMusic()
        return result.success(true)
      }
      "plugin.remoteControllerNull" -> {
        NotificationsHandlerService.updateRegisterRemoteController()
        return result.success(true)
      }
      "plugin.isRemoteControllerNull" -> {

        if(UtilsControl.remoteController==null){
          return result.success(true)
        }
        return result.success(false)
      }
      "plugin.startPlayMusic" -> {
        UtilsControls.startPlayMusic()
        return result.success(true)
      }
      "plugin.moveTaskBack" -> {
        Log.d(TAG, "moveTaskBack");
        val intent = Intent() // 创建Intent对象

        intent.setAction(Intent.ACTION_MAIN) // 设置Intent动作

        intent.addCategory(Intent.CATEGORY_HOME) // 设置Intent种类

        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK) //标记

        mContext.startActivity(intent)
        return result.success(true)
      }
        "plugin.getInstallMarkets" -> {
        result.success(getInstallMarkets(mContext))
      }
      "plugin.hideAppWindow" -> {
        val isHide = call.arguments<Boolean?>()!!
        Log.w("lxk", "hideAppWindow_arguments==$isHide")
        hideAppWindow(isHide)
        return result.success(true)
      }
      "plugin.selfStartingSetting" -> {
          RomUtil.openStart(mContext)
        return result.success(true)
      }
      "plugin.isIgnoringBatteryOptimizations" -> {

        return result.success(isIgnoringBatteryOptimizations())
      }
      "plugin.requestIgnoreBatteryOptimizations" -> {
        requestIgnoreBatteryOptimizations()
        return result.success(true)
      }
      "plugin.toMarket" -> {
        val packageName = call.argument<String>("packageName")
        toMarket(mContext, packageName)
        return result.success(true)
      }
      "plugin.exist" -> {
        val packageName = call.argument<String>("packageName")
        packageName?.also {
          result.success(exist(mContext, it))
        }
      }
      "plugin.acquireLock" -> {
        acquireLock();
        return result.success(true)
      }

      "plugin.releaseLock" -> {
        releaseLock();
        return result.success(true)
      }

      "AlarmService.start" -> {
        val arguments = call.arguments
        Log.w("lxk","AlarmService.start==$arguments")
        AlarmManagerUtil.startBackgroundIsolate(mContext)
        return  result.success(true)
      }

      "Alarm.periodic" -> {
        val arguments = call.arguments
        Log.w("lxk", "arguments==$arguments")
        val args = call.arguments<ArrayList<*>?>()

        Log.w("lxk", "arguments=args---=$args")
        if(arguments is JSONArray){
          val periodicRequest = PeriodicRequest.fromJson(arguments)
          AlarmManagerUtil.setPeriodic(mContext, periodicRequest)
        }else{
          //arguments=args---=[0, false, true, true, 1698158026459, 60000, false, -8297386441701939526, {}]
          val requestCode: Int = args?.get(0) as Int
          val allowWhileIdle: Boolean =  args?.get(1) as Boolean
          val exact: Boolean =  args?.get(2) as Boolean
          val wakeup: Boolean =  args?.get(3) as Boolean
          val startMillis: Long =  args?.get(4) as Long
          val intervalMillis: Int =  args?.get(5) as Int
          val rescheduleOnReboot: Boolean =  args?.get(6) as Boolean
          val callbackHandle: Long =  args?.get(7) as Long
          if(args?.get(8) is JSONObject){
            val params: JSONObject =  args?.get(8) as JSONObject
          }
         // val params: JSONObject =  args?.get(8) as JSONObject
          val periodicRequest =
            PeriodicRequest(
              requestCode,
              allowWhileIdle,
              exact,
              wakeup,
              startMillis,
              intervalMillis,
              rescheduleOnReboot,
              callbackHandle,
              JSONObject()
            )
          AlarmManagerUtil.setPeriodic(mContext, periodicRequest)
        }

        return result.success(true)
      }
      "Alarm.oneShotAt"-> {
        val arguments = call.arguments

        try {
          val oneShotRequest = OneShotRequest.fromJson(arguments as JSONArray)
          AlarmManagerUtil.setOneShot(mContext, oneShotRequest)
        }catch (e:Exception){}
        return result.success(true)
      }

      "Alarm.cancel"-> {
        try {
         // val arguments = call.arguments
          val args = call.arguments<ArrayList<*>?>()
          //val requestCode = (arguments as JSONArray).getInt(0)
          val requestCode = args?.get(0) as Int
          AlarmManagerUtil.cancel(mContext, requestCode)
          return result.success(true)
        }catch (e:Exception){}
          return result.success(false)
      }
      "openBlueTooth"-> {
           var success:Boolean= openBlueTooth()
        return result.success(success)
      }

      else -> result.notImplemented()
    }
  }


  private fun openBlueTooth() :Boolean{
    if (!mContext.getPackageManager().hasSystemFeature(PackageManager.FEATURE_BLUETOOTH_LE)) {
      //Toast.makeText(mContext, "该设备不支持蓝牙", Toast.LENGTH_SHORT).show()
      Log.w("lxk", "该设备不支持蓝牙")
      return false
    }

    val bluetoothManager = mContext.getSystemService(Context.BLUETOOTH_SERVICE) as BluetoothManager
    mBluetoothAdapter = bluetoothManager.adapter
    val mBluetoothManager = mContext.getSystemService(Context.BLUETOOTH_SERVICE) as BluetoothManager
    if (mBluetoothManager != null) {
      mBluetoothAdapter = mBluetoothManager.adapter
      if (mBluetoothAdapter != null) {
        if (mBluetoothAdapter?.isEnabled() != true) {
          if (ActivityCompat.checkSelfPermission(mContext, Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
            Log.w("lxk", "该设备没有权限")
            return false
          }

        // val enable= mBluetoothAdapter?.enable() //打开蓝牙
          val intent = Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE)
          intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
          mContext.startActivity(intent)

            // mContext.startActivityForResult(intent, REQUEST_ENABLE_BT)
         // Log.w("lxk", "mBluetoothAdapter:$enable")
        }
      }
    }
    return true
  }
  /**
   * 获取手机上安装的所有应用商店
   */
  private fun getInstallMarkets(context: Context): List<String> {
    val intent = Intent()
    intent.action = "android.intent.action.VIEW"
    intent.addCategory(Intent.CATEGORY_DEFAULT)
    intent.data = Uri.parse("market://details?id=")
    val infos = context.packageManager.queryIntentActivities(intent, 0)
    val list = arrayListOf<String>()
    infos.forEach {
      list.add(it.activityInfo.packageName)
    }
    return list
  }

  /**
   * 跳转到应用市场
   */
  private fun toMarket(context: Context, packageName: String?) {
    try {
      var packageInfo = context.packageManager.getPackageInfo(context.packageName, 0)
      val uri = Uri.parse("market://details?id=${packageInfo.packageName}")
      val goToMarket = Intent(Intent.ACTION_VIEW, uri)
      goToMarket.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
      packageName?.also {
        if (it.isNotEmpty()) {
          goToMarket.setPackage(it)
        }
      }
      context.startActivity(goToMarket)
    } catch (e: ActivityNotFoundException) {
      e.printStackTrace()
    }
  }

  /**
   * 是否存在当前应用市场
   *
   */
  @SuppressLint("WrongConstant")
  private fun exist(context: Context, packageName: String): Boolean {
    val manager = context.packageManager
    val intent = Intent().setPackage(packageName)
    val infos = manager.queryIntentActivities(intent, PackageManager.GET_INTENT_FILTERS)
    return infos.size > 0
  }

  var mWakeLock: PowerManager.WakeLock? = null
  @SuppressLint("InvalidWakeLockTag")
  private  fun acquireLock(){
    var pm = mContext.getSystemService(Context.POWER_SERVICE) as (PowerManager)
//    mWakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "MyAcquireLock")
//    mWakeLock?.acquire();
    pm.run {
      mWakeLock= newWakeLock(PowerManager.PARTIAL_WAKE_LOCK /*or PowerManager.ON_AFTER_RELEASE*/, "MyAcquireLock")
      mWakeLock?.apply {
        setReferenceCounted(false)
        acquire()
      }
    }



  }
  private  fun releaseLock(){
    //mWakeLock?.release()
    if (null != mWakeLock && (mWakeLock?.isHeld == true)) {
      Log.i(TAG, "call releaseWakeLock");
      mWakeLock?.release()
      mWakeLock = null;
    }
  }

  @RequiresApi(api = Build.VERSION_CODES.M)
  private fun isIgnoringBatteryOptimizations(): Boolean {
    var isIgnoring = false
    val powerManager = mContext.getSystemService(Context.POWER_SERVICE) as PowerManager?
    if (powerManager != null) {
      isIgnoring = powerManager.isIgnoringBatteryOptimizations(mContext.packageName)
    }
    return isIgnoring
  }

  @RequiresApi(api = Build.VERSION_CODES.M)
  open fun requestIgnoreBatteryOptimizations() {
    try {
     // val intent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
      val intent = Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS")
      intent.setData(android.net.Uri.parse("package:" + mContext.packageName))
      intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
      mContext.startActivity(intent)
    } catch (e: java.lang.Exception) {
       e.printStackTrace()

    }
  }
  //在多任务列表页面隐藏App窗口
  fun hideAppWindow(isHide:Boolean){
    try {
      val activityManager: ActivityManager = mContext.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
      //控制App的窗口是否在多任务列表显示
      activityManager.appTasks[0].setExcludeFromRecents(isHide)
    }catch (e:Exception){
      e.printStackTrace()
    }
  }



   fun goDefaultSetting(){
     val intentSetting = Intent()
     intentSetting.flags = Intent.FLAG_ACTIVITY_NEW_TASK;
     intentSetting.action = Settings.ACTION_APPLICATION_DETAILS_SETTINGS;
     val uri = Uri.fromParts("package", mContext.packageName, null);
     intentSetting.data = uri;
     mContext.startActivity(intentSetting);

   }

}
