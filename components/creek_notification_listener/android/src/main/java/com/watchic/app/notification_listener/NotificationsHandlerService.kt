package com.watchic.app.notification_listener
import android.annotation.SuppressLint
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.RemoteInput
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.media.AudioManager
import android.media.MediaMetadata
import android.media.MediaMetadataRetriever
import android.media.RemoteControlClient
import android.media.RemoteController
import android.media.session.MediaController
import android.media.session.MediaSession
import android.media.session.MediaSessionManager
import android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
import android.media.session.PlaybackState
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.IBinder
import android.os.RemoteException
import android.provider.Settings
import android.provider.Telephony
import android.service.notification.NotificationListenerService
import android.service.notification.StatusBarNotification
import android.text.TextUtils
import android.util.Log
import android.view.KeyEvent
import androidx.annotation.NonNull
import androidx.annotation.RequiresApi
import androidx.core.app.NotificationCompat
import com.google.android.gms.common.ConnectionResult
import com.google.android.gms.common.GoogleApiAvailability
import com.watchic.app.notification_listener.keeplive.config.KeepLiveService
import com.watchic.app.notification_listener.keeplive.service.JobHandlerService
import com.watchic.app.notification_listener.keeplive.service.RemoteService
import com.watchic.app.notification_listener.util.Utils
import com.watchic.app.notification_listener.util.UtilsControl
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.FlutterJNI
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.view.FlutterCallbackInformation
import org.json.JSONObject
import java.util.*
import java.util.concurrent.atomic.AtomicBoolean


class NotificationsHandlerService: MethodChannel.MethodCallHandler, NotificationListenerService(), RemoteController.OnClientUpdateListener,
    KeepLiveService {
    private val queue = ArrayDeque<NotificationEvent>()
    private lateinit var mBackgroundChannel: MethodChannel
    private lateinit var mContext: Context
    private var  TAG ="lxk-NotificationsService"

    // notification event cache: packageName_id -> event
    private val eventsCache = HashMap<String, NotificationEvent>()
    private  var isServiceRunning:Boolean =false

    private  var  smsPackage =""
    private  var audioManager: AudioManager? = null
    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        Log.e("lxk", "NotificationsHandlerService-method==${call.method}")
        when (call.method) {
            "service.initialized" -> {
                initFinish()
                return result.success(true)
            }
            // this should move to plugin
            "service.promoteToForeground" -> {
                // add data
                Log.d("lxk","call.promoteToForeground==${call.arguments}")
                val cfg = Utils.PromoteServiceConfig.fromMap(call.arguments as Map<*, *>)
                return result.success(promoteToForeground(cfg))
            }
            "service.demoteToBackground" -> {
                return result.success(demoteToBackground())
            }
            "service.tap" -> {
                // tap the notification
                Log.d(TAG, "tap the notification")
                val args = call.arguments<ArrayList<*>?>()
                val uid = args!![0]!! as String
                return result.success(tapNotification(uid))
            }
            "service.tap_action" -> {
                // tap the action
                Log.d(TAG, "tap action of notification")
                val args = call.arguments<ArrayList<*>?>()
                val uid = args!![0]!! as String
                val idx = args[1]!! as Int
                return result.success(tapNotificationAction(uid, idx))
            }
            "service.send_input" -> {
                // send the input data
                Log.d(TAG, "set the content for input and the send action")
                val args = call.arguments<ArrayList<*>?>()
                val uid = args!![0]!! as String
                val idx = args[1]!! as Int
                val data = args[2]!! as Map<*, *>
                return result.success(sendNotificationInput(uid, idx, data))
            }
            "service.get_full_notification" -> {
                val args = call.arguments<ArrayList<*>?>()
                val uid = args!![0]!! as String
                if (!eventsCache.contains(uid)) {
                    return result.error("notFound", "can't found this notification $uid", "")
                }
                return result.success(Utils.Marshaller.marshal(eventsCache[uid]?.mSbn))
            }
            "service.isRemoteControllerToNull" -> {
                return result.success(remoteController !=null)
            }
            "service.registerRemoteController" -> {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                    try {
                        initMediaSessionManager()
                    }catch (e:Exception){e.printStackTrace()}
                }
                try {
                    registerRemoteController()
                }catch (e:Exception){e.printStackTrace()}

                return result.success(true)
            }
            "service.previousSong" -> {
                previousSong()
                return result.success(true)
            }
            "service.nextMusic" -> {
                nextSong()
                return result.success(true)
            }
            "service.setLowVolume" -> {
                setLowVolume()
                return result.success(true)
            }
            "service.setHighVolume" -> {
                setHighVolume()
                return result.success(true)
            }
            "service.pauseMusic" -> {
                pauseMusic()
                return result.success(true)
            }
            "service.getMusicInfo" -> {
                return result.success(getMusicInfo())
            }
            "service.sendMusicInfo" -> {
                sendMusicInfo()
                return result.success(true)
            }
            "service.startPlayMusic" -> {
                startPlayMusic()
                return result.success(true)
            }
            "service.isGooglePlayServicesAvailable" -> {
                try {
                    // 验证是否已在此设备上安装并启用Google Play服务，以及此设备上安装的旧版本是否为此客户端所需的版本
                    var code = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this)
                    Log.d(TAG, "isGooglePlayServicesAvailable $code")
                    return result.success(code == ConnectionResult.SUCCESS)
                }catch (e:Exception){
                   e.printStackTrace()
                }
                return result.success(false)
            }
            "service.is24HourFormat" -> {
                val cv = this.contentResolver
                val strTimeFormat = Settings.System.getString(
                    cv,
                    Settings.System.TIME_12_24
                )
                if(strTimeFormat.equals("24")) {
                    Log.i("lxk","activity-strTimeFormat-24")
                    return result.success(true)
                }else{
                    Log.i("lxk","activity--strTimeFormat-12")
                    return result.success(false)
                }
                // Log.d("lxk","is24HourFormat==${is24HourFormat}")
            }
            else -> {
                Log.d(TAG, "unknown method ${call.method}")
                return result.success(false)
            }
        }
    }

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {

        audioManager = applicationContext.getSystemService(AUDIO_SERVICE) as AudioManager
        Log.i(TAG, " notification onStartCommand")
        // if get shutdown release the wake lock
        when (intent?.action) {
            ACTION_SHUTDOWN -> {
//                (getSystemService(POWER_SERVICE) as PowerManager).run {
//                    newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, WAKELOCK_TAG).apply {
//                        if (isHeld) release()
//                    }
//                }
                Log.i(TAG, "stop notification handler service!")
                LogUtilHandler.getInstance(mContext)?.setMessage("stop notification handler service!",mContext)
                disableServiceSettings(mContext)
                stopForeground(true)
                stopSelf()
            }
            else -> {

            }
        }
        // if (Utils.isNotificationListenerEnabled(this)) { //开启通知使用权后再设置,否则会报权限错误
        try {
            initMediaSessionManager()
            registerRemoteController()
        }catch (e:Exception){
            e.printStackTrace()
        }

        // }
        getSmsPackage()
        var isReboot= intent?.getBooleanExtra("isReboot",false) == true
        Log.d(TAG,"send notification reBootEvent-event$isReboot")
        if(isReboot){
            sendEvent(null,"reBootEvent")
        }
        bindGuardService()
        return START_REDELIVER_INTENT
    }



    override fun onCreate() {
        super.onCreate()
        mContext = this

        // store the service instance
        instance = this
        isServiceRunning =true
        Log.i(TAG, "notification listener service onCreate")
        LogUtilHandler.getInstance(mContext)?.setMessage("notification listener service onCreate",mContext)
        startListenerService(this)

        sendEvent(null,"reBootEvent")
    }

    override fun onListenerDisconnected() {
        super.onListenerDisconnected()
        try {
            LogUtilHandler.getInstance(this)
        }catch (e:Exception){}
        LogUtilHandler.getInstance(mContext)?.setMessage("onListenerDisconnected",mContext)
       if(permissionGiven(mContext)){
           internalStartService(this, null,true)
       }else{
           LogUtilHandler.getInstance(mContext)?.setMessage("onListenerDisconnected__no_permissionGiven",mContext)
       }


    }

    private fun internalStartService(context: Context, cfg: Utils.PromoteServiceConfig?,isReboot:Boolean): Boolean {

        if (!permissionGiven(context)) {
            Log.e(TAG, "can't get permission to start service.")
            return false
        }

        Log.d(TAG, "start service with args: $cfg")

        val cfg = cfg ?: Utils.PromoteServiceConfig.load(context)

        // and try to toggle the service to trigger rebind
        with(NotificationsHandlerService) {

            /* Start the notification service once permission has been given. */
            val intent = Intent(context, NotificationsHandlerService::class.java)
            intent.putExtra("isReboot",isReboot)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && cfg.foreground == true)  {
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

    override fun onDestroy() {
        super.onDestroy()
        Log.i(TAG, "notification listener service onDestroy")
        LogUtilHandler.getInstance(mContext)?.setMessage("notification listener service onDestroy",mContext)

        val bdi = Intent(mContext, RebootBroadcastReceiver::class.java)
        // remove notification
        sendBroadcast(bdi)
    }

    override fun onTaskRemoved(rootIntent: Intent?) {
        Log.i(TAG, "notification listener service onTaskRemoved")
        LogUtilHandler.getInstance(mContext)?.sendMessage("notification listener service onTaskRemoved${rootIntent.toString()}")
        internalStartJobHandlerService()
        super.onTaskRemoved(rootIntent)

    }

    override fun onLowMemory() {
        LogUtilHandler.getInstance(mContext)?.sendMessage("onLowMemory")
        internalStartJobHandlerService()
        super.onLowMemory()

    }

    override fun onTrimMemory(level: Int) {
        when (level) {
                TRIM_MEMORY_UI_HIDDEN -> {
                    LogUtilHandler.getInstance(mContext)?.sendMessage("${level}_onTrimMemory() app的所有ui被隐藏")
                }
                TRIM_MEMORY_RUNNING_MODERATE -> {
                    LogUtilHandler.getInstance(mContext)?.sendMessage("${level}_onTrimMemory() app正常运行，系统可能根据LRU缓存规则杀掉缓存的进程了。")
                }
            TRIM_MEMORY_RUNNING_MODERATE -> {
                LogUtilHandler.getInstance(mContext)
                    ?.sendMessage("${level}_onTrimMemory() app正常运行，系统可能根据LRU缓存规则杀掉缓存的进程了。")
            }

            TRIM_MEMORY_RUNNING_CRITICAL -> {
                LogUtilHandler.getInstance(mContext)
                    ?.sendMessage("${level}_onTrimMemory() app正常运行，系统可能根据LRU缓存规则杀掉缓存的进程了。")
                internalStartJobHandlerService()
            }

            TRIM_MEMORY_BACKGROUND -> {
                LogUtilHandler.getInstance(mContext)
                    ?.sendMessage("${level}_onTrimMemory() 手机内存很低，系统开始杀app")
                internalStartJobHandlerService()
            }

            TRIM_MEMORY_MODERATE -> {
                LogUtilHandler.getInstance(mContext)
                    ?.sendMessage("${level}_onTrimMemory()手机内存很低，系统开始杀app")
                internalStartJobHandlerService()
            }

            TRIM_MEMORY_COMPLETE -> {
                LogUtilHandler.getInstance(mContext)
                    ?.sendMessage("${level}_onTrimMemory() 手机内存很低，系统开始杀app")
                internalStartJobHandlerService()
            }else ->{
                LogUtilHandler.getInstance(mContext)?.sendMessage("onTrimMemory————level：$level")
            }
        }
        super.onTrimMemory(level)

    }
    private fun internalStartJobHandlerService() {
        val intentHandlerService = Intent(applicationContext, JobHandlerService::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {

           // if(!NotificationListenerPlugin.isServiceRunning(applicationContext, JobHandlerService::class.java)){
                Log.i(TAG, "start service foreground")
                LogUtilHandler.getInstance(mContext)?.sendMessage("start service foreground")

                try {
                    applicationContext.startForegroundService(intentHandlerService)
                }catch (e:Exception){
                    LogUtilHandler.getInstance(mContext)?.sendMessage("internalStartJobHandlerService————Exception：$e")
                    applicationContext.startService(intentHandlerService)
                }
          //  }
        }else{
            applicationContext.startService(intentHandlerService)
        }

    }
    var name="com.skype.raider"
    var sbnID =-1
    override fun onNotificationPosted(sbn: StatusBarNotification) {
        super.onNotificationPosted(sbn)

        FlutterInjector.instance().flutterLoader().startInitialization(mContext)
        FlutterInjector.instance().flutterLoader().ensureInitializationComplete(mContext, null)
        Log.e(TAG,"---${sbn.notification.flags} ")
        Log.e(TAG,"---${sbn.notification.flags==Notification.FLAG_INSISTENT} ")
        if(sbn.isOngoing){
           //todo:返回该通知是否在正在
           //Log.e(TAG,"zheng zai fan hui de tong zhi bu hui diao ")
           Log.e(TAG,"长驻在通知的应用不返回通知消息 ")
            return
        }
        Log.e(TAG,"tag---过滤相同的gettag--${sbn.tag}")
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            Log.e(TAG,"isGroup---过滤相同的gettag--${sbn.isGroup}")
            LogUtilHandler.getInstance(mContext)?.setMessage("onNotificationPosted-isGroup---过滤相同的gettag--${sbn.isGroup}",mContext)
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT_WATCH) {
            Log.e(TAG,"key---过滤相同的gettag--${sbn.key}")
            LogUtilHandler.getInstance(mContext)?.setMessage("onNotificationPosted-key---过滤相同的gettag--${sbn.key}",mContext)
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            Log.e(TAG,"-uid--过滤相同的getUid--${sbn.uid}")
            LogUtilHandler.getInstance(mContext)?.setMessage("onNotificationPosted--uid--过滤相同的getUid--${sbn.uid}",mContext)
        }
        if(sbnID ==sbn.id){
            Log.e(TAG,"$sbnID---过滤相同的sbnID--${sbn.id}")
            LogUtilHandler.getInstance(mContext)?.setMessage("onNotificationPosted-$sbnID---过滤相同的sbnID--${sbn.id}",mContext)
           // return;
        }

        sbnID = sbn.id
        if(smsPackage.isNotEmpty()){
            getSmsPackage()
        }
        var namePackage:String =sbn.packageName
        Log.e(TAG,"namePackage-$namePackage--smsPackage--${smsPackage}")
        if(smsPackage.isNotEmpty() && smsPackage == sbn.packageName){
            ///
            namePackage="com.android.mms"
        }
        val evt = NotificationEvent(mContext, sbn,namePackage)
        val isForeground = ( sbn.notification.flags and Notification.FLAG_FOREGROUND_SERVICE) != 0
       val isFlagNOClear= sbn.notification.flags and Notification.FLAG_NO_CLEAR !=0
        if(isForeground && isFlagNOClear){
            Log.e(TAG,"---过滤-flags:-${sbn.notification.flags}--data:${evt.data}")
            LogUtilHandler.getInstance(mContext)?.setMessage("onNotificationPosted----过滤-flags:-${sbn.notification.flags}--data:${evt.data}",mContext)
            return
        }
        // store the evt to cache
        eventsCache[evt.uid] = evt
        synchronized(sServiceStarted) {
            if (!sServiceStarted.get()) {
                Log.d(TAG, "service is not start try to queue the event")
                LogUtilHandler.getInstance(mContext)?.setMessage("onNotificationPosted-service is not start try to queue the event",mContext)
                queue.add(evt)
            } else {
                Log.d(TAG, "send event to flutter side immediately!")
                LogUtilHandler.getInstance(mContext)?.setMessage("send event to flutter side immediately!",mContext)
                Handler(mContext.mainLooper).post {

                    sendEvent(evt,"sink_event") }
            }
        }
    }

    override fun onNotificationRemoved(sbn: StatusBarNotification?) {
        super.onNotificationRemoved(sbn)
        if (sbn == null) return
        val evt = NotificationEvent(mContext, sbn,"")
        // remove the event from cache
        eventsCache.remove(evt.uid)
        Log.d(TAG, "notification removed: ${evt.uid}")

    }

    private fun initFinish() {
        Log.d(TAG, "service's flutter engine initialize finished")
        LogUtilHandler.getInstance(mContext)?.setMessage("service's flutter engine initialize finished",mContext)
        synchronized(sServiceStarted) {
            while (!queue.isEmpty()) sendEvent(queue.remove(),"sink_event")
            sServiceStarted.set(true)
        }
    }

    private fun promoteToForeground(cfg: Utils.PromoteServiceConfig? = null): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            Log.e(TAG, "promote To 前台服务需要  sdk >= 26")
            return false
        }

        if (cfg?.foreground != true) {
            Log.i(TAG, "不需要启动后台服务: ${cfg?.foreground}")
            return false
        }

        // first is not running already, start at first
        if (!NotificationListenerPlugin.isServiceRunning(mContext, this.javaClass)) {
            Log.e(TAG, "service is not running")
            return false
        }

        // make the service to foreground

        // create a channel for notification
        val channel = NotificationChannel(CHANNEL_ID, " Notifications Listener Plugin", NotificationManager.IMPORTANCE_HIGH)
        val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
        (getSystemService(NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(channel)
        if(cfg.title?.isEmpty() == true){
            cfg.title="${getApplicationName()} Running"
        }
        Log.d(TAG, "promote -lxk-------${getApplicationName()} Running")
        if(cfg.title == null || cfg.title == " " ){
            cfg.title="Running"
        }
        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle(cfg.title)
            .setContentText(cfg.description)
            .setShowWhen(cfg.showWhen ?: false)
            .setSubText(cfg.subTitle)
            .setSmallIcon(imageId)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setCategory(NotificationCompat.CATEGORY_SERVICE)
            .build()


        startForeground(ONGOING_NOTIFICATION_ID, notification)

        return true
    }

    fun getApplicationName(): String {
        val packageName = packageName
        val packageManager: PackageManager = applicationContext.packageManager
        val applicationInfo = packageManager.getApplicationInfo(packageName, 0)
        return packageManager.getApplicationLabel(applicationInfo).toString()
    }

    private fun demoteToBackground(): Boolean {
        Log.d(TAG, "demote the service to background")
//        (getSystemService(POWER_SERVICE) as PowerManager).run {
//            newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, WAKELOCK_TAG).apply {
//                if (isHeld) release()
//            }
//        }
        stopForeground(true)
        return true
    }

    private fun tapNotification(uid: String): Boolean {
        Log.d(TAG, "tap the notification: $uid")
        if (!eventsCache.containsKey(uid)) {
            Log.d(TAG, "notification is not exits: $uid")
            return false
        }
        val n = eventsCache[uid] ?: return false
        n.mSbn.notification.contentIntent.send()
        return true
    }

    private fun tapNotificationAction(uid: String, idx: Int): Boolean {
        Log.d(TAG, "tap the notification action: $uid @$idx")
        if (!eventsCache.containsKey(uid)) {
            Log.d(TAG, "notification is not exits: $uid")
            return false
        }
        val n = eventsCache[uid]
        if (n == null) {
            Log.e(TAG, "notification is null: $uid")
            return false
        }
        if (n.mSbn.notification.actions.size <= idx) {
            Log.e(TAG, "tap action out of range: size ${n.mSbn.notification.actions.size} index $idx")
            return false
        }

        val act = n.mSbn.notification.actions[idx]
        if (act == null) {
            Log.e(TAG, "notification $uid action $idx not exits")
            return false
        }
        act.actionIntent.send()
        return true
    }

    private fun sendNotificationInput(uid: String, idx: Int, data: Map<*, *>): Boolean {
        Log.d(TAG, "tap the notification action: $uid @$idx")
        if (!eventsCache.containsKey(uid)) {
            Log.d(TAG, "notification is not exits: $uid")
            return false
        }
        val n = eventsCache[uid]
        if (n == null) {
            Log.e(TAG, "notification is null: $uid")
            return false
        }
        if (n.mSbn.notification.actions.size <= idx) {
            Log.e(TAG, "send inputs out of range: size ${n.mSbn.notification.actions.size} index $idx")
            return false
        }

        val act = n.mSbn.notification.actions[idx]
        if (act == null) {
            Log.e(TAG, "notification $uid action $idx not exits")
            return false
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT_WATCH) {
            if (act.remoteInputs == null) {
                Log.e(TAG, "notification $uid action $idx remote inputs not exits")
                return false
            }

            val intent = Intent()
            val bundle = Bundle()
            act.remoteInputs.forEach {
                if (data.containsKey(it.resultKey as String)) {
                    Log.d(TAG, "add input content: ${it.resultKey} => ${data[it.resultKey]}")
                    bundle.putCharSequence(it.resultKey, data[it.resultKey] as String)
                }
            }
            RemoteInput.addResultsToIntent(act.remoteInputs, intent, bundle)
            try {
                act.actionIntent.send(mContext, 0, intent)
                Log.d(TAG, "send the input action success")
                return true
            }catch (e:Exception){
                Log.e(TAG, " act.actionIntent.send catch:$e")
                return false
            }


        } else {
            Log.e(TAG, "not implement :sdk < KITKAT_WATCH")
            return false
        }
    }

    companion object {

        var callbackHandle = 0L

        @SuppressLint("StaticFieldLeak")
        @JvmStatic
        var instance: NotificationsHandlerService? = null

        @JvmStatic
        private val TAG = "ListenerService"

        private const val ONGOING_NOTIFICATION_ID = 100
        @JvmStatic
        private val WAKELOCK_TAG = "IsolateHolderService::WAKE_LOCK"
        @JvmStatic
        val ACTION_SHUTDOWN = "SHUTDOWN"

        private const val CHANNEL_ID = "flutter_notifications_listener_channel"

        @JvmStatic
        private var sBackgroundFlutterEngine: FlutterEngine? = null
        @JvmStatic
        private val sServiceStarted = AtomicBoolean(false)

        private const val BG_METHOD_CHANNEL_NAME = "notification_listener/bg_method"

        private const val ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners"
        private const val ACTION_NOTIFICATION_LISTENER_SETTINGS = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

        const val NOTIFICATION_INTENT_KEY = "object"
        const val NOTIFICATION_INTENT = "notification_event"

        fun permissionGiven(context: Context): Boolean {
            val packageName = context.packageName
            try {
                val flat = Settings.Secure.getString(context.contentResolver, ENABLED_NOTIFICATION_LISTENERS)
                if (!TextUtils.isEmpty(flat)) {
                    val names = flat.split(":").toTypedArray()
                    for (name in names) {
                        val componentName = ComponentName.unflattenFromString(name)
                        val nameMatch = TextUtils.equals(packageName, componentName?.packageName)
                        if (nameMatch) {
                            return true
                        }
                    }
                }
            }catch (e:Exception){
                Log.w("CrashHandler","permissionGiven__${e.printStackTrace()}")
            }


            return false
        }

        fun openPermissionSettings(context: Context): Boolean {
            context.startActivity(Intent(ACTION_NOTIFICATION_LISTENER_SETTINGS).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
            return true
        }

        fun enableServiceSettings(context: Context) {
            toggleServiceSettings(context, PackageManager.COMPONENT_ENABLED_STATE_ENABLED)
        }

        fun disableServiceSettings(context: Context) {
            toggleServiceSettings(context, PackageManager.COMPONENT_ENABLED_STATE_DISABLED)
        }

        private fun toggleServiceSettings(context: Context, state: Int) {
            val receiver = ComponentName(context, NotificationsHandlerService::class.java)
            val pm = context.packageManager
            pm.setComponentEnabledSetting(receiver, state, PackageManager.DONT_KILL_APP)
        }

        fun updateFlutterEngine(context: Context) {
            Log.d(TAG, "call instance update flutter engine from plugin init")
            instance?.updateFlutterEngine(context)
            // we need to `finish init` manually
            instance?.initFinish()
        }
        fun updateFlutterEngineNotFinish(context: Context) {
            Log.d(TAG, "call instance update flutter engine from plugin updateFlutterEngineNotFinish")
            instance?.updateFlutterEngine(context)

        }

        fun updateRegisterRemoteController(){
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                try {
                    instance?.initMediaSessionManager()
                }catch (e:Exception){
                }
            }
            instance?.registerRemoteController()
        }
    }

    private fun getFlutterEngine(context: Context): FlutterEngine {
        var eng = FlutterEngineCache.getInstance().get(NotificationListenerPlugin.FLUTTER_ENGINE_CACHE_KEY)
        if (eng != null) return eng

        Log.i(TAG, "flutter engine cache is null, create a new one")
        eng = FlutterEngine(context)

        // ensure initialization
        FlutterInjector.instance().flutterLoader().startInitialization(context)
        FlutterInjector.instance().flutterLoader().ensureInitializationComplete(context, arrayOf())

        // call the flutter side init
        // get the call back handle information
        val cb = context.getSharedPreferences(NotificationListenerPlugin.SHARED_PREFERENCES_KEY, MODE_PRIVATE)
            .getLong(NotificationListenerPlugin.CALLBACK_DISPATCHER_HANDLE_KEY, 0)

        if (cb != 0L) {
            Log.d(TAG, "try to find callback: $cb")
            val info = FlutterCallbackInformation.lookupCallbackInformation(cb)
            val args = DartExecutor.DartCallback(context.assets,
                FlutterInjector.instance().flutterLoader().findAppBundlePath(), info)
            // call the callback
            eng.dartExecutor.executeDartCallback(args)
        } else {
            Log.e(TAG, "Fatal: no callback register")
        }

        FlutterEngineCache.getInstance().put(NotificationListenerPlugin.FLUTTER_ENGINE_CACHE_KEY, eng)
        return eng
    }

    private fun updateFlutterEngine(context: Context) {
        Log.d(TAG, "update the flutter engine of service")
        // take the engine
        val eng = getFlutterEngine(context)
        sBackgroundFlutterEngine = eng

        // set the method call
        mBackgroundChannel = MethodChannel(eng.dartExecutor.binaryMessenger, BG_METHOD_CHANNEL_NAME)
        mBackgroundChannel.setMethodCallHandler(this)
    }

    private fun startListenerService(context: Context) {
        Log.d(TAG, "start listener service")
        synchronized(sServiceStarted) {
            // promote to foreground
            //  take from intent, currently just load form store
          //  promoteToForeground(Utils.PromoteServiceConfig.load(context))

            // we should to update
            Log.d(TAG, "service's flutter engine is null, should update one")
            updateFlutterEngine(context)

            sServiceStarted.set(true)
        }
        Log.d(TAG, "service start finished")
    }

    private fun sendEvent(evt: NotificationEvent?,method:String) {
        Log.d(TAG, "send notification event: ${evt?.data}")
        if (callbackHandle == 0L) {
            callbackHandle = mContext.getSharedPreferences(NotificationListenerPlugin.SHARED_PREFERENCES_KEY, MODE_PRIVATE)
                .getLong(NotificationListenerPlugin.CALLBACK_HANDLE_KEY, 0)

        }

        // why mBackgroundChannel can be null?

        try {
            // don't care about the method name
            if(sBackgroundFlutterEngine !=null){
                var flutterJNI:FlutterJNI? = UtilsControl.getDeclaredField(sBackgroundFlutterEngine);
                if(flutterJNI !=null ){
                    Log.w(TAG,"sendEvent-evt.data---isAttached:${flutterJNI.isAttached}")
                    if(!flutterJNI.isAttached ){
                        try {
                            LogUtilHandler.getInstance(mContext)?.sendMessage("sendEvent----attachToNative")
                            flutterJNI.attachToNative()
                        }catch (e:Exception){
                            e.printStackTrace()
                            LogUtilHandler.getInstance(mContext)?.sendMessage("sendEvent-evt.data---attachToNative Exception:$e")
                        }
                    }
                }else{
                    Log.w(TAG,"sendEvent-evt.data---flutterJNI ==null")
                }
            }else{
                updateFlutterEngine(this)
            }

            var tempList: List<Any?>?
            if(method =="sink_event"){
                tempList= listOf(callbackHandle, evt?.data)
                var tempText=""
                if(evt?.data != null){
                    var text  = evt.data["text"]
                    var bigText= evt.data["bigText"]
                    tempText = if((bigText?:"").toString().trim().length>(text?:"").toString().trim().length){
                        (bigText?:"").toString()
                    }else{
                        (text?:"").toString()
                    }
                }
                if(tempText.length>5){
                    tempText =tempText.substring(0,5)+"******"
                }
                LogUtilHandler.getInstance(mContext)?.sendMessage("$method- sendData--$tempText")
            }else{
                tempList= listOf(callbackHandle, null)
                LogUtilHandler.getInstance(mContext)?.sendMessage("send$method--")
            }
            mBackgroundChannel.invokeMethod(method, tempList,
                object : Result {
                    override fun success(result: Any?) {
                        //call success
                        Log.w(TAG,"sendEvent-evt.data---call success$result")
                        LogUtilHandler.getInstance(mContext)?.sendMessage("sendEvent-evt.data---call success$result")
                    }

                    override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
                        //call fail
                        Log.w(TAG,"sendEvent-evt.data---call fail?:errorCode_$errorCode--errorMessage:-$errorMessage---errorDetails:$errorDetails")
                        LogUtilHandler.getInstance(mContext)?.sendMessage("sendEvent-evt.data---call fail?:errorCode_$errorCode--errorMessage:-$errorMessage---errorDetails:$errorDetails")
                    }

                    override fun notImplemented() {
                        //flutter没有对应的实现方法
                        Log.w(TAG,"sendEvent-evt.data---notImplemented:flutter没有对应的实现方法")
                        LogUtilHandler.getInstance(mContext)?.sendMessage("sendEvent-evt.data---notImplemented:flutter没有对应的实现方法")
                        if (mBackgroundChannel ==null || sBackgroundFlutterEngine==null){
                            updateFlutterEngine(mContext)
                        }
                    }
                })

        } catch (e: Exception) {
            e.printStackTrace()
            LogUtilHandler.getInstance(mContext)?.sendMessage("Exception---sendEvent-${ e}")
            if (mBackgroundChannel ==null || sBackgroundFlutterEngine==null){
                updateFlutterEngine(this)
            }

        }
    }

    //////////////////////////////////MediaController获取音乐信息/////////////////////////////////////
    private var mActiveSessions: List<MediaController>? = null
    private var mSessionCallback: MediaController.Callback? = null
    var musicPackageName:String=""
    var musicAllPackageName:String=""
    var musicName:String=""
    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    private fun initMediaSessionManager() {
        Log.e( "lxk", "initMediaSessionManager")
        val mediaSessionManager = getSystemService(MEDIA_SESSION_SERVICE) as MediaSessionManager
        val localComponentName = ComponentName(this,NotificationsHandlerService::class.java)
        mediaSessionManager.addOnActiveSessionsChangedListener(object :
            OnActiveSessionsChangedListener {
            override fun onActiveSessionsChanged(controllers: List<MediaController>?) {
                musicPackageName= controllers?.lastOrNull()?.packageName ?:""
                musicAllPackageName=""
                for (mediaController in controllers!!) {
                    val packageName = mediaController.packageName
                    musicAllPackageName = musicAllPackageName+","+mediaController.packageName
                    Log.e(
                        "lxk", "MyApplication onActiveSessionsChanged mediaController.getPackageName: $packageName")
                    LogUtilHandler.getInstance(mContext)?.sendMessage("MyApplication onActiveSessionsChanged mediaController.getPackageName: $packageName")
                    synchronized(this) {
                        mActiveSessions = controllers
                        registerSessionCallbacks()
                    }
                }
            }
        }, localComponentName)
        synchronized(this) {
            mActiveSessions = mediaSessionManager.getActiveSessions(localComponentName)
            registerSessionCallbacks()
        }
    }

    private fun registerSessionCallbacks() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            for (controller in mActiveSessions!!) {

                if (mSessionCallback == null) {
                    mSessionCallback = object : MediaController.Callback() {
                        override fun onMetadataChanged(metadata: MediaMetadata?) {
                            super.onMetadataChanged(metadata)
                            if (metadata != null) {
                                val trackName = metadata.getString(MediaMetadata.METADATA_KEY_TITLE)
                                val artistName =
                                    metadata.getString(MediaMetadata.METADATA_KEY_ARTIST)
                                val albumArtistName =
                                    metadata.getString(MediaMetadata.METADATA_KEY_ALBUM_ARTIST)
                                val albumName = metadata.getString(MediaMetadata.METADATA_KEY_ALBUM)
                                val currentPosMs: Long? = remoteController?.estimatedMediaPosition
                                val duration: Long = metadata.getLong(MediaMetadata.METADATA_KEY_DURATION)
                                Log.i("lxk", "---------------------------------")
                                Log.i("lxk", "| trackName: $trackName")
                                Log.i("lxk", "| artistName: $artistName")
                                Log.i("lxk", "| albumArtistName: $albumArtistName")
                                Log.i("lxk", "| albumName: $albumName")
                                Log.i("lxk", "| currentPosMs: $currentPosMs")
                                Log.i("lxk", "| duration: $duration")
                                Log.i("lxk", "---------------------------------")
                            }
                        }

                        override fun onPlaybackStateChanged(state: PlaybackState?) {
                            super.onPlaybackStateChanged(state)
                            if (state != null) {
                                val isPlaying = state.state == PlaybackState.STATE_PLAYING
                                Log.e( "lxk", "MediaController.Callback onPlaybackStateChanged isPlaying: $isPlaying")
                            }
                        }

                        override fun onSessionDestroyed() {
                            super.onSessionDestroyed()
                             Log.e( "lxk", "MediaController.Callback onSessionDestroyed ")
                        }

                        override fun onAudioInfoChanged(info: MediaController.PlaybackInfo?) {
                            super.onAudioInfoChanged(info)
                            Log.e( "lxk", "MediaController.Callback onAudioInfoChanged--${info.toString()} ")
                        }

                        override fun onExtrasChanged(extras: Bundle?) {
                            super.onExtrasChanged(extras)
                            Log.e( "lxk", "MediaController.Callback onExtrasChanged--${extras.toString()} ")
                        }

                        override fun onSessionEvent(event: String, extras: Bundle?) {
                            super.onSessionEvent(event, extras)
                            Log.e( "lxk", "MediaController.Callback onSessionEvent-$event-${extras.toString()} ")
                        }

                        override fun onQueueChanged(queue: MutableList<MediaSession.QueueItem>?) {
                            super.onQueueChanged(queue)
                           // Log.e( "lxk", "MediaController.Callback onQueueChangede-queue:-${queue.toString()} ")
                        }

                        override fun onQueueTitleChanged(title: CharSequence?) {
                            super.onQueueTitleChanged(title)
                           // Log.e( "lxk", "MediaController.Callback onQueueTitleChanged-title:-${title} ")
                        }
                    }
                }
                controller.registerCallback(mSessionCallback!!)
                controller.sessionToken
            }
        }
    }

    //////////////////////////////////RemoteController获取音乐信息/////////////////////////////////////
    var remoteController: RemoteController? = null
    private fun registerRemoteController() {
        Log.e( "lxk", "registerRemoteController")
        remoteController = RemoteController(this, this)
        val registered: Boolean = try { (getSystemService(AUDIO_SERVICE) as AudioManager).registerRemoteController(remoteController)
        } catch (e: NullPointerException) {
            false
        }
        Log.e( "lxk", "registerRemoteController-----$registered")
        if (registered) {
            try {

                remoteController!!.setArtworkConfiguration(100, 100)
                remoteController!!.setSynchronizationMode(RemoteController.POSITION_SYNCHRONIZATION_CHECK)
                UtilsControl.remoteController = remoteController
            } catch (e: IllegalArgumentException) {
                e.printStackTrace()
            }
        }
    }

    override fun onClientChange(clearing: Boolean) {
        Log.d("lxk", "remoteController:clearing == $clearing")
        if(clearing){
            map.let {
                if(map.isNotEmpty()){
                    map["musicStatus"] = 2
                    Handler(mContext.mainLooper).post {
                        var temp=  map.clone()
                        sendMusicEvent(temp as HashMap<String, Any?>)
                        map.clear()
                        playState=-1

                    }

                }

            }
        }
    }

    override fun onClientPlaybackStateUpdate(state: Int) {
        Log.d("lxk", "state1 == $state")
    }
    var playState = 0
    override fun onClientPlaybackStateUpdate(state: Int, stateChangeTimeMs: Long, currentPosMs: Long, speed: Float) {
        Log.d("lxk", "onClientPlaybackStateUpdate-state == $state")
        if (state == RemoteControlClient.PLAYSTATE_PAUSED || state == RemoteControlClient.PLAYSTATE_PLAYING) {
//            if (playState == state) {
//                Log.i("lxk", "重复playState ==$playState,state==$state")
//            }
            Log.i(
                "lxk",
                "onClientPlaybackStateUpdate--Music--state2 == " + state + "  stateChangeTimeMs == " + stateChangeTimeMs + "currentPosMs == " + currentPosMs + "speed == " + speed
            )

            if (map.isNotEmpty()) {
                map["musicStatus"] = state
                map["curTime"] = currentPosMs / 1000
                Handler(mContext.mainLooper).post { sendMusicEvent(map); }

            }
        }
        playState = state

    }

    override fun onClientTransportControlUpdate(transportControlFlags: Int) {
        Log.d("lxk", "transportControlFlags == $transportControlFlags")
    }
    private var map = HashMap<String, Any?>()
    override fun onClientMetadataUpdate(metadataEditor: RemoteController.MetadataEditor?) {
        val artist = metadataEditor!!.getString(MediaMetadataRetriever.METADATA_KEY_ARTIST, "null")
        val album = metadataEditor.getString(MediaMetadataRetriever.METADATA_KEY_ALBUM, "null")
        val title = metadataEditor.getString(MediaMetadataRetriever.METADATA_KEY_TITLE, "null")
        val duration = metadataEditor.getLong(MediaMetadataRetriever.METADATA_KEY_DURATION, -1)
      //  val defaultCover = BitmapFactory.decodeResource(resources, R.drawable.ic_menu_compass)
       // val bitmap = metadataEditor.getBitmap(RemoteController.MetadataEditor.BITMAP_KEY_ARTWORK, defaultCover)
        if(musicName!=title){
            playState=-1;
        }
        var currentPosMs: Long =
            UtilsControl.getCurrentMs()
        val mapTemp = HashMap<String, Any?>()
        mapTemp["singerName"] = artist
        mapTemp["musicStatus"] = playState
        mapTemp["musicName"] = title
        mapTemp["album"] = album
        musicName=title
      //  mapTemp["musicPackageName"] = musicPackageName
      //  mapTemp["musicAllPackageName"] = musicAllPackageName
        mapTemp["totalTime"] = duration/1000
        mapTemp["curTime"] = currentPosMs/1000
        map=mapTemp

        Log.w("lxk", "onClientMetadataUpdate--Music--artist:$artist, album:$album, title:$title, duration:$duration,duration:$duration,currentPosMs:$currentPosMs:playState:$playState")


    }



    private var mapMusicTemp = HashMap<String, Any?>()
    private var dateTemp :Date?=null
    private fun sendMusicEvent(map: HashMap<String, Any?>) {
        Log.d(TAG, "send sendMusicEvent---Music-- event: $map")


        if (callbackHandle == 0L) {
            callbackHandle = mContext.getSharedPreferences(NotificationListenerPlugin.SHARED_PREFERENCES_KEY, MODE_PRIVATE).getLong(NotificationListenerPlugin.CALLBACK_HANDLE_KEY, 0)
        }

        try {
            val currentTime = Date()
            if(mapMusicTemp !=null   ){
                val toTempString = JSONObject(mapMusicTemp).toString()
                val toMapString = JSONObject(map).toString()
                if(toTempString ==toMapString){
                    if(dateTemp !=null){
                        var i= currentTime.seconds- dateTemp!!.seconds
                        if ( i <1){
                            dateTemp= currentTime
                            mapMusicTemp =map
                            Log.d(TAG, "收到过滤后相同音乐内容--$toMapString")
                            LogUtilHandler.getInstance(this)?.sendMessage("收到过滤后相同音乐内容--$toMapString")
                            return
                        }
                    }
                }
            }
            dateTemp= currentTime
            mapMusicTemp =map
        }catch (e: Exception) {
            e.printStackTrace()
        }

        try {
            mBackgroundChannel.invokeMethod("music_event", listOf(callbackHandle, map))
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }



    private fun previousSong() {
        Log.e("lxk", "previousSong")
        if (UtilsControl.remoteController != null) {
            playState =0
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_UP,
                    KeyEvent.KEYCODE_MEDIA_PREVIOUS
                )
            )
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_DOWN,
                    KeyEvent.KEYCODE_MEDIA_PREVIOUS
                )
            )
            Log.e("lxk", "down==$down----up=$up")
        }else{
            Log.e("lxk", "remoteController = null")
        }
    }

    private fun nextSong() {
        Log.e("lxk", "nextSong")
        if (UtilsControl.remoteController != null) {
            playState =0
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_UP,
                    KeyEvent.KEYCODE_MEDIA_NEXT
                )
            )
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_DOWN,
                    KeyEvent.KEYCODE_MEDIA_NEXT
                )
            )


            Log.e("lxk", "down==$down----up=$up")
        }else{
            Log.e("lxk", "remoteController = null")
        }
    }
    private fun getMusicInfo():String{
        if(mapMusicTemp !=null){
            var currentPosMs: Long = UtilsControl.getCurrentMs()
            mapMusicTemp["curTime"] = currentPosMs/1000
           return JSONObject(mapMusicTemp).toString()
        }
        return ""
    }

     private fun sendMusicInfo(){
         UtilsControl.remoteController?.apply {
            // var currentPosMs: Long = UtilsControl.getCurrentMs()
             if(mapMusicTemp !=null){
                 var currentPosMs: Long = UtilsControl.getCurrentMs()
                 mapMusicTemp["curTime"] = currentPosMs/1000
                 Handler(mContext.mainLooper).post {
                     Log.e("lxk", "getMusicInfo")
                     if (callbackHandle == 0L) {
                         callbackHandle = mContext.getSharedPreferences(NotificationListenerPlugin.SHARED_PREFERENCES_KEY, MODE_PRIVATE).getLong(NotificationListenerPlugin.CALLBACK_HANDLE_KEY, 0)
                     }
                     try {
                         mBackgroundChannel.invokeMethod("music_event", listOf(callbackHandle, mapMusicTemp))
                     } catch (e: Exception) {
                         e.printStackTrace()
                     }
                 }
             }
         }
     }

    private fun pauseMusic() {
        Log.e("lxk", "pauseMusic")
        //var  utilsControl:UtilsControls=UtilsControls();
        if (UtilsControl.remoteController != null) {
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_MEDIA_PAUSE))
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_MEDIA_PAUSE)
            )
            Log.e("lxk", "down==$down----up=$up")
        }else{
            Log.e("lxk", "remoteController = null")

        }
    }

    private fun startPlayMusic() {
        Log.e("lxk", "startPlayMusic")
        if (UtilsControl.remoteController != null) {
            val down: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_UP,
                    KeyEvent.KEYCODE_MEDIA_PLAY
                )
            )
            val up: Boolean = UtilsControl.remoteController.sendMediaKeyEvent(
                KeyEvent(
                    KeyEvent.ACTION_DOWN,
                    KeyEvent.KEYCODE_MEDIA_PLAY
                )
            )
            Log.e("lxk", "down==$down----up=$up")

        }else{
            Log.e("lxk", "remoteController = null")

        }
    }







    /**
     * 检查 Google Play 服务
     */
    private fun onCheckGooglePlayServices() {
        // 验证是否已在此设备上安装并启用Google Play服务，以及此设备上安装的旧版本是否为此客户端所需的版本
        var code = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this)


    }


    private fun setLowVolume() {
        Log.e(TAG,"$sbnID-----setLowVolume")
        // 调低音量
//        audioManager?.adjustStreamVolume(
//            AudioManager.STREAM_MUSIC,
//            AudioManager.ADJUST_LOWER,
//            AudioManager.FLAG_SHOW_UI
//        )

        audioManager?.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_LOWER,AudioManager.FX_FOCUS_NAVIGATION_UP)

    }

    private fun setHighVolume() {
        Log.e(TAG,"$sbnID-----setHighVolume")
        // 调高音量
//        audioManager?.adjustStreamVolume(
//            AudioManager.STREAM_MUSIC,
//            AudioManager.ADJUST_RAISE,
//            AudioManager.FLAG_SHOW_UI
//        )
      //  audioManager?.adjustStreamVolume(AudioManager.STREAM_MUSIC, AudioManager.ADJUST_RAISE,AudioManager.FX_FOCUS_NAVIGATION_UP);
       // we get the current volume from the system
        audioManager.let {
            audioManager?.setStreamVolume(AudioManager.STREAM_MUSIC, 70, 0)
        }

    }

   private fun  getSmsPackage(){

        try {
              smsPackage =Telephony.Sms.getDefaultSmsPackage(this)
            Log.w(TAG,"getDefaultSmsPackage_smsPackage="+smsPackage)
        } catch (e: Exception) {
            e.printStackTrace()
            try {
                val intent = Intent("android.intent.action.SENDTO", Uri.parse("smsto:"))
                val resolveActivity = packageManager.resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY)
                if (resolveActivity != null) {
                    smsPackage = resolveActivity.resolvePackageName
                    Log.w(TAG,"resolveActivity_smsPackage="+smsPackage)
                }
//                val list: List<ApplicationInfo> = getPackageManager().getInstalledApplications(PackageManager.GET_UNINSTALLED_PACKAGES)
//                list.forEach {
//                    println("forEach : ${it.packageName}")
//                    }

            } catch (e: Exception) {
                e.printStackTrace()
            }
            //获取短信包名
            val uri = Uri.parse("smsto:")
            val infoIntent = Intent(Intent.ACTION_SENDTO, uri)
            val res = packageManager.resolveActivity(infoIntent, PackageManager.MATCH_DEFAULT_ONLY)
            if (res != null) {
                Log.e(TAG, "resolveActivity="+res.activityInfo.packageName)
            }
        }



    }





    //一直存活，可能调用多次
    override fun onWorking() {
        Log.e("KeepLive","onWorking()")
        LogUtilHandler.getInstance(this)?.sendMessage("KeepLive_onWorking()")
    }

    //可能调用多次，跟onWorking匹配调用
    override fun onStop() {
        Log.e("KeepLive","onStop()")
        LogUtilHandler.getInstance(this)?.sendMessage("KeepLive_onStop()")
    }

    /** 绑定守护进程*/
    private fun bindGuardService() {
        try {
            val intent = Intent(this, RemoteService::class.java)
            if (!NotificationListenerPlugin.isServiceRunning(applicationContext, RemoteService::class.java)){
                startService(intent)
            }
            bindService(intent, connection, Context.BIND_ABOVE_CLIENT)
        }catch (e:Exception){
            e.printStackTrace()
        }

    }


    private val connection = object : ServiceConnection {

        override fun onServiceDisconnected(name: ComponentName) {
            val remoteService = Intent(applicationContext, RemoteService::class.java)
            applicationContext.startService(remoteService)
            applicationContext.bindService(remoteService, this, Context.BIND_ABOVE_CLIENT)
        }

        override fun onServiceConnected(name: ComponentName, service: IBinder) {
            try {
                val guardAidl = GuardAidl.Stub.asInterface(service)
                val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
                var title="${getApplicationName()} Running"
                guardAidl.wakeUp(
                    title,
                    "",
                    imageId)
            } catch (e: RemoteException) {
                e.printStackTrace()
            }
        }
    }
}

