import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creek_blue_manage_example/pages/device/view/device_widget.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../view/searchview.dart';
import 'device_logic.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';


class DevicePage extends StatelessWidget {
  final logic = Get.put(DeviceLogic());

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DeviceLogic>(builder: (logic){
      Widget widget = Container();
      if((logic.bindDevice?.length ?? 0) != 0){
        BlueDeviceInfo deviceInfo  =  logic.bindDevice![0];
        bool isBool = CreekDeviceManger.instance.queryBlueDeviceState(deviceInfo.device!);

        widget = Container(
          child: Column(
            children: [
              const Text("连接过的设备"),
              ScanResultTile(
                  result: deviceInfo,
                  isBool: isBool,
                  onTap: () async{
                    if(isBool == false){
                      SmartDialog.showLoading();
                      CreekDeviceManger.instance.connectionDevice(deviceInfo!.device!,connectStateListen: (e){
                        if(e == true){
                          BlueTool().saveBluetoothDevice();
                        }else{
                          Fluttertoast.showToast(msg: "连接失败",gravity: ToastGravity.CENTER);
                        }
                        SmartDialog.dismiss();
                        print("连接状态$isBool");
                      });

                    }else{
                      SmartDialog.showLoading();
                      await CreekDeviceManger.instance.disconnectDevice(deviceInfo!.device!);
                      SmartDialog.dismiss();
                    }

                  }
              ),
              const SizedBox(height: 20,),
              const Text("扫描设备"),
            ],
          ),
        ) ;
      }
      return CreekScaffold(
        backgroundColor: Colors.white,
        appBarBackgroundColor: Colors.white,
        title: "Device",
        iconColor: Colors.black,
        body:  Column(
          children: [
            // widget,
            Row(
              children: [
                Searchview(
                  hintText: "输入设备mac地址",
                  leftWidget: const SizedBox(width: 0,),
                  rightWidget:  const SizedBox(width: 0,),
                  input: (e) {
                    logic.search(e);
                  },
                )
              ],
            ),
            Expanded(child:
            Container(
              child: ListView.builder(
                  itemCount: logic.searchDevice?.length ?? 0,
                  itemBuilder: (c,i){
                    BlueDeviceInfo? device = logic.searchDevice?[i];
                    bool isBool = CreekDeviceManger.instance.queryBlueDeviceState(device!.device!);
                   return ScanResultTile(
                      result: device!,
                      isBool: isBool,
                      onTap: () async{
                        if(isBool == false){
                          SmartDialog.showLoading();
                          // CreekDeviceManger.instance.disconnectDevice(device!.device!);
                          CreekDeviceManger.instance.connectionDevice(device!.device!,connectStateListen: (e){
                            SmartDialog.dismiss();
                            if(e == true){
                              BlueTool().saveBluetoothDevice();
                            }else{
                              Fluttertoast.showToast(msg: "连接失败",gravity: ToastGravity.CENTER);
                            }
                            print("连接状态$isBool");
                          });
                        }else{
                          SmartDialog.showLoading();
                           await CreekDeviceManger.instance.disconnectDevice(device!.device!);
                          SmartDialog.dismiss();
                        }

                      }
                    );
                  }),
            ),),
            SizedBox(height: 20.w,),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.w)),
              child:  CreekTextButton(minimumSize: Size(80.w  , 34.w),title: "Refresh",defaultColor: const Color(0xff02a7f0),tapColor: Colors.green,onPressed: (){
                logic.startScan();
              },),
            ),
            SizedBox(height: 100.w,)
          ],
        ) ,
      );
    });
  }
}
