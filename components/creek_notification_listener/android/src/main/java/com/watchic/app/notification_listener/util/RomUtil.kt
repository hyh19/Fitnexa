package com.watchic.app.notification_listener.util

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.provider.Settings
import android.util.Log
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader

object RomUtil {
    const val TAG = "lxk"
    // 系统名
    const val ROM_MIUI = "MIUI" // 小米
    const val ROM_EMUI = "EMUI" // 华为
    const val ROM_OPPO = "OPPO" // OPPO
    const val ROM_VIVO = "VIVO" // VIVO
    const val ROM_SMARTISAN = "SMARTISAN"   // 锤子
    const val ROM_FLYME = "FLYME"   // 魅族
    const val ROM_QIKU = "QIKU" // 360

    // 对应系统有的属性
    private const val KEY_VERSION_MIUI = "ro.miui.ui.version.name"
    private const val KEY_VERSION_EMUI = "ro.build.version.emui"
    private const val KEY_VERSION_OPPO = "ro.build.version.opporom"
    private const val KEY_VERSION_SMARTISAN = "ro.smartisan.version"
    private const val KEY_VERSION_VIVO = "ro.vivo.os.version"

    // getprop命令去系统build.prop查找是否有对应属性来判断
    private fun getProp(name: String): String? {
        val line: String?
        var input: BufferedReader? = null
        try {
            val process = Runtime.getRuntime().exec("getprop $name")
            input = BufferedReader(InputStreamReader(process.inputStream), 1024)
            line = input.readLine()
            input.close()
        } catch (ex: IOException) {
            Log.e(TAG, "Unable to read prop $name", ex)
            return null
        } finally {
            if (input != null) {
                try {
                    input.close()
                } catch (e: IOException) {
                    e.printStackTrace()
                }
            }
        }
        return line
    }

    // 判断系统的方法
    private fun check(rom: String): Boolean {
        val tempRom: String?
        if (!getProp(KEY_VERSION_MIUI).isNullOrBlank()) {
            tempRom = ROM_MIUI
        } else if (!getProp(KEY_VERSION_EMUI).isNullOrBlank()) {
            tempRom = ROM_EMUI
        } else if (!getProp(KEY_VERSION_OPPO).isNullOrBlank()) {
            tempRom = ROM_OPPO
        } else if (!getProp(KEY_VERSION_VIVO).isNullOrBlank()) {
            tempRom = ROM_VIVO
        } else if (!getProp(KEY_VERSION_SMARTISAN).isNullOrBlank()) {
            tempRom = ROM_SMARTISAN
        } else {
            val version = Build.DISPLAY
            tempRom = if (version.uppercase().contains(ROM_FLYME)) {
                ROM_FLYME
            } else {
                Build.MANUFACTURER.uppercase()
            }
        }
        return rom == tempRom
    }

    fun isXiaomi() = check(ROM_MIUI)

    fun isHuawei() = check(ROM_EMUI)

    fun isVivo() = check(ROM_VIVO)

    fun isOppo() = check(ROM_OPPO)

    fun isFlyme() = check(ROM_FLYME)

    fun is360() = check(ROM_QIKU) || check("360")

    fun isSmartisan() = check(ROM_SMARTISAN)

    // 打开自启动设置页
    fun openStart(context: Context) {
        if (Build.VERSION.SDK_INT < 23) return
        var intent = Intent()
        var componentName: ComponentName? = null
        when {
            isXiaomi() -> {
                componentName = ComponentName(
                    "com.miui.securitycenter",
                    "com.miui.permcenter.autostart.AutoStartManagementActivity"
                )
            }
            isHuawei() -> {


//                componentName = ComponentName(
//                    "com.huawei.systemmanager",
//                    "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"
//                )

//                componentName = ComponentName(
//                    "com.huawei.systemmanager",
//                    "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"
//                )
                val  sdkVersion= Build.VERSION.SDK_INT;
                //跳自启动管理
                if(sdkVersion >= 29){
                                    componentName = ComponentName(
                    "com.huawei.systemmanager",
                    "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"
                )
                }else if (sdkVersion >= 28){
                    //9:已测试
                    componentName = ComponentName.unflattenFromString("com.huawei.systemmanager/.startupmgr.ui.StartupNormalAppListActivity");//跳自启动管理
                }else if (sdkVersion >= 26){
                    //8：已测试
                    componentName = ComponentName.unflattenFromString("com.huawei.systemmanager/.appcontrol.activity.StartupAppControlActivity");
                }else if (sdkVersion >= 23){
                    //7.6：已测试
                    componentName = ComponentName.unflattenFromString("com.huawei.systemmanager/.startupmgr.ui.StartupNormalAppListActivity");
                }else if (sdkVersion >= 21){
                    //5
                    componentName = ComponentName.unflattenFromString("com.huawei.systemmanager/com.huawei.permissionmanager.ui.MainActivity");
                }

            }
            isOppo() -> {
                componentName = if (Build.VERSION.SDK_INT >= 26) {
                    ComponentName(
                        "com.coloros.safecenter",
                        "com.coloros.safecenter.startupapp.StartupAppListActivity"
                    )
                } else {
                    ComponentName(
                        "com.color.safecenter",
                        "com.color.safecenter.permission.startup.StartupAppListActivity"
                    )
                }
            }
            isVivo() -> {
                componentName = if (Build.VERSION.SDK_INT >= 26) {
                    ComponentName(
                        "com.vivo.permissionmanager",
                        "com.vivo.permissionmanager.activity.PurviewTabActivity"
                    )
                } else {
                    ComponentName(
                        "com.iqoo.secure",
                        "com.iqoo.secure.ui.phoneoptimize.SoftwareManagerActivity"
                    )
                }
            }
            isFlyme() -> {
                componentName = ComponentName.unflattenFromString(
                    "com.meizu.safe/.permission.PermissionMainActivity"
                )
            }

            else -> {

                if (Build.VERSION.SDK_INT >= 9) {
                  //  intent.action = "android.settings.APPLICATION_DETAILS_SETTINGS";
                    intent.action = "com.samsung.android.sm_cn"
                    intent.data = Uri.fromParts("package", context.packageName, null);
                } else if (Build.VERSION.SDK_INT <= 8) {
                    intent.action = Intent.ACTION_VIEW
                    intent.setClassName(
                        "com.android.settings",
                        "com.android.settings.InstalledAppDetails"
                    );
                    intent.putExtra(
                        "com.android.settings.ApplicationPkgName",
                        context.packageName
                    )
                }
            }
        }
        componentName?.let { intent.setComponent(it) }
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        try {
            context.startActivity(intent)
        } catch (e: Exception) {
            e.printStackTrace()
            // 抛出异常的话直接打开设置页
            val intent1 = Intent(Settings.ACTION_SETTINGS)
            intent1.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(intent1)
        }
    }
}
