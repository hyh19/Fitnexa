// GuardAidl.aidl
package com.watchic.app.notification_listener;

interface GuardAidl {
     //相互唤醒服务
     void wakeUp(String title, String discription, int iconRes);
}
