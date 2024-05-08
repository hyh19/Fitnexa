

import 'package:creek_blue_manage/proto/health.pb.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';

class SyncTool{

  static List<sync_type> getSyncType(protocol_health_get_data_size_inquire_reply data){

    List<sync_type> list = [];
    if(data.hearRateSupport == true){
      list.add(sync_type.SYNC_HEART_RATE);
    }
    if(data.stressSupport == true){
      list.add(sync_type.SYNC_STRESS);
    }
    if(data.spo2Support == true){
      list.add(sync_type.SYNC_SPO2);
    }
    if(data.sleepSupport == true){
      list.add(sync_type.SYNC_SLEEP);
    }
    if(data.exerciseSupport == true){
      list.add(sync_type.SYNC_WORKOUT);
    }
    if(data.activitySupport == true){
      list.add(sync_type.SYNC_ACTIVITY);
    }
    if(data.swimSupport == true){
      list.add(sync_type.SYNC_SWIMMING);
    }
    if(data.hrvSupport == true){
      list.add(sync_type.SYNC_HRV);
    }
    if(data.noiseSupport == true){
      list.add(sync_type.SYNC_NOISE);
    }
    if(data.bodyEnergySupport == true){
      list.add(sync_type.SYNC_BODY_ENERGY);
    }
    if(data.respiratoryRateSupport == true){
      list.add(sync_type.SYNC_RESPIRATORY_RATE);
    }
    if(data.skinTemperatureSupport == true){
      list.add(sync_type.SYNC_SKIN_TEMPERATURE);
    }
    return list;

  }
}