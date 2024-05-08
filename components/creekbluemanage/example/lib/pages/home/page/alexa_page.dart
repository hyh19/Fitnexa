import 'dart:io';
import 'dart:typed_data';

import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:creek_alexa_plugin/directive_handler.dart';
import 'package:creek_alexa_plugin/event_data_handler.dart';
import 'package:creek_blue_manage/alexa/alexa_upload.dart';
import 'package:creek_blue_manage/alexa/creek_alexa_protocol.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:creek_blue_manage_example/base/creek_scaffold.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creektool/creek_tool.dart';
import 'package:creekwidgets/creekwidgets.dart';
import 'package:flutter/material.dart';
import 'package:creek_alexa_plugin/audio_player_manager.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_alexa_plugin/alexa_log_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound_platform_interface/flutter_sound_platform_interface.dart';

class AlexaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlexaPagePageState();
  }
}

class AlexaPagePageState extends State<AlexaPage> {
  List<String> listData = [];
  ScrollController scrollController = ScrollController();
  int a = 1;
  List<int> voiceList = [];

  // final String clientId = 'amzn1.application-oa2-client.b93b2de2cea74e8d80e3c00f7d7b6e5c';
  // final String productId = 'comCreekElement';
  final String clientId =
      'amzn1.application-oa2-client.c1f019d104da44ad8f7f6deea2c07679';
  final String productId = 'CWWatchS1Beta';
  bool isLogin = false;
  String alexaState = 'no connect';

  final List<Map<String, String>> _localList = [
    {'key': 'de-DE', 'value': '德语'},
    {'key': 'en-AU', 'value': '英语(澳大利亚)'},
    {'key': 'en-CA', 'value': '英语(加拿大)'},
    {'key': 'en-GB', 'value': '英国'},
    {'key': 'en-IN', 'value': '英语(印度)'},
    {'key': 'en-US', 'value': '英语(美国)'},
    {'key': 'es-ES', 'value': '西班牙语'},
    {'key': 'es-MX', 'value': '西班牙语(墨西哥)'},
    {'key': 'es-US', 'value': '西班牙语(美国)'},
    {'key': 'fr-CA', 'value': '法语(加拿大)'},
    {'key': 'fr-FR', 'value': '法语'},
    {'key': 'hi-IN', 'value': '北印度语'},
    {'key': 'it-IT', 'value': '意大利语'},
    {'key': 'ja-JP', 'value': '日语'},
    {'key': 'pt-BR', 'value': '葡萄牙语(巴西)'},
    {'key': 'ar-SA', 'value': '阿拉伯语(沙特阿拉伯)'},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CreekDown.instance?.listenData = (e) {
      listData.add(BlueTool.list10Tolist16(e).toString());
      listData.add("\n");
      try {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      } catch (e) {
        CreekLog.info(e.toString());
      }
      setState(() {});
    };

    AlexaUpload.instance?.listenData = (e) {
      listData.add(e.toString());
      listData.add("\n");
      try {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
        setState(() {});
      } catch (e) {
        CreekLog.info(e.toString());
      }
    };

    CreekDown.instance.listenPcmData = (e) {
      voiceList = e;
      // AudioPlayerManager().playData(e, Codec.pcm16);
    };

    // CreekReceiveAlexaServer.instance.listenAlexaServer = (e, audioData, dataResponse, code){
    //   listData.add(e.toString());
    //   listData.add("\n");
    //   setState(() {});
    // };

    alexaInit();
  }

  @override
  void dispose() {
    super.dispose();
    CreekDown.instance.listenPcmData = null;
    AlexaUpload.instance?.listenData = null;
    CreekDown.instance?.listenData = null;
  }

  alexaInit() {
    //初始化Alexa
    AuthorizationManager.setupManager(productId, clientId, () {
      AuthorizationManager().refreshTokenAction((isSuccess) {
        if (isSuccess) {
          ///需要刷新token 后再去请求下面的内容 异步进行会有可能刷新token后 造成其他接口异步报token失效
          AuthorizationManager.uploadDataToAlexa();
          setState(() {
            isLogin = isSuccess;
          });
        }
      });
    });
    //状态监听
    try {
      AuthorizationManager().onChange.listen((newValue) {
        print('Property changed to: ${newValue.title}');
        if (newValue != AlexaStates.listening) {
          if (newValue == AlexaStates.timeOut) {
            print('没有语音录入 请求超时');
          }
        } else {
          // AudioPlayerManager().startRecorder(controller.sink);
        }

        alexaState = newValue.title;
        setState(() {});
      });
    } catch (e) {}
  }

  authorizationDevice() {
    AuthorizationManager.authorizationDevice(context, (isSuccess) {
      if (isSuccess) {
        setState(() {
          isLogin = isSuccess;
        });
      }
    });
  }

  void _changeLanguage(String lanCode) {
    DirectiveHandler.processEvent(EventType.localesChanged, reqData: {
      'locales': [lanCode]
    }, (res) {
      print('changeLanguage == $res');
    });
  }

  void _showListPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select language'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: _localList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_localList[index]['value'] ?? ''),
                  onTap: () {
                    // 处理选择列表项的逻辑
                    print('Selected: ${_localList[index]['value'] ?? ''}');
                    _changeLanguage(_localList[index]['key'] ?? '');
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CreekScaffold(
      backgroundColor: Colors.white,
      appBarBackgroundColor: Colors.white,
      title: "alexa",
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Text("授权状态：$isLogin"),
              Offstage(
                offstage: isLogin,
                child: CreekTextButton(
                  title: "授权",
                  defaultColor: Colors.blue,
                  tapColor: Colors.blue.shade300,
                  onPressed: () {
                    authorizationDevice();
                  },
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Text("Alexa 语音状态：$alexaState"),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CreekTextButton(
                title: "打开mic",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () {
                  alexaProtocol.openMic(
                      isOpen: true,
                      callBack: () {
                        listData.add("打开mic");
                        setState(() {});
                      },
                      errCallBack: () {
                        listData.add("打开mic失败");
                        setState(() {});
                      });
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "关闭mic",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () {
                  alexaProtocol.openMic(
                      isOpen: false,
                      callBack: () {
                        listData.add("关闭mic成功");
                        setState(() {});
                      },
                      errCallBack: () {
                        listData.add("关闭mic失败");
                        setState(() {});
                      });
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CreekTextButton(
                title: "打开喇叭",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () {
                  alexaProtocol.openVoice(
                      isOpen: true,
                      callBack: () {
                        listData.add("打开喇叭成功");
                        setState(() {});
                      },
                      errCallBack: () {
                        listData.add("打开喇叭失败");
                        setState(() {});
                      });
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "关闭喇叭",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () {
                  alexaProtocol.openVoice(
                      isOpen: true,
                      callBack: () {
                        listData.add("关闭喇叭成功");
                        setState(() {});
                      },
                      errCallBack: () {
                        listData.add("关闭喇叭失败");
                        setState(() {});
                      });
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CreekTextButton(
                title: "上传pcm文件",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  // FileManage.instance?.getDirectoryList(fileType: ".pcm").then((value) async {
                  //   List<String> d = value;
                  //   if(d.isNotEmpty){
                  //     d.sort((a,b){
                  //       int v = int.parse(a.replaceAll("-cw01.pcm", "")) ;
                  //       int v2 = int.parse(b.replaceAll("-cw01.pcm", "")) ;
                  //       return v2.compareTo(v);
                  //
                  //     });
                  //     File? file =  await FileManage3.instance?.getLocalFile(d.first);
                  //     Uint8List? a =  await file?.readAsBytes();
                  //     AlexaUpload.instance.cancelUp();
                  //     AlexaUpload.instance.upLoadFile(fileName: "file.pcm", fileData: a!.toList());
                  //   }
                  //
                  // });

                  ByteData data =
                      await rootBundle.load('assets/images/input3.pcm');
                  AlexaUpload.instance.cancelUp();
                  AlexaUpload.instance.upLoadFile(
                      fileName: "file.pcm",
                      fileData: data.buffer.asUint8List());
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "播放上传的音乐",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  ByteData data =
                      await rootBundle.load('assets/images/input.pcm');
                  AudioPlayerManager().playData(
                      data.buffer.asUint8List().toList(), Codec.pcm16);
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CreekTextButton(
                title: "play",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  // File? file = await FileManage3.instance?.getLocalFile("2023113174058-cw01.pcm");
                  // Uint8List? a = await file?.readAsBytes();
                  // AudioPlayerManager().playData(a, Codec.pcm16);
                  AudioPlayerManager().playData(voiceList, Codec.pcm16);
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "logout",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  AuthorizationManager().logout();
                  setState(() {
                    isLogin = false;
                  });
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CreekTextButton(
                title: "发送状态",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  listData.add("发送状态");
                  protocol_alexa_status_operate operate =
                      protocol_alexa_status_operate();
                  operate.noticeType = alexa_noitce_type.ALEXA_NOTICE_REQUEST;
                  operate.statusType = alexa_status_type.ALEXA_STATUS_SUCCESS;
                  alexaProtocol.setAlexaStatus(
                      operate: operate,
                      callBack: () {
                        listData.add("发送状态成功");
                      },
                      errCallBack: () {
                        listData.add("发送状态失败");
                      });
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "发送内容",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  protocol_alexa_result_operate operate =
                      protocol_alexa_result_operate();
                  operate.isQuestion = false;
                  operate.content = "hello".codeUnits;
                  alexaProtocol.setAlexaContent(
                      operate: operate,
                      callBack: () {
                        listData.add("发送内容成功");
                      },
                      errCallBack: () {
                        listData.add("发送内容失败");
                      });
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              CreekTextButton(
                title: "alexa log",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  Route route = MaterialPageRoute(
                      builder: (context) => AlexaLogPage(
                          filePath: (LoggerHandler().file?.path ?? ''),
                          title: 'alexa log'));
                  if (!context.mounted) return;
                  Navigator.push(context, route);
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "sdk log",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  Route route = MaterialPageRoute(
                      builder: (context) => AlexaLogPage(
                          filePath:
                              "${DateTime.now().toString().substring(0, 10).replaceAll("-", "")}_log.txt"));
                  if (!context.mounted) return;
                  Navigator.push(context, route);
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CreekTextButton(
                title: "select language",
                defaultColor: Colors.blue,
                tapColor: Colors.blue.shade300,
                onPressed: () async {
                  _showListPopup(context);
                },
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
          Expanded(
            child: Container(
                color: Colors.black12,
                child: ListView.builder(
                    controller: scrollController,
                    itemCount: listData.length,
                    itemBuilder: (c, i) {
                      return Text(listData[i]);
                    })),
          ),
          SizedBox(
            height: CreekScreen.getInstance().bottomBarHeight,
          )
        ],
      ),
    );
  }
}
