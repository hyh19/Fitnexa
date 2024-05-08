part of creek_blue;




class SyncCommand extends CreekSyncProtocol{

  ///*****************************************
  ///获取健康支持的类型
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  getHealthType({Function(protocol_health_get_data_size_inquire_reply)? callBack, Function(String p1)? errCallBack}) {
    // TODO: implement getHealthType
    CreekLog.info("获取健康支持类型");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.health;
    protocol_health_get_data_size_operate data = protocol_health_get_data_size_operate();
    data.operate = operate_type.INQUIRE;

    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, data);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag,(e, code) {
       parsingData(e,callBack: (head,model){
         if(model == null){
           if(errCallBack != null){
             errCallBack!("数据错误");
           }
         }else{
           protocol_health_get_data_size_inquire_reply data = model as protocol_health_get_data_size_inquire_reply;
           if(callBack != null){
             callBack(data);
           }
         }
       });
    },errorCallBack: (){
      ///超时
      if(errCallBack != null){
        errCallBack("超时");
      }
    } );
    request.requestDevice(listData);
  }

  ///*****************************************
  ///根据类型获取大小
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  getHealthSize({required List<sync_type> listType,Function(int)? callBack, Function(String p1)? errCallBack}) {
    CreekLog.info("获取健康数据大小");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.health;
    protocol_health_get_data_size_operate operate = protocol_health_get_data_size_operate();
    operate.operate = operate_type.SET;
    List<protocol_health_get_data_size_item> list = [];
    for (var element in listType) {
      protocol_health_get_data_size_item item = protocol_health_get_data_size_item();
      item.type = element;
      ///暂时先默认，，后期补上数据存储在来查时间
      item.dataOffset = 0;
      list.add(item);
    }
    operate.item.addAll(list);

    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, operate);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      parsingData(e,callBack: (head,e){
        if(head.codeType == CodeType.code0){
          protocol_health_get_data_size_set_reply reply = e as protocol_health_get_data_size_set_reply;
          if(reply.errorCode == 0){
            if(callBack != null){
              callBack(reply.totalSize);
            }
          }else{
            if(errCallBack != null){
              errCallBack("错误");
            }
          }
        }else{
          if(errCallBack != null){
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });

    },errorCallBack: (){
      ///超时
      if(errCallBack != null){
        errCallBack("超时");
      }
    } );
    request.requestDevice(listData);
  }

  ///*****************************************
  ///同步数据
  ///syncOperate 是否开始同步
  ///healthType 类型
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  syncHealth({required sync_operate syncOperate,required sync_type syncType,Function(dynamic)? callBack, Function(String p1)? errCallBack}) {
    // TODO: implement getHealthType
    CreekLog.info("${syncOperate == sync_operate.START_SYNC ? "开始同步" : "结束同步"},类型:$syncType");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.healthSync;

    protocol_health_sync_head data = protocol_health_sync_head();
    data.syncOperate = syncOperate;
    data.syncType = syncType;
    ///暂时先默认，，后期补上数据存储在来查时间
    data.dataOffset = 0;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, data);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      parsingData(e,callBack: (head,e){
        if(head.codeType == CodeType.code0){
          if(callBack != null){
            callBack(e);
          }
        }else{
          if(errCallBack != null){
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });
    },outTime: 0,errorCallBack: (){
      ///超时
      CreekLog.info("$syncType同步健康数据超时");
      if(errCallBack != null){
        errCallBack("超时");
      }
    } );
    request.requestDevice(listData);
  }


}



