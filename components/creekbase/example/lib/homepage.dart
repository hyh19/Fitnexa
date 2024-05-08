import 'package:creekbase/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:creekbase/creek_base.dart';


class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomepageState();
  }
  
}
class HomepageState extends State<Homepage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(10.0.w);
    print(10.0.h);
    print(10.0.sp);
    print(10.w);




  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
             SizedBox(height: 100.w,),
            Text(S.current.tracking_stress)
          ],
        ),
      ),
    );
  }
  
}