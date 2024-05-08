package com.watchic.app.notification_listener.alarmmanager;

import android.content.Context;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 将Log日志写入文件中
 * <p>
 * 使用单例模式是因为要初始化文件存放位置
 * <p>
 */
public class LogToFile {

    private static String TAG = "LogToFile";

    private static String logPath = null;//log日志存放路径

    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss", Locale.US);//日期格式;

    private static Date date = new Date();//因为log日志是使用日期命名的，使用静态成员变量主要是为了在整个程序运行期间只存在一个.log文件中;



    /**
     * 获得文件存储路径
     *
     * @return
     */
    private static String getFilePath(Context context) {

        File dir = new File(context.getDataDir(), "app_flutter/creek");
        if (!dir.exists()) {
            dir.mkdirs();
        }

        return dir.getAbsolutePath();//存当前app的文件夹里
    }



    /**
     * 将log信息写入文件中
     *
     * @param msg
     */
    private static void sendMessage(Context context,  String msg) {
        logPath = getFilePath(context);
        String fileName = logPath + "/log_" + dateFormat.format(new Date()) + ".log";//log日志名，使用时间命名，保证不重复
        String log = dateFormat.format(date) + " "   + msg + "\n";//log日志内容，可以自行定制
        //如果父路径不存在
        File file = new File(logPath);
        if (!file.exists()) {
            file.mkdirs();//创建父路径
        }
        FileOutputStream fos = null;//FileOutputStream会自动调用底层的close()方法，不用关闭
        BufferedWriter bw = null;
        try {

            fos = new FileOutputStream(fileName, true);//这里的第二个参数代表追加还是覆盖，true为追加，flase为覆盖
            bw = new BufferedWriter(new OutputStreamWriter(fos));
            bw.write(log);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bw != null) {
                    bw.close();//关闭缓冲流
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

}