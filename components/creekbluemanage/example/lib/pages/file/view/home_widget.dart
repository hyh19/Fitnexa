import 'package:creekbase/creek_base.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  String name;
  Function()? onPressed;
  HomeWidget({Key? key,required this.name,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      decoration: const BoxDecoration(
        color: Colors.black38,
      ),
      height: 60,
      child: Container(
        padding: const EdgeInsets.only(bottom: 4),
        child: Center(
          child: TextButton(onPressed: (){

          }, child:  Text("获取设备信息",style: TextStyle(color: Colors.white,fontSize: 17.sp),)),
        ),
      ),);
  }
}
