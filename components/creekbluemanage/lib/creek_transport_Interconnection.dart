
part of creek_blue;

///传输层请求和接收


int request = 3;
List<List<List<int>>> waitList = [];
///默认是开始状态
TaskState cmdState = TaskState.start;

class CreekTransport{
  ///返回发送的数据包
  ///head 请求头数据
  ///buffer 序列化对象
   List<List<int>> seedData(HeadModel head,dynamic buffer,{Function(String)? seedCmd,bool recover = false}){
     List<List<int>> seeddata = [];
     List<int> bufData = [];
     List<int> crcData = [];
     //头部长度
     int headlen = 11;
     int buflen = 0;
     int crclen = 2;
     crcData = BlueTool.radix2fromlist(BlueTool.radix16from2(BlueTool.getCRC([]).toString(),byte: 2));

     if(buffer is protocol_device_time_operate ||
         buffer is protocol_bind_operate ||
         buffer is protocol_language_operate ||
         buffer is protocol_health_sync_head ||
         buffer is protocol_sensor_rawdata_tran_operate ||
         buffer is protocol_health_get_data_size_operate ||
         buffer is protocol_user_info_operate ||
         buffer is protocol_alarm_operate ||
         buffer is protocol_disturb_operate ||
         buffer is protocol_screen_brightness_operate ||
         buffer is protocol_health_monitor_operate ||
         buffer is protocol_sleep_monitor_operate ||
         buffer is protocol_drink_water_operate ||
         buffer is protocol_standing_remind_operate ||
         buffer is protocol_menstruation_operate ||
         buffer is protocol_music_control_operate ||
         buffer is protocol_weather_operate ||
         buffer is protocol_find_phone_watch_operate ||
         buffer is protocol_world_time_operate ||
         buffer is protocol_gesture_operate ||
         buffer is protocol_frequent_contacts_operate ||
         buffer is protocol_emergency_contacts_operate ||
         buffer is protocol_message_notify_switch ||
         buffer is protocol_call_switch ||
         buffer is protocol_call_remind ||
         buffer is protocol_call_remind_status ||
         buffer is protocol_exercise_sport_mode_sort ||
         buffer is protocol_exercise_sporting_param_sort ||
         buffer is protocol_exercise_intelligent_recognition ||
         buffer is protocol_schedule_operate ||
         buffer is protocol_quick_card_operate ||
         buffer is protocol_message_notify_data ||
         buffer is protocol_connect_status_operate ||
         buffer is protocol_watch_dial_plate_operate ||
         buffer is protocol_log_tran_operate ||
         buffer is protocol_voice_assistant_operate ||
         buffer is protocol_system_operate ||
         buffer is protocol_exercise_gps_info_reply ||
         buffer is protocol_button_crown_operate ||
         buffer is protocol_wtm_download_operate ||
         buffer is protocol_focus_mode_operate ||
         buffer is protocol_alexa_tran_operate ||
         buffer is protocol_alexa_status_operate ||
         buffer is protocol_alexa_result_operate ||
         buffer is protocol_alexa_alarm_operate ||
         buffer is protocol_alexa_reminder_operate ||
         buffer is protocol_alexa_timer_operate ||
         buffer is protocol_alexa_weather_operate ||
         buffer is protocol_alexa_notify_status_operate ||
         buffer is protocol_app_list_operate ||
         buffer is protocol_event_tracking_operate ||
         buffer is protocol_exercise_heart_rate_zone
     ){
       crcData = [];
       bufData.addAll(buffer.writeToBuffer());
       buflen = buffer.writeToBuffer().length;
     }
     head.length = headlen + buflen;
     List<int> headList = recover == false ? head.modelToUint8List() : head.recoverModelToUint8List();

     List<int> alldata = [];
     alldata.addAll(headList);
     alldata.addAll(bufData);
     alldata.addAll(crcData);
     if(headlen + buflen + crclen <= mtu){
       ///组成发送的数据
       seeddata.add(alldata);
     }else{
        int len = alldata.length;
        int i = 0;   //代表第一包
        do{
          List<int> data = [];
          ///代表第一包
          if(i == 0){
             ///当头的数据+buf数据小于mtu，比如 头加buf正好是179  crc是2 ，crc就要单独一个包
             if(headlen + buflen < mtu){
               List<int> data = [];
               data.addAll(headList);
               data.addAll(bufData);
               seeddata.add(data);
               len = len - headlen - buflen;
             }else{
               List<int> data = [];
               data.addAll(headList);
               data.addAll(bufData.sublist(0,mtu-headlen));
               seeddata.add(data);
               len = len - mtu;
             }
          }else{
            if(len < mtu){
              ///结束包
              List<int> data = [];
              head.cmdType = CmdType.end;
              data.addAll(head.otherModelToUInt8List());
              ///剩下的长度是buf+crc的包 len - 2就是剩下buf的数据的长度
              data.addAll(bufData.sublist(buflen-len,buflen));
              // data.addAll(crcData);
              seeddata.add(data);
              len = 0;
            }else{
              List<int> data = [];
              head.cmdType = CmdType.middle;
              data.addAll(head.otherModelToUInt8List());
              data.addAll(bufData.sublist(buflen-len,buflen-len + mtu));
              len = len - mtu;
              seeddata.add(data);
            }
          }
          i++;
        }while(len != 0);
     }
     List<String> str = [];
     for (var element in seeddata) {
       str.add(BlueTool.list10Tolist16(element).toString());
     }
     CreekLog.info("${head.cmdId.toString()} 发送命令：${str.toString()}");
     CreekLog.info("${head.cmdId.toString()} 发送数据：${buffer.toString()}");
     if (seedCmd != null) {
       seedCmd(str.toString());
     }
     return seeddata;
  }


  ///requset发送设备
   requestDevice(List<List<int>> list,) async{
     addTask(list);
     ///循环发送数据
  }
   ///添加任务
   void addTask(List<List<int>> list) async{
     waitList.add(list);
     if(cmdState == TaskState.start){
       cmdState = TaskState.inProcess;
       doTask();
     }
   }
   ///执行队列任务
   doTask() async{
     await CompleterExt.awaitFor<bool>((run) async {
       List<List<int>>? list = waitList.first;
       for (var e in list) {
         await CompleterExt.awaitFor<bool>((run1) async {
           bool isBool = false;
           int i = 5;
           do{
             if(i == 0){
               isBool = true;
               if(CreekDeviceManger.instance.bluetoothDeviceState == BluetoothDeviceState.connected){
                 if( CreekDeviceManger.instance.bluetoothDevice != null){
                   CreekDeviceManger.instance.bluetoothDevice!.disconnect();
                 }
               }
             }else{
               if(CreekDeviceManger.instance.writeCharacteristic!=null && CreekDeviceManger.instance.bluetoothDeviceState == BluetoothDeviceState.connected){
                 isBool = await  CreekDeviceManger.instance.characteristicToWriteValue(CreekDeviceManger.instance.writeCharacteristic!, e,);
               }else{
                 isBool = true;
               }
               if(!isBool){
                 await Future.delayed(const Duration(milliseconds: 10),() async{});
               }
             }
             i --;
           }while(isBool == false);
           run1(true);
         });
       }
       run(true);
     });
     waitList.remove(waitList.first);
     if(waitList.isEmpty){
       cmdState = TaskState.start;
     }else{
       ///还有任务进行递归操作
       doTask();
     }
   }


}