package com.watchic.app.notification_listener.keeplive.service
import android.app.ActivityManager
import android.app.Service
import android.app.job.JobInfo
import android.app.job.JobParameters
import android.app.job.JobScheduler
import android.app.job.JobService
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import com.watchic.app.notification_listener.LogUtilHandler
import com.watchic.app.notification_listener.NotificationListenerPlugin
import com.watchic.app.notification_listener.NotificationsHandlerService
import com.watchic.app.notification_listener.keeplive.config.NotificationUtils
import com.watchic.app.notification_listener.util.Utils

/** JobHandlerService */
class JobHandlerService : JobService() {
    private var  TAG ="lxk-JobHandlerService"
    private var mJobScheduler: JobScheduler? = null

    override fun onStartCommand(intent: Intent, flags: Int, startId: Int): Int {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService()
        }
        val serviceRunning = isServiceRunning(applicationContext, NotificationsHandlerService::class.java.name)
        LogUtilHandler.getInstance(applicationContext)?.sendMessage("JobHandlerService_serviceRunning:${NotificationsHandlerService::class.java.name}:$serviceRunning")
        if (!serviceRunning) {
            startMyService(this)
        }
        startMyTwoService(this);
        startJobScheduler(startId)
        return Service.START_REDELIVER_INTENT
    }

    /** 启动 JobScheduler*/
    private fun startJobScheduler(id: Int) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            mJobScheduler = getSystemService(Context.JOB_SCHEDULER_SERVICE) as JobScheduler
            val builder = JobInfo.Builder(id, ComponentName(packageName, JobHandlerService::class.java.name))
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setMinimumLatency(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS) //执行的最小延迟时间
                builder.setOverrideDeadline(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS)  //执行的最长延时时间
                builder.setMinimumLatency(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS)
                builder.setBackoffCriteria(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS, JobInfo.BACKOFF_POLICY_LINEAR)//线性重试方案
            } else {
                builder.setPeriodic(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS)
            }
            builder.setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY)
            builder.setRequiresCharging(true) // 当插入充电器，执行该任务
            builder.setPersisted(true);//设备重启之后你的任务是否还要继续执行
            mJobScheduler?.schedule(builder.build())
        }

    }

    /**
     * 启动服务
     * @param context Context
     */
    private fun startMyTwoService(context: Context) {
        //启动本地服务
//        val localIntent = Intent(context, LocalService::class.java)
//        startService(localIntent)
        //启动守护进程
        val guardIntent = Intent(context, RemoteService::class.java)

        if ( !isServiceRunning(applicationContext, "$packageName:remote")) {
            startService(guardIntent)
        }


    }
    private fun startMyService(context: Context) {

        //启动本地服务
        val localIntent = Intent(context, NotificationsHandlerService::class.java)
        //启动守护进程
       // val guardIntent = Intent(context, RemoteService::class.java)

       // startService(localIntent)
       // startService(guardIntent)
        internalStartService(context,null,true)
    }
    private fun internalStartService(context: Context, cfg: Utils.PromoteServiceConfig?,isReboot:Boolean): Boolean {

        if (!NotificationsHandlerService.permissionGiven(context)) {
            Log.e(NotificationListenerPlugin.TAG, "can't get permission to start service.")
            return false
        }

        Log.d(NotificationListenerPlugin.TAG, "start service with args: $cfg")

        val cfg = cfg ?: Utils.PromoteServiceConfig.load(context)
        LogUtilHandler.getInstance(context)?.sendMessage("internalStartService---${cfg}")
        // and try to toggle the service to trigger rebind
        with(NotificationsHandlerService) {

            /* Start the notification service once permission has been given. */
            val intent = Intent(context, NotificationsHandlerService::class.java)

            intent.putExtra("isReboot",isReboot)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && cfg.foreground==true) {
                Log.i(NotificationListenerPlugin.TAG, "start service foreground")
                try {
                    context.startForegroundService(intent)
                }catch (e:Exception){
                    context.startService(intent)
                }

            } else {
                Log.i(NotificationListenerPlugin.TAG, "start service normal")
                context.startService(intent)
            }

            // and try to toggle the service to trigger rebind
            disableServiceSettings(context)
            enableServiceSettings(context)

        }

        return true
    }
    private fun startForegroundService() {
        var intent = Intent()
       // var intent = Intent(applicationContext, NotificationClickReceiver::class.java)
      //  intent.action = NotificationClickReceiver.CLICK_NOTIFICATION
        val intentForPackage = packageManager.getLaunchIntentForPackage(packageName)
        if(intentForPackage !=null){
            intent=intentForPackage
        }else{
            val componentName = ComponentName(packageName, "com.watchic.app.watchic.MainActivity")
            componentName.let { intent.setComponent(it) }
        }
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        val imageId = resources.getIdentifier("ic_launcher", "mipmap", packageName)
        var title="${getApplicationName()} Running"
        val notification = NotificationUtils.createNotification(
            this,
            title,
            "",
            imageId,
            intent,true)
        try {
            startForeground(13691, notification)
        }catch (e:Exception){
           e.printStackTrace()
        }

        Log.e(TAG,"启动前台服务 显示通知，开启前台服务()")
    }
    private fun getApplicationName(): String {
        val packageName = packageName
        val packageManager: PackageManager = applicationContext.packageManager
        val applicationInfo = packageManager.getApplicationInfo(packageName, 0)
        return packageManager.getApplicationLabel(applicationInfo).toString()
    }
    /**
     * 启动job
     * @param jobParameters JobParameters
     * @return Boolean
     */
    override fun onStartJob(jobParameters: JobParameters): Boolean {
        Log.e(TAG,"启动前台服务 显示通知，开启前台服务()")
        LogUtilHandler.getInstance(applicationContext)?.sendMessage("onStartJob:${NotificationsHandlerService::class.java.name}")
        if (!isServiceRunnings(applicationContext, NotificationsHandlerService::class.java)){
            startMyService(this)
        }
        if ( !isServiceRunning(applicationContext, "$packageName:remote")) {
            startMyTwoService(this)
        }
        return false
    }

    /**
     * 停止job
     * @param jobParameters JobParameters
     * @return Boolean
     */
    override fun onStopJob(jobParameters: JobParameters): Boolean {
        LogUtilHandler.getInstance(applicationContext)?.sendMessage("onStopJob:${NotificationsHandlerService::class.java.name}")
        if (!isServiceRunnings(applicationContext, NotificationsHandlerService::class.java)){
            startMyService(this)
        }
        if ( !isServiceRunning(applicationContext, "$packageName:remote")) {
            startMyTwoService(this)
        }
        return false
    }
    /**
     * 服务是否正在运行
     * @param ctx Context
     * @param className String
     * @return Boolean
     */
    fun isServiceRunnings(context: Context, serviceClass: Class<*>): Boolean {
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
    /**
     * 服务是否正在运行
     * @param ctx Context
     * @param className String
     * @return Boolean
     */
    private fun isServiceRunning(ctx: Context, className: String): Boolean {
        var isRunning = false
        val activityManager = ctx.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val servicesList = activityManager.getRunningServices(Integer.MAX_VALUE)
        val l = servicesList.iterator()
        while (l.hasNext()) {
            val si = l.next()
            if (className == si.service.className) isRunning = true
        }
        return isRunning
    }


}