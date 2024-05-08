import 'dart:io';
import 'dart:typed_data';

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
import 'package:sbc/sbc.dart';

class AlexaUpload {
  ///**************************
  ///文件传输
  ///**************************
  ///多少包为回复
  int size = 15;
  int alexaMtu = 57;

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

  int originalSize = 0;

  Function(String)? listenData;

  factory AlexaUpload() => _getInstance();

  static AlexaUpload get instance => _getInstance();
  static AlexaUpload? _instance;

  AlexaUpload._internal();

  CountdownTime countdownTime = CountdownTime(count: 3);

  static AlexaUpload _getInstance() {
    _instance ??= AlexaUpload._internal();
    return _instance!;
  }

  ///*************************
  /// fileNmae 文件名
  /// fileData 文件流
  /// progress 进度 百分比
  /// success 上传完成
  /// errorBack 失败
  ///*************************
  upLoadFile({
    required String fileName,
    required List<int> fileData,
    Function? success,
    Function(int, String)? failure,
    Function(int)? progress,
  }) async {
    if (CreekDeviceManger.instance?.bluetoothDeviceState != BluetoothDeviceState.connected) {
      printLog("上传文件失败 ,蓝牙未连接");
      if (failure != null) {
        failure!(18, CreekUpCode.codeInfo(18));
      }
      return;
    }
    if (uploadState == UploadState.uploading) {
      printLog("错误：当前上传文件$fileName ，上个文件$_fileName 还未结束");
      if (failure != null) {
        failure!(16, CreekUpCode.codeInfo(16));
      }
      return;
    }
    printLog("上传的文件名称：$fileName");

    int len =  fileData.length ~/ 240;
    originalSize = len * 240;
    // List<int> newList = fileData;
    List<int> newList = [];
    for(int i = 0; i < len; i++){
      Uint8List b1 = sbcToPcm(Uint8List.fromList(fileData.sublist(i*240,(i+1)*240)));
      newList.addAll(b1.toList());
    }
    ///根据mtu的大小，还有压缩数据的大小57  计算出一包的数据量是多少
     int mtuLen  = mtu ~/ 57;
     alexaMtu = 57 * mtuLen;
    uploadState = UploadState.noStart;
    requestCount = 0;
    progressStorage = 0;
    _fileName = fileName;
    _fileData = newList;
    _success = success;
    _failure = failure;
    _progress = progress;
    _upLoadFile(fileName: fileName, fileData: newList);
  }

  _upLoadFile({required String fileName, required List<int> fileData}) async {
    startUpFile(callBack: () {
      printLog("开始成功之后执行下一步");
      middleUpFile(callBack: () {
        endUpFile();
      });
    });
  }

  ///*******************************
  ///开始帧
  ///*******************************
  void startUpFile({Function()? callBack}) async{
    printLog("开始上传");
    if (_progress != null) {
      _progress!(0);
    }
    uploadState = UploadState.uploading;
    CreekUploadHead head = CreekUploadHead();
    head.fileProtocol = FileProtocol.noCrcStart;
    CreekAlexaRequestModel creekRequestModel = CreekAlexaRequestModel();
    creekRequestModel.head = head;
    creekRequestModel.fileSize = _fileData!.length;
    creekRequestModel.originalSize = originalSize;
    creekRequestModel.replySize = size;
    creekRequestModel.fileName = _fileName;
    CreekLog.info("fileSize:${_fileData!.length}  originalSize:$originalSize");

    ///开始帧
    List<int> startData = creekRequestModel.modelToUint8List();
    printLog(BlueTool.list10Tolist16(startData).toString());
    CreekUploadNotice.instance.setCallBack(FileProtocol.noCrcStart, (e, code) async {
      printLog(BlueTool.list10Tolist16(e).toString());
      CreekAlexaReplyModel creekReplyModel = CreekAlexaReplyModel().uint8ListToModel(e);
      if (creekReplyModel.code != 0) {
        printLog("开始帧失败");
        uploadState = UploadState.noStart;
        if (_failure != null) {
          _failure!(creekReplyModel.code, CreekUpCode.codeInfo(creekReplyModel.code));
        }
        return;
      } else {
        ///成功
        if (callBack != null) {
          callBack!();
        } else {
          printLog("否则为空");
        }
      }
    }, errorCallBack: (){
      printLog("开始针相应超时");
      uploadState = UploadState.noStart;
      if (_failure != null) {
        _failure!(18, "响应超时");
      }

    },outTime: 5);

    bool isBool = false;
    int l = 0;
    do {
      await CompleterExt.awaitFor<bool>((write) async {
        if (l == 15) {
          isBool = true;
          return;
        }
        if (CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected) {
          isBool = true;
          if (uploadState == UploadState.noStart) {
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
        l++;
        if (isBool == false) {
          Future.delayed(const Duration(milliseconds: 1), () async {
            write(true);
          });
        } else {
          write(true);
        }
      });
    } while (isBool == false);

  }

  ///*******************************
  ///中间帧数据下发
  ///*******************************
  void middleUpFile({List<int>? restData, Function()? callBack}) async {
    if (uploadState == UploadState.noStart) {
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
    if (restData == null) {
      downData = _fileData;
    } else {
      downData = restData;
    }

    ///开始帧成功返回的时候开始下发数据

    CreekUploadHead head1 = CreekUploadHead();
    printLog("pcm上传mtu的值：$alexaMtu");
    head1.fileProtocol = FileProtocol.noCrcMiddle;
    int len = ((downData?.length ?? 0) ~/ alexaMtu) + ((downData?.length ?? 0) % alexaMtu == 0 ? 0 : 1);
    int len1 = (len ~/ size) + (len % size == 0 ? 0 : 1);
    printLog("包的大小${downData?.length ?? 0}");
    printLog("总共要发多少包$len1");
    bool isRequest = true;
    if ((downData?.length ?? 0) != 0) {
      ///len 计算出需要发送多少个包，可以计算出总包的发送进度
      isRequest = await CompleterExt.awaitFor<bool>((run1) async {
        for (int i = 0; i < len1; i++) {
          printLog("第${i + 1}个size包");
          CreekUploadNotice.instance.setCallBack(FileProtocol.noCrcMiddle,
                  (e, code) {
                ///成功的话
                    CreekAlexaReplyModel creekReplyModel =
                    CreekAlexaReplyModel().uint8ListToModel(e);
                if (creekReplyModel.code != 0) {
                  CreekLog.info("Alexa发送帧失败");
                  try{
                    run1(false);
                  }catch(e){
                    CreekLog.info("Alexa发送帧失败 回调异常");
                  }
                  return;
                }
              });
          await CompleterExt.awaitFor<bool>((run) async {
            await  Future.delayed(const Duration(milliseconds: 90),() async{});
          // if(Platform.isIOS){
          //  
          // }else if(Platform.isAndroid){
          //   await  Future.delayed(const Duration(milliseconds: 40),() async{});
          // }
          bool isStop = false;
          for (int j = 0; j < size; j++) {
            if (isStop) return;
            if (uploadState == UploadState.noStart) {
              if (_failure != null) {
                _failure!(18, "取消上传");
              }
              return;
            }
            if (uploadState != UploadState.uploading) return;
            await CompleterExt.awaitFor<bool>((run2) async {
              head1.index = i * 10 + j;
              CreekRequestMiddleModel creekRequestMiddleModel = CreekRequestMiddleModel();
              creekRequestMiddleModel.head = head1;
              if ((i * size * alexaMtu + (j + 1) * alexaMtu) >= downData!.length) {
                isStop = true;
                creekRequestMiddleModel.data = downData!.sublist(i * size * alexaMtu + j * alexaMtu, downData!.length);

                ///帧数据
                List<int> startData = creekRequestMiddleModel.modelToUint8List();
                bool isBool = false;
                int l = 0;
                do {
                  await CompleterExt.awaitFor<bool>((write) async {
                    if (l == 15) {
                      isBool = true;
                      run1(false);
                      return;
                    }
                    if (CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected) {
                      isBool = true;
                      if (uploadState == UploadState.noStart) {
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
                    l++;
                    if (isBool == false) {
                      Future.delayed(const Duration(milliseconds: 1), () async {
                        write(true);
                      });
                    } else {
                      write(true);
                    }
                  });
                } while (isBool == false);
                run1(true);
              } else {
                creekRequestMiddleModel.data = downData.sublist(i * size * alexaMtu + j * alexaMtu, i * size * alexaMtu + j * alexaMtu + alexaMtu);

                ///帧数据
                List<int> startData = creekRequestMiddleModel.modelToUint8List();
                bool isBool = false;
                int l = 0;
                do {
                  await CompleterExt.awaitFor<bool>((write) async {
                    if (l == 15) {
                      isBool = true;
                      run1(false);
                      return;
                    }
                    if (CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected) {
                      isBool = true;
                      if (uploadState == UploadState.noStart) {
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
                    l++;
                    if (isBool == false) {
                      Future.delayed(const Duration(milliseconds: 1), () async {
                        write(true);
                      });
                    } else {
                      write(true);
                    }
                  });
                } while (isBool == false);
                run2(true);
              }
            });
          }
          progressCount = (((i / len1) * 100).toInt() *  ((100 - progressStorage.toInt()) / 100)).toInt() + progressStorage.toInt();
          printLog("上传文件进度$progressCount");
          run(true);
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
      if (uploadState == UploadState.noStart) {
        printLog("出现错误，中断上传请求");
        if (_failure != null) {
          _failure!(17, "出现错误，中断上传请求");
        }
        return;
      }
      requestCount = 0;
      uploadState = UploadState.noStart;
      printLog("出现错误，中断上传请求");
      if (_failure != null) {
        _failure!(17, "出现错误，中断上传请求");
      }
    }
  }

  ///*******************************
  ///结束帧
  ///*******************************
  void endUpFile() async{
    printLog("结束包开始发送");
    ///结束帧
    CreekUploadHead head2 = CreekUploadHead();
    head2.fileProtocol = FileProtocol.noCrcEnd;
    CreekAlexaRequestEndModel creekRequestEndModel = CreekAlexaRequestEndModel();
    creekRequestEndModel.head = head2;


    ///结束帧数据
    List<int> startData = creekRequestEndModel.modelToUint8List();
    printLog(BlueTool.list10Tolist16(startData).toString());

    ///监听结束回复
    CreekUploadNotice.instance.setCallBack(FileProtocol.noCrcEnd, (e, code) {
      printLog(BlueTool.list10Tolist16(e).toString());
      ///上传状态改成未开始
      uploadState = UploadState.noStart;
      requestCount = 0;
      CreekAlexaReplyModel creekReplyModel = CreekAlexaReplyModel().uint8ListToModel(e);
      if (creekReplyModel.code != 0) {
        printLog("结束帧失败");
        if (_failure != null) {
          _failure!(creekReplyModel.code, CreekUpCode.codeInfo(creekReplyModel.code));
        }
      } else {
        ///成功
        printLog("上传成功的文件：$_fileName");
        if (_success != null) {
          _success!();
        }
      }
    }, errorCallBack: () {
      printLog("结束帧相应超时");
      if (_failure != null) {
        _failure!(17, "出现错误，结束命令超时");
      }
      uploadState = UploadState.noStart;
    },outTime: 5);
    bool isBool = false;
    int l = 0;
    do {
      await CompleterExt.awaitFor<bool>((write) async {
        if (l == 15) {
          isBool = true;
          return;
        }
        if (CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected) {
          isBool = true;
          if (uploadState == UploadState.noStart) {
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
        l++;
        if (isBool == false) {
          Future.delayed(const Duration(milliseconds: 1), () async {
            write(true);
          });
        } else {
          write(true);
        }
      });
    } while (isBool == false);
  }


  ///取消上传
  void cancelUp() {
    printLog("取消上传");
    uploadState = UploadState.noStart;
    CreekUploadNotice.instance.countdownTime?.cancelTimer();
    CreekUploadNotice.instance.countdownTime = null;
    CreekUploadNotice.instance.callBackMap = {};
  }
  
  printLog(String info){
    CreekLog.info(info);
    if(listenData != null){
      listenData!(info);
    }
  }
}
