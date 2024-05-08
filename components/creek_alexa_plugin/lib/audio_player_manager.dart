import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:audio_session/audio_session.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_sound_platform_interface/flutter_sound_recorder_platform_interface.dart';
import 'package:path_provider/path_provider.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit_config.dart';

//这个类只是测试需要内容
class AudioPlayerManager {
  //录音
  FlutterSoundRecorder recorderModule = FlutterSoundRecorder();

  //播放
  FlutterSoundPlayer playerModule = FlutterSoundPlayer();

  late StreamSubscription? _recorderSubscription;
  late StreamSubscription? _playerSubscription;

  String _path = '';

  // static _instance，_instance会在编译期被初始化，保证了只被创建一次
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();

  //提供了一个工厂方法来获取该类的实例
  factory AudioPlayerManager() {
    return _instance;
  }

  //标记是否已经初始化录音器和播放器
  bool isRecorderInit = false;
  bool isPlayerInit = false;

  // 通过私有方法_internal()隐藏了构造方法，防止被误创建
  AudioPlayerManager._internal();

  Future _initRecorder() async {
    //开启录音
    await recorderModule.openRecorder();
    isRecorderInit = true;
  }

  Future _initPlayer() async {
    await playerModule.closePlayer();
    await playerModule.openPlayer();
    await playerModule
        .setSubscriptionDuration(const Duration(milliseconds: 10));
    //这块是设置音频，暂时没用到可以不用设置
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:
          AVAudioSessionCategoryOptions.allowBluetooth |
              AVAudioSessionCategoryOptions.defaultToSpeaker,
      avAudioSessionMode: AVAudioSessionMode.spokenAudio,
      avAudioSessionRouteSharingPolicy:
          AVAudioSessionRouteSharingPolicy.defaultPolicy,
      avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
      androidAudioAttributes: const AndroidAudioAttributes(
        contentType: AndroidAudioContentType.speech,
        flags: AndroidAudioFlags.none,
        usage: AndroidAudioUsage.voiceCommunication,
      ),
      androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
      androidWillPauseWhenDucked: true,
    ));
    isPlayerInit = true;
  }

  //获取麦克风权限
  Future<bool> getPermissionStatus() async {
    Permission permission = Permission.microphone;
    //granted 通过，denied 被拒绝，permanentlyDenied 拒绝且不在提示
    PermissionStatus status = await permission.status;
    LoggerHandler.log(LogType.info, '麦克风权限 $status');
    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      requestPermission(permission);
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    } else if (status.isRestricted) {
      requestPermission(permission);
    } else {}
    return false;
  }

  ///申请权限
  void requestPermission(Permission permission) async {
    LoggerHandler.log(LogType.info, '获取手机麦克风权限');
    PermissionStatus status = await permission.request();
    if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  String _resAudioPath = '';

  writeToFile(Uint8List data, Function(bool) callBack) async {
    bool isSuccess = true;
    LoggerHandler.log(LogType.debug, '开始写入音频');
    try {
      Directory tempDir = await getApplicationDocumentsDirectory();
      // var time = DateTime.now().millisecondsSinceEpoch;
      _resAudioPath = '${tempDir.path}/creek/audio${ext[Codec.mp3.index]}';
      File resAudioFlie = File(_resAudioPath);
      resAudioFlie.writeAsBytesSync(data, flush: true);
    } catch (err, stackTrace) {
      isSuccess = false;
      LoggerHandler.log(LogType.error, '写入音频错误', error: err);
      print(err.toString());
    } finally {
      if (isSuccess) {
        LoggerHandler.log(LogType.debug, '成功写入音频');
      }
      callBack(isSuccess);
    }
  }

  //音频数据接收器
  late StreamSink<Food> _sink;

  /// 开始录音
  startRecorder(StreamSink<Food>? sink) async {
    LoggerHandler.log(LogType.debug, '开始录音');
    if (sink != null) {
      _sink = sink;
    }

    try {
      //获取麦克风权限
      await getPermissionStatus().then((value) async {
        if (!value) {
          return;
        }

        if (!isRecorderInit) {
          await _initRecorder();
        }

        //用户允许使用麦克风之后开始录音
        Directory tempDir = await getTemporaryDirectory();
        var time = DateTime.now().millisecondsSinceEpoch;
        String path = '${tempDir.path}/$time${ext[Codec.pcm16.index]}';
        _path = path;
        print('开始录音');
        await recorderModule.startRecorder(
            toStream: _sink,
            codec: Codec.pcm16,
            bitRate: 16,
            numChannels: 1,
            sampleRate: 16000,
            audioSource: AudioSource.microphone);

        /// 监听录音
        // _recorderSubscription = recorderModule.onProgress!.listen((e) {
        //   var date = DateTime.fromMillisecondsSinceEpoch(
        //       e.duration.inMilliseconds,
        //       isUtc: true);
        //
        // // var txt = DateFormat('mm:ss:SS', 'en_GB').format(date);
        // // //设置了最大录音时长
        //
        //   print('second  ${date.second}');
        //
        //   if (date.second >= _maxLength) {
        //     stopRecorder();
        //     print('发送数据 $_path');
        //     print('重新开启录音 $_path');
        //     startRecorder();
        //     // return;
        //   }
        //
        // });
      });
    } catch (err) {
      print(err.toString());
      _cancelRecorderSubscriptions();
    }
  }

  /// 结束录音
  stopRecorder() async {
    LoggerHandler.log(LogType.debug, '结束录音');
    try {
      await recorderModule.stopRecorder();
      _cancelRecorderSubscriptions();
    } catch (err) {
      print(err.toString());
    }
  }

  ///销毁录音
  // void dispose() {
  //   _cancelRecorderSubscriptions();
  //   _releaseFlauto();
  // }

  /// 取消录音监听
  void _cancelRecorderSubscriptions() {
    if (_recorderSubscription != null) {
      _recorderSubscription!.cancel();
      _recorderSubscription = null;
    }
  }

  /// 释放录音
  Future<void> _releaseFlauto() async {
    try {
      await recorderModule.closeRecorder();
      await playerModule.closePlayer();
    } catch (err) {
      print(err.toString());
    }
  }

  /// 判断文件是否存在
  Future<bool> _fileExists(String path) async {
    return await File(path).exists();
  }

  void playRecord(String path, Codec codec) {
    _startPlayer(path, null, codec, (status) {});
  }

  void playResponse(Function(int) callBack) {
    _startPlayer(_resAudioPath, null, Codec.mp3, callBack);
  }

  void playData(List<int>? data, Codec codec) {
    _startPlayer('', data, codec, (status) {});
  }

  ///开始播放，这里做了一个播放状态的回调
  void _startPlayer(
      String path, List<int>? data, Codec codec, Function(int) callBack) async {
    if (!isPlayerInit) {
      await _initPlayer();
    }

    try {
      if (path.contains('http')) {
        await playerModule.startPlayer(
            fromURI: path,
            codec: Codec.mp3,
            sampleRate: 44000,
            whenFinished: () {
              stopPlayer();
              callBack(0);
            });
      } else {
        //判断文件是否存在
        if (await _fileExists(path)) {
          if (playerModule.isPlaying) {
            playerModule.stopPlayer();
          }
          await playerModule.startPlayer(
              fromURI: path,
              codec: codec,
              sampleRate: 16000,
              whenFinished: () {
                stopPlayer();
                callBack(0);
              });
        } else {
          if (playerModule.isPlaying) {
            playerModule.stopPlayer();
          }
          if (data != null && data.isEmpty == false) {
            Uint8List uint8List = Uint8List.fromList(data);
            await playerModule.startPlayer(
                fromDataBuffer: uint8List,
                codec: codec,
                sampleRate: 16000,
                whenFinished: () {
                  stopPlayer();
                  callBack(0);
                });
          }
        }
      }
      //监听播放进度
      _playerSubscription = playerModule.onProgress!.listen((e) {});
      // callBack(1);
    } catch (err) {
      callBack(1);
    }
  }

  void convertMp3ToPcm({Function(List<int>)? callBack}) async {
    FFmpegKitConfig.enableLogCallback();

    // final ffmpegCommand = FFmpegKit.executeAsync([
    //   // '-i', inputPath,      // 输入MP3文件路径
    //   '-f', 's16le',        // 设置输出格式为s16le（16位线性编码）
    //   '-acodec', 'pcm_s16le',  // 设置音频编码为PCM
    //   '-ar', '44100',       // 设置采样率为44100 Hz
    //   '-ac', '2',           // 设置通道数为2（立体声）
    //   // outputPath            // 输出PCM文件路径
    // ]);
    var time = DateTime.now().millisecondsSinceEpoch;

    Directory tempDir = await getApplicationDocumentsDirectory();
    String pcmPath = '${tempDir.path}/output$time${ext[Codec.pcm16.index]}';
    LoggerHandler.log(
        LogType.info, 'MP3 路径$_resAudioPath  文件开始转换PCM文件  $pcmPath');

    await FFmpegKit.execute(
            '-i $_resAudioPath -ar 16000 -ac 1 -f s16le -acodec  pcm_s16le $pcmPath')
        .then((session) async {
      final returnCode = await session.getReturnCode();
      if (ReturnCode.isSuccess(returnCode)) {
        print("FFmpegKit SUCCESS");
        // await player.setFilePath((getRecordModel?.data?[index].filePath?.replaceAll("amr", "wav"))!);
        // player.play();
        LoggerHandler.log(LogType.info, 'pcm转格式成功');
      } else if (ReturnCode.isCancel(returnCode)) {
        print("FFmpegKit CANCEL");
        LoggerHandler.log(LogType.info, 'pcm转格式中断');
      } else {
        print("FFmpegKit 错误");
        LoggerHandler.log(LogType.error, 'pcm转格式错误');
        // ERROR
      }

      try {
        File file = File(pcmPath);
        bool exists = await file.exists();
        if (exists) {
          Uint8List uint8list = await file.readAsBytes();
          if (callBack != null) {
            LoggerHandler.log(LogType.info, 'pcm数据传输');
            callBack(uint8list.toList());
          }
        }
      } catch (error, stackTrace) {
        LoggerHandler.log(LogType.error, 'pcm数据传输错误',
            error: error, stackTrace: stackTrace);
      }

      // // Unique session id created for this execution
      // final sessionId = session.getSessionId();
      // final command = session.getCommand();
      // print("我的指令${command}");
      // final commandArguments = session.getArguments();
      // // State of the execution. Shows whether it is still running or completed
      // final state = await session.getState();
      // final startTime = session.getStartTime();
      // final endTime = await session.getEndTime();
      // final duration = await session.getDuration();
      // // Console output generated for this execution
      // final output = await session.getOutput();
      // // The stack trace if FFmpegKit fails to run a command
      // final failStackTrace = await session.getFailStackTrace();
      // // The list of logs generated for this execution
      // final logs = await session.getLogs();
      // // The list of statistics generated for this execution (only available on FFmpegSession)
      // // final statistics = await (session as FFmpegSession).getStatistics();
    });
  }

  /// 取消播放监听
  void cancelPlayerSubscriptions() {
    if (_playerSubscription != null) {
      _playerSubscription!.cancel();
      _playerSubscription = null;
    }
  }

  /// 结束播放
  void stopPlayer() async {
    try {
      await playerModule.stopPlayer();
      // cancelPlayerSubscriptions();
    } catch (err) {}
  }

  Future<Uint8List?> getAudioDataFromRecord(String path) async {
    return await readWavFileAsUint8List(_path);
  }

  Future<Uint8List?> readWavFileAsUint8List(String filePath) async {
    try {
      File wavFile = File(filePath);
      Uint8List uint8List = await wavFile.readAsBytes();
      return uint8List;
    } catch (e) {
      print('Error reading WAV file: $e');
      return null;
    }
  }
}
