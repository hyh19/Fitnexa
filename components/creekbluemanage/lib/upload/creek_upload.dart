import 'package:creek_blue_manage/base_err.dart';
import 'package:creek_blue_manage/creek_ble_manger.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_listen.dart';
import 'package:creek_blue_manage/upload/creek_up_errer.dart';
import 'package:creek_blue_manage/upload/creek_upload_model.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';


class CreekUpload {

  ///**************************
  ///文件传输
  ///**************************
  ///多少包为回复
  int size = 15;
  ///上传状态
  UploadState uploadState = UploadState.noStart;
  ///记录重试的次数
  int requestCount = 0;
  ///设置可以重试多少次
  int requestMax = 3;
  ///记录断点续传上次传的进度
  double progressStorage = 0;
  ///取消上传
  bool isCancel = false;

  String _fileName = "";
  List<int> _fileData = [];
  Function? _success;
  Function(int)? _progress;
  Function(int, String)? _failure;


  factory CreekUpload() => _getInstance();
  static CreekUpload get instance => _getInstance();
  static CreekUpload? _instance;

  CreekUpload._internal();
  CountdownTime countdownTime = CountdownTime(count: 3);

  static CreekUpload _getInstance(){
    _instance ??= CreekUpload._internal();
    return _instance!;
  }



  ///*************************
  /// fileNmae 文件名
  /// fileData 文件流
  /// progress 进度 百分比
  /// success 上传完成
  /// errorBack 失败
  ///*************************
  upLoadFile({required String fileName, required List<int> fileData,Function? success,Function(int, String)? failure,Function(int)? progress,}) async {

    if(CreekDeviceManger.instance?.bluetoothDeviceState != BluetoothDeviceState.connected){
      CreekLog.info("上传文件失败 ,蓝牙未连接");
      if (failure != null) {
        failure!(18, CreekUpCode.codeInfo(18));
      }
      return;
    }
    if (uploadState == UploadState.uploading) {
      CreekLog.info("错误：当前上传文件$fileName ，上个文件$_fileName 还未结束");
      if (failure != null) {
        failure!(16, CreekUpCode.codeInfo(16));
      }
      return;
    }
    CreekLog.info("上传的文件名称：$fileName");
    uploadState = UploadState.noStart;
    requestCount = 0;
    progressStorage = 0;
    _fileName = fileName;
    _fileData = fileData;
    _success = success;
    _failure = failure;
    _progress = progress;
    _upLoadFile(fileName: fileName, fileData: fileData);
  }

  _upLoadFile({required String fileName, required List<int> fileData}) async {

    if (uploadState == UploadState.stop){
      ///继续上传
      CreekLog.info("继续上传");
      uploadState = UploadState.uploading;
      queryPosition(fileName,fileData:fileData ?? [], success: (index) {
        ///计算出还未上传的数据包
        List<int> data = fileData!.sublist(index, fileData.length);
        ///计算以上传的百分比
        progressStorage = (index / fileData.length) * 100;
        middleUpFile(restData: data,callBack: (){
          endUpFile();
        });
        return;

      }, errorBack: (code, e) {
        uploadState = UploadState.noStart;
        CreekLog.info("查询偏移量失败");
        if(_failure != null){
          _failure!(18, "响应超时");
        }
      });
    }else{
      startUpFile(callBack: (){
        CreekLog.info("开始成功之后执行下一步");
        middleUpFile(callBack: (){
          endUpFile();
        });
      });
    }
  }
  
  
  ///*******************************
  ///开始帧
  ///*******************************
  void startUpFile({Function()? callBack}) {
    CreekLog.info("开始上传");
    if (_progress != null) {
      _progress!(0);
    }
    uploadState = UploadState.uploading;
    countdownTime.cancelTimer();
    countdownTime = CountdownTime(count: 3);
    countdownTime.start((){
      CreekUploadHead head = CreekUploadHead();
      head.fileProtocol = FileProtocol.start;
      CreekRequestModel creekRequestModel = CreekRequestModel();
      creekRequestModel.head = head;
      creekRequestModel.fileSize = _fileData!.length;
      creekRequestModel.originalSize = _fileData!.length;
      creekRequestModel.replySize = size;
      creekRequestModel.fileName = _fileName;
      ///开始帧
      List<int> startData = creekRequestModel.modelToUint8List();
      CreekLog.info(BlueTool.list10Tolist16(startData).toString());
      CreekUploadNotice.instance.setCallBack(FileProtocol.start,
              (e, code) async {
            if( uploadState == UploadState.noStart){
              CreekLog.info("开始帧回复截停");
              if (_failure != null) {
                _failure!(18, "取消上传");
              }
              return;
            }
            CreekReplyModel creekReplyModel =
            CreekReplyModel().uint8ListToModel(e);
            if (creekReplyModel.code != 0) {
              CreekLog.info("开始帧失败");
              uploadState = UploadState.noStart;
              if (_failure != null) {
                _failure!(creekReplyModel.code,
                    CreekUpCode.codeInfo(creekReplyModel.code));
              }
              return;
            } else {
              ///成功
              if (callBack != null) {
                callBack!();
              }else{
                CreekLog.info("否则为空");
              }
            }
          }, errorCallBack: () {
            if(uploadState == UploadState.noStart){
              if (_failure != null) {
                _failure!(18, "响应超时");
              }
              return;
            }
            if (requestMax > requestCount) {
              ///断点续传
              requestCount++;
              uploadState = UploadState.noStart;
              _upLoadFile(fileData: _fileData,fileName: _fileName);
              return;
            }
            uploadState = UploadState.noStart;
            CreekLog.info("响应超时");
            if (_failure != null) {
              _failure!(18, "响应超时");
            }
          });

      CreekDeviceManger.instance.characteristicToWriteValue(
        CreekDeviceManger.instance.writeCharacteristic!,
        startData,
      );
     }
    );
  }

  ///*******************************
  ///中间帧数据下发
  ///*******************************
  void middleUpFile({List<int>? restData,Function()? callBack}) async {
    if(uploadState == UploadState.stop){
      CreekLog.info("停止上传");
      return;
    }
    if( uploadState == UploadState.noStart){
      if (_failure != null) {
        _failure!(18, "取消上传");
      }
      return;
    }
    ///初始进度为0
    int progressCount = 0;
    ///下发的数据
    List<int>? downData;

    ///当restData不为空的时候，代表是断点续传，，
    if(restData == null){
      downData = _fileData;
    }else{
      downData = restData;
    }
    ///开始帧成功返回的时候开始下发数据

    CreekUploadHead head1 = CreekUploadHead();
    print(mtu);
    head1.fileProtocol = FileProtocol.middle;
    int len = ((downData?.length ?? 0) ~/ mtu) +
        ((downData?.length ?? 0) % mtu == 0 ? 0 : 1);
    int len1 = (len ~/ size) +
        (len % size == 0 ? 0 : 1);
    CreekLog.info("包的大小${downData?.length ?? 0}");
    CreekLog.info("总共要发多少包$len1");
    bool isRequest = true;
    if((downData?.length ?? 0) != 0){
      ///len 计算出需要发送多少个包，可以计算出总包的发送进度
      isRequest = await CompleterExt.awaitFor<bool>((run1) async {
        for (int i = 0; i < len1; i++) {
          if(uploadState != UploadState.uploading){
            CreekLog.info("停止上传");
            return;
          }
          CreekLog.info("第${i + 1}个size包");
          await CompleterExt.awaitFor<bool>((run) async {
            ///监听设备是否有回复
            CreekUploadNotice.instance.setCallBack(FileProtocol.middle,
                    (e, code) {
                      if( uploadState == UploadState.noStart){
                        if (_failure != null) {
                          _failure!(18, "取消上传");
                        }
                        return;
                      }
                  ///成功的话
                  CreekReplyModel creekReplyModel =
                  CreekReplyModel().uint8ListToModel(e);
                  if (creekReplyModel.code != 0) {
                    CreekLog.info("发送帧失败");
                    try{
                      run1(false);
                    }catch(e){
                      CreekLog.info("发送帧失败 回调异常");
                    }
                    return;
                  }
                  ///crc校验
                  List<int> positionData =
                  _fileData!.sublist(0, creekReplyModel.offset);
                  int crc = BlueTool.getCRC(positionData!);
                  CreekLog.info("本地计算校验码${BlueTool.int4ToList(crc)}");
                  CreekLog.info("回复的校验码${BlueTool.int4ToList(creekReplyModel.checkCode)}");
                  if (crc != creekReplyModel.checkCode) {
                    ///crc校验失败，查询接收的偏移量
                    CreekLog.info("crc校验失败，查询接收的偏移量");
                    run1(false);
                  } else {
                    requestCount = 0;
                    progressCount = (((i / len1) * 100).toInt() *  ((100 - progressStorage.toInt()) / 100)).toInt() + progressStorage.toInt();
                    CreekLog.info("上传文件进度$progressCount");
                    if (_progress != null) {
                      _progress!(progressCount);
                    }
                    if(creekReplyModel.offset == _fileData.length){
                      CreekLog.info("数据发送完成");
                      try{
                        run1(true);
                      }catch(e){
                        CreekLog.info("已经结束循环");
                      }
                    }else{
                      run(true);
                    }
                  }
                }, errorCallBack: () {
                  CreekLog.info("响应超时");
                  // uploadState = UploadState.noStart;
                  run1(false);
                });
            bool isStop = false;
            for (int j = 0; j < size; j++) {
              if (isStop) return;
              if( uploadState == UploadState.noStart){
                if (_failure != null) {
                  _failure!(18, "取消上传");
                }
                return;
              }
              if(uploadState != UploadState.uploading) return;
              await CompleterExt.awaitFor<bool>((run2) async {
                head1.index = i * 10 + j;
                CreekRequestMiddleModel creekRequestMiddleModel =
                CreekRequestMiddleModel();
                creekRequestMiddleModel.head = head1;
                if((i*size*mtu + (j+1)*mtu) >= downData!.length){
                  isStop = true;
                  creekRequestMiddleModel.data = downData!.sublist(i*size*mtu + j*mtu,downData!.length);
                  ///帧数据
                  List<int> startData = creekRequestMiddleModel.modelToUint8List();
                  bool isBool = false;
                  int l = 0;
                  do{
                    await CompleterExt.awaitFor<bool>((write) async {
                      if(l == 15){
                        isBool = true;
                        // write(true);
                        return;
                      }
                      if(CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected){
                        isBool = true;
                        if( uploadState == UploadState.noStart){
                          if (_failure != null) {
                            _failure!(18, "取消上传");
                          }
                          return;
                        }
                        isBool = await CreekDeviceManger.instance.characteristicToWriteValue(
                          CreekDeviceManger.instance.writeCharacteristic!,
                          startData,
                        );
                      }
                      l ++;
                      if(isBool == false){
                        Future.delayed(const Duration(milliseconds: 1),() async{
                          write(true);
                        });
                      }else{
                        write(true);
                      }
                    });
                  }while(isBool == false);
                  run1(true);
                }else{
                  creekRequestMiddleModel.data = downData.sublist(i*size*mtu + j*mtu,i*size*mtu + j*mtu + mtu);
                  ///帧数据
                  List<int> startData = creekRequestMiddleModel.modelToUint8List();
                  bool isBool = false;
                  int l = 0;
                  do{
                   await CompleterExt.awaitFor<bool>((write) async{
                     if(l == 15){
                       isBool = true;
                       // write(true);
                       return;
                     }
                     if(CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected){
                       isBool = true;
                       if( uploadState == UploadState.noStart){
                         if (_failure != null) {
                           _failure!(18, "取消上传");
                         }
                         return;
                       }
                       isBool = await CreekDeviceManger.instance.characteristicToWriteValue(
                         CreekDeviceManger.instance.writeCharacteristic!,
                         startData,
                       );
                     }
                     l ++;
                     if(isBool == false){
                       Future.delayed(const Duration(milliseconds: 1),() async{
                         write(true);
                       });
                     }else{
                       write(true);
                     }
                    });
                  }while(isBool == false);
                  run2(true);
                }
              });

            }
          });
        }
      });
    }
    if (isRequest) {
      ///成功
      requestCount = 0;
      CreekUploadNotice.instance.countdownTime?.cancelTimer();
      if (callBack != null) {
        callBack!();
      }
    } else {
      ///失败
      if(uploadState == UploadState.noStart) {
        CreekLog.info("出现错误，中断上传请求");
        if (_failure != null) {
          _failure!(17, "出现错误，中断上传请求");
        }
        return;
      }
      if (requestMax > requestCount) {
        CreekLog.info("中间请求失败");
        ///断点续传
        requestCount++;
        uploadState = UploadState.stop;
        _upLoadFile(fileData: _fileData,fileName: _fileName);
        return;
      }
      requestCount = 0;
      uploadState = UploadState.noStart;
      CreekLog.info("出现错误，中断上传请求");
      if (_failure != null) {
        _failure!(17, "出现错误，中断上传请求");
      }
    }
  }

  ///*******************************
  ///结束帧
  ///*******************************
  void endUpFile() {
    if(uploadState == UploadState.stop){
      CreekLog.info("停止上传");
      return;
    }
    CreekLog.info("结束包开始发送");
    ///结束帧
    CreekUploadHead head2 = CreekUploadHead();
    head2.fileProtocol = FileProtocol.end;
    CreekRequestEndModel creekRequestEndModel = CreekRequestEndModel();
    creekRequestEndModel.head = head2;
    creekRequestEndModel.checkCode =
        BlueTool.radix16from10(BlueTool.getCRC(_fileData!).toRadixString(16));

    ///结束帧数据
    List<int> startData = creekRequestEndModel.modelToUint8List();
    CreekLog.info(BlueTool.list10Tolist16(startData).toString());
    ///监听结束回复
    CreekUploadNotice.instance.setCallBack(FileProtocol.end, (e, code) {
      ///上传状态改成未开始
      uploadState = UploadState.noStart;
      requestCount = 0;
      print("结束帧回复");
      CreekReplyModel creekReplyModel = CreekReplyModel().uint8ListToModel(e);
      if (creekReplyModel.code != 0) {
        CreekLog.info("结束帧失败");
        if (_failure != null) {
          _failure!(
              creekReplyModel.code, CreekUpCode.codeInfo(creekReplyModel.code));
        }
      } else {
        ///成功
        CreekLog.info("上传成功的文件：$_fileName");
        if (_success != null) {
          _success!();
        }
      }
    },errorCallBack: (){
      CreekLog.info("结束帧请求失败");
      if(uploadState == UploadState.noStart){
        CreekLog.info("出现错误，结束命令超时");
        if (_failure != null) {
          _failure!(17, "出现错误，结束命令超时");
        }
        return;
      }
      uploadState = UploadState.noStart;
      if (requestMax > requestCount) {
        ///断点续传
        requestCount++;
        uploadState = UploadState.stop;
        _upLoadFile(fileData: _fileData,fileName: _fileName);
        return;
      }
    });
    CreekDeviceManger.instance.characteristicToWriteValue(
      CreekDeviceManger.instance.writeCharacteristic!,
      startData,
    );
  }
  ///*******************************
  ///查询传输位置
  ///fileData 源数据
  ///Function(int)? offset
  ///*******************************
  queryPosition(String fileName,
      {List<int>? fileData,
        Function? success,
        Function(int)? progressBack,
        Function(int, String)? errorBack}) {
    ///查询
    if( uploadState == UploadState.noStart){
      if (_failure != null) {
        _failure!(18, "取消上传");
      }
      return;
    }
    CreekUploadHead head = CreekUploadHead();
    head.fileProtocol = FileProtocol.queryIndex;
    List<int> data = head.modelToUint8List();
    CreekUploadNotice.instance.setCallBack(FileProtocol.queryIndex, (e, code) {
      if( uploadState == UploadState.noStart){
        if (errorBack != null) {
          errorBack!(18, "取消上传");
        }
        return;
      }
      CreekReplyModel creekReplyModel = CreekReplyModel().uint8ListToModel(e);
      if (creekReplyModel.code != 0) {
        CreekLog.info(CreekUpCode.codeInfo(creekReplyModel.code));
        if (errorBack != null) {
          errorBack(
              creekReplyModel.code, CreekUpCode.codeInfo(creekReplyModel.code));
        }
      } else {
        ///成功
        ///获取固件收到数据的crc校验码
        List<int> positionData =
        fileData!.sublist(0, creekReplyModel.offset);
        int crc = BlueTool.getCRC(positionData!);
        CreekLog.info("本地计算校验码${BlueTool.int4ToList(crc)}");
        CreekLog.info("回复的校验码${BlueTool.int4ToList(creekReplyModel.checkCode)}");
        CreekLog.info("开始校验");
        if (crc != creekReplyModel.checkCode) {
          ///crc校验失败，结束整个上传，需要用户手动触发
          uploadState = UploadState.noStart;
          CreekLog.info("校验失败");
          if (errorBack != null) {
            errorBack(17, "校验失败");
          }
        } else {
          CreekLog.info("校验成功");
          if (success != null) {
            success(creekReplyModel.offset);
          }
        }
      }
    },errorCallBack: (){
      CreekLog.info("上传文件响应超时");
      if(uploadState == UploadState.noStart) {
        if (errorBack != null) {
          errorBack(18, "上传文件响应超时");
        }
        return;
      }
      uploadState = UploadState.noStart;
      if (requestMax > requestCount) {
        ///断点续传
        requestCount++;
        uploadState = UploadState.stop;
        _upLoadFile(fileData: _fileData,fileName: _fileName);
        return;
      }
      if (errorBack != null) {
        errorBack(18, "上传文件响应超时");
      }
    });
    CreekDeviceManger.instance.characteristicToWriteValue(
      CreekDeviceManger.instance.writeCharacteristic!,
      data,
    );


  }
  ///暂停上传
  void stopUp(){
    uploadState = UploadState.stop;
  }
  ///取消上传
  void cancelUp(){
    CreekLog.info("取消上传");
    uploadState = UploadState.noStart;
    CreekUploadNotice.instance.countdownTime?.cancelTimer();
    CreekUploadNotice.instance.countdownTime = null;
    CreekUploadNotice.instance.callBackMap = {};

  }

  // @override
  // void creekBlueConnectionStatusListen(ConnectionStatus status, String? deviceName, int progress) {
  //   // TODO: implement creekBlueConnectionStatusListen
  //   if(status == ConnectionStatus.unconnected){
  //    if(uploadState == UploadState.uploading){
  //      ///蓝牙断线之后如果正在上传中，就暂停上传
  //      CreekLog.info("蓝牙断线 $_fileName: 上传文件暂停上传");
  //      uploadState = UploadState.noStart;
  //      if(_failure != null){
  //        _failure!(16, status.toString());
  //      }
  //      return;
  //    }
  //   }
  //   if(status == ConnectionStatus.connect){
  //     ///蓝牙连接后如果是暂停上传，就继续上传
  //
  //     if( uploadState == UploadState.stop){
  //        uploadState = UploadState.noStart;
  //        ///这里改成由业务层手动处理
  //       // CreekLog.info("蓝牙连接 $_fileName: 继续上次未完成的上传");
  //       // _upLoadFile(fileName: _fileName, fileData: _fileData);
  //     }
  //   }
  // }


}
