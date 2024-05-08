

import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creekhealth/creek_strava.dart';

class StravaUploadTest{

  static uploadSportData() async{
    if(StravaManager().isUploadActivity == false){
      ///查询stava未上传数据
      List<Map<String, dynamic>> listData = await CreekProcedure.getSportStravaUploadStatus();
      print(listData);
      if(listData.isEmpty){
        return;
      }
      StravaManager().isUploadActivity = true;
      StravaManager().hasNewSportData = false;
      for (int i = 0; i < listData.length;) {
        Map<String, dynamic> model = listData[i];
        int sportId = model['id'];
        final res = await StravaManager.configData(model);
        if (res == 201) {

          print('上传了一个 $i');
          i += 1;
          ///成功则下发给SDK 标记已经成功上传
          CreekProcedure.updateDBStravaUploadStatus(sportId);
        }
      }
      StravaManager().isUploadActivity = false;

      uploadSportIfNeed();

    }else{
      StravaManager().hasNewSportData = true;
    }
  }

  static uploadSportIfNeed() {
    if (StravaManager().hasNewSportData) {
      ///读取最新的运动数据
      uploadSportData();
      ///读取完成后 hasNewSportData 为false;
      StravaManager().hasNewSportData = false;
    }
  }


}