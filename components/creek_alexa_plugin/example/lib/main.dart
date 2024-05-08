import 'dart:convert';

import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:creek_alexa_plugin/audio_player_manager.dart';
import 'package:creek_alexa_plugin/directive_handler.dart';
import 'package:creek_alexa_plugin/event_data_handler.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter/services.dart';
import 'package:creek_alexa_plugin/creek_alexa_plugin.dart';
import 'package:creek_alexa_plugin/recognizer_manager.dart';
import 'package:creek_alexa_plugin/alexa_log_page.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _platformVersion = 'Unknown';
  final _creekAlexaPlugin = CreekAlexaPlugin();

  @override
  void initState() {
    super.initState();

    //初始化Alexa
    AuthorizationManager.setupManager(productId, clientId, (){
      //初始化状态时 本地有token 则刷新token
      AuthorizationManager().refreshTokenAction((isSuccess){
        if(isSuccess){
          setState(() {
            isLogin = isSuccess;
          });
        }
        ///需要刷新token 后再去请求下面的内容 异步进行会有可能刷新token后 造成其他接口异步报token失效
        AuthorizationManager.uploadDataToAlexa();
      });
    });
    initPlatformState();

    //状态监听
    AuthorizationManager().onChange.listen((newValue) {

      print('Property changed to: ${newValue.title}');
      if(newValue != AlexaStates.listening){
        if(newValue == AlexaStates.timeOut ){
          _recogniseStr = '没有语音录入 请求超时';
        }
        AudioPlayerManager().stopRecorder();
      }else {
        // AudioPlayerManager().startRecorder(controller.sink);
      }

      alexaState = newValue.title;
      setState(() {

      });

    });



  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _creekAlexaPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
    setState(() {
      _platformVersion = platformVersion;

    });
  }

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(

            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: _getBodyView(context),
        ));
  }

  Widget _getBodyView(BuildContext context) {
    return isLogin ? _getLoginView(context) : _getLogoutView();
  }

  final String clientId = 'amzn1.application-oa2-client.c1f019d104da44ad8f7f6deea2c07679';
  final String productId = 'CWWatchS1Beta';

  // final String clientId = 'amzn1.application-oa2-client.b93b2de2cea74e8d80e3c00f7d7b6e5c';
  // final String productId = 'comCreekElement';

  void _handleLoginAction() async {
    AuthorizationManager.authorizationDevice(context, (isSuccess) {
      if(isSuccess){
        setState(() {
          isLogin = isSuccess;
        });
      }
    });
  }

  void _handleLogoutAction() {
    AuthorizationManager().logout();
    setState(() {
      isLogin = false;
    });
  }

  StreamSubscription<FoodData>? subscription;


  _speechRecognizer(){

    //当前如果状态正在播放录音 这个时候进行语音识别的话 需要向alexa发送一个打断事件
    if(AuthorizationManager().states == AlexaStates.speaking){
      print('语音识别 被打断');
      AudioPlayerManager().stopPlayer();
      RecognizerManager.speechInterruptedAction();
    }

    RecognizerManager.speechRecognizerConnect((strList, audioData, dataResponse,code) {

      if(code > 1){
        print('状态有误');
        return;
      }else if(code == 1){
        print('多转对话');
        AudioPlayerManager().startRecorder(null);
        _speechRecognizer();
      }

      //记录开始播放录音的时间
      AuthorizationManager().states = AlexaStates.speaking;
      AuthorizationManager().model.startSpeechTime = DateTime.now().millisecondsSinceEpoch;
      AudioPlayerManager().playResponse((status) {
        final token =  AuthorizationManager().model.speakToken;
        if(status == 0 && token.isNotEmpty){
          DirectiveHandler.processEvent(EventType.speechFinished, (data){});
        }
        if (AuthorizationManager().model.dialogId.isEmpty){
          AuthorizationManager().states = AlexaStates.free;
        }
      });

      _recogniseStr = utf8.decode(strList);
      setState(() {
      });
      //有可能有数据回调 例如天气 会返回相应的天气数据模型 UI需要显示
      if(dataResponse != null){
        print(dataResponse);
      }
    });
  }



  void _recordVoice(){

    _speechRecognizer();

    final controller = StreamController<FoodData>();
    final sink = controller.sink;
    final stream = controller.stream;

    try {
      subscription?.cancel();
    }catch (error){
      print(error);
    }

    // Subscribe to the stream
    subscription = stream.listen((streamData) {

      try {
        final data = streamData.data;
        final dataList = data?.toList() ?? [];
        if(AuthorizationManager().states == AlexaStates.listening){
          RecognizerManager.speechRecognizer(dataList);
        }

      }catch (error){
        print(error.toString());
      }
    });

    AudioPlayerManager().startRecorder(sink);

  }

  void _synchronizeStates(){
    AuthorizationManager.synchronizeStates();
  }

  void _playTextRecord(){
    AuthorizationManager.createConnection();
  }

  void _update(){
    AuthorizationManager.updateReport('msg');
    // AuthorizationManager.capUpdate();
  }

  void _delete(){
    AuthorizationManager.deleteReport();
  }

  void _changeLanguage(String lanCode){
    DirectiveHandler.processEvent(EventType.localesChanged,reqData:  { 'locales' : [lanCode] },(res){
      print('changeLanguage == $res');
    });
  }

  void _userInactivityReport(){
    Map<String, dynamic> reqData = {
      'inactiveTimeInSeconds' : 3600,
    };

    DirectiveHandler.processEvent(EventType.userInactivityReport, reqData: reqData,  (result){
      print(result);
    });
  }

  void _softwareInfo(){
    /*
     Valid

      "123"
      "8701"
      "20170207"

     Invalid

      "50.3"
      "avs-123.4x"
      "ask.201-(1.23.4-test)"
    */

    Map<String, dynamic> reqData = {
      'firmwareVersion' : '100',
      'softwareVersion' : '100',
    };

    DirectiveHandler.processEvent(EventType.softwareInfo, reqData: reqData,  (result){
      print(result);
    });
  }


  void timeTest(){
    DateTime dateTime = DateFormat("EEEE, MMMM d, y").parse("Thursday, December 7, 2023");
    // detailItem.year = dateTime.year;
    // detailItem.month = dateTime.month;
    // detailItem.day = dateTime.day;

    print('时间  ${dateTime.year} ${dateTime.month} ${dateTime.day} ${dateTime.weekday}');

  }

  void volumeChanged(){
    Map<String, dynamic> reqData = {
      'volume' : 50,
    };

    DirectiveHandler.processEvent(EventType.volumeChanged, reqData: reqData,  (result){
      print(result);
    });
  }

  String alexaState = 'free';

  Widget _getLoginView(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          height: 40,
          child: Text('state: $alexaState'),
        ),
        IconButton(iconSize: 40,onPressed: _recordVoice, icon: const Icon(Icons.record_voice_over)),
        // IconButton(iconSize: 40,onPressed: _stopRecordVoice, icon: const Icon(Icons.record_voice_over_outlined)),
        TextButton(onPressed: timeTest, child: const Text('time')),
        TextButton(onPressed: _synchronizeStates, child: const Text('Synchronize')),
        TextButton(onPressed: _playTextRecord, child: const Text('connection')),
        TextButton(onPressed: _update, child: const Text('addOrUpdate')),
        TextButton(onPressed: _delete, child: const Text('delete')),
        TextButton(onPressed: () {
            _showListPopup(context);
        }, child: const Text('Select language')),
        TextButton(onPressed: () {
          Route route =  MaterialPageRoute(builder: (context) => AlexaLogPage(filePath: (LoggerHandler().file?.path ?? ''), title: 'alexa log',));
          if(!context.mounted) return;
          Navigator.push(context, route);
        }, child: const Text('Show logger')),
        _getMidView(),
        Container(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: _handleLogoutAction,
              child: const Text('Login out'),
            )),
      ],
    );
  }

  String _recogniseStr = 'welcome';

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

  final List<Map<String, String>> _localList = [
    {'key' : 'de-DE', 'value' : '德语'},
    {'key' : 'en-AU', 'value' : '英语(澳大利亚)'},
    {'key' : 'en-CA', 'value' : '英语(加拿大)'},
    {'key' : 'en-GB', 'value' : '英国'},
    {'key' : 'en-IN', 'value' : '英语(印度)'},
    {'key' : 'en-US', 'value' : '英语(美国)'},
    {'key' : 'es-ES', 'value' : '西班牙语'},
    {'key' : 'es-MX', 'value' : '西班牙语(墨西哥)'},
    {'key' : 'es-US', 'value' : '西班牙语(美国)'},
    {'key' : 'fr-CA', 'value' : '法语(加拿大)'},
    {'key' : 'fr-FR', 'value' : '法语'},
    {'key' : 'hi-IN', 'value' : '北印度语'},
    {'key' : 'it-IT', 'value' : '意大利语'},
    {'key' : 'ja-JP', 'value' : '日语'},
    {'key' : 'pt-BR', 'value' : '葡萄牙语(巴西)'},
    {'key' : 'ar-SA', 'value' : '阿拉伯语(沙特阿拉伯)'},
  ];

  Widget _getMidView(){
    return  Expanded(
      child: Center(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              _recogniseStr,
              textAlign: TextAlign.center,
            )
        ),
      ),
    ) ;
  }

  Widget _getLogoutView() {
    return Column(
      children: [
        const Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                'Welcome to Login with Amazon!\nIf this is your first time logging in, you will be asked to give permission for this application to access your profile data.',
                maxLines: 6,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        // Container(
        //     padding: const EdgeInsets.all(10),
        //     child: TextButton(
        //       onPressed: _recConnection,
        //       child: const Text('refresh token'),
        //     )),
        Container(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: _handleLoginAction,
              child: const Text('Login in'),
            )),
      ],
    );
  }
}
