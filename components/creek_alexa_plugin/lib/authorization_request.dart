import 'dart:async';
import 'dart:typed_data';
import 'package:creek_alexa_plugin/data_resolver.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';
import 'package:creek_alexa_plugin/device_info_handler.dart';
import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:http2/http2.dart';
import 'package:creek_alexa_plugin/event_data_handler.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';

class Response {
  final int statusCode;
  final List<Map<String, dynamic>> body;

  const Response(this.statusCode, this.body);
}

enum RequestMethod {
  get,
  post,
  put,
  delete,
}

const deviceAuthUrl = 'https://api.amazon.com/auth/O2/create/codepair';
const tokenUrl = 'https://api.amazon.com/auth/O2/token';
const eventUrl = 'https://avs-alexa-na.amazon.com/v20160207/events';
const directivesUrl = 'https://avs-alexa-na.amazon.com/v20160207/directives';
const capabilitiesUrl =
    'https://api.amazonalexa.com/v1/devices/@self/capabilities';
const alarmsBaseUrl = 'https://api.amazonalexa.com/v1/alerts/alarms';

late ClientTransportConnection transportState;

class AuthorizationRequest {
  //http 1.X  请求封装
  static Future<(dynamic, dynamic)> httpRequest(
      String url,
      RequestMethod method,
      Map<String, dynamic> params,
      Options options) async {
    dynamic data = {};
    LoggerHandler.log(
        LogType.info, 'httpRequest $url params  ${params.toString()}');
    print('params  ${params.toString()}');
    try {
      final dio = Dio();
      if (method == RequestMethod.post) {
        final response = await dio.post(url, data: params, options: options);
        LoggerHandler.log(
            LogType.info, 'httpRequest $url response  ${response.toString()}');
        if (response.statusCode == 200 || response.statusCode == 204) {
          data = jsonDecode(response.toString());
        } else {
          LoggerHandler.log(LogType.error,
              'httpRequest $url code:${response.statusCode} params: ${params.toString()}',
              error: response.data);
          print('httpRequest $url  status code: ${response.statusCode}');
          return (data, response.statusCode);
        }
      } else if (method == RequestMethod.get) {
        final response = await dio.get(url, data: null, options: options);
        LoggerHandler.log(
            LogType.info, 'httpRequest $url response  ${response.toString()}');
        if (response.statusCode == 200 || response.statusCode == 204) {
          data = jsonDecode(response.toString());
        } else {
          LoggerHandler.log(LogType.error,
              'httpRequest $url code:${response.statusCode} params: ${params.toString()}',
              error: response.data);
          print('httpRequest $url  status code: ${response.statusCode}');
          return (data, response.statusCode);
        }
      } else if (method == RequestMethod.put) {
        final response = await dio.put(url, data: params, options: options);
        LoggerHandler.log(
            LogType.info, 'httpRequest $url response  ${response.toString()}');
        if (response.statusCode == 200 || response.statusCode == 204) {
          data = response;
        } else {
          LoggerHandler.log(LogType.error,
              'httpRequest $url code:${response.statusCode} params: ${params.toString()}',
              error: response.data);
          print('httpRequest $url  status code: ${response.statusCode}');
          return (data, response.statusCode);
        }
      } else if (method == RequestMethod.delete) {
        final response = await dio.delete(url, options: options);
        LoggerHandler.log(
            LogType.info, 'httpRequest $url response  ${response.toString()}');
        if (response.statusCode == 200 || response.statusCode == 204) {
          data = response;
        } else {
          LoggerHandler.log(LogType.error,
              'httpRequest $url code:${response.statusCode} params: ${params.toString()}',
              error: response.data);
          print('httpRequest $url  status code: ${response.statusCode}');
          return (data, response.statusCode);
        }
      }

      return (data, null);
    } catch (error, stackTrace) {
      // LoggerHandler.log(LogType.error, 'httpRequest $url params: ${params.toString()}', error:error, stackTrace: stackTrace);
      return (data, error);
    }
  }

  static ClientTransportStream? recStream;

  static Future<(int, dynamic)> recognizerConnect(String url,
      RequestMethod method, List<int>? body, List<Header> reqHeaders) async {
    try {
      final uri = Uri.parse(url);
      LoggerHandler.log(LogType.info, '语音识别连接发送');

      var transport = ClientTransportConnection.viaSocket(
        await SecureSocket.connect(
          uri.host,
          uri.port,
          supportedProtocols: ['h2'],
          timeout: const Duration(seconds: 60),
        ),
      );
      final methodString = method == RequestMethod.post ? 'POST' : 'GET';
      final headers = [
        Header.ascii(':method', methodString),
        Header.ascii(':path', uri.path),
        Header.ascii(':scheme', uri.scheme),
        Header.ascii(':authority', uri.host),
      ];
      headers.addAll(reqHeaders);

      transport.onActiveStateChanged = ((isAct) async {
        if (isAct) {
          AuthorizationManager().states = AlexaStates.listening;
          print('链接建立成功');
          LoggerHandler.log(LogType.info, '语音识别连接');
        } else {
          recStream = null;
          print('链接断开');
          LoggerHandler.log(LogType.info, '语音识别断开');
          transport.terminate(204);
        }
      });

      var stream = transport.makeRequest(
        headers,
        endStream: body == null,
      );

      recStream = stream;
      if (body != null) {
        stream.outgoingMessages.add(DataStreamMessage(body, endStream: false));
      }

      var status = 0;
      List<int> msg = [];
      Map<String, dynamic> responseHeader = {};

      stream.incomingMessages.timeout(const Duration(seconds: 20),
          onTimeout: (sink) {
        stream.terminate();
        LoggerHandler.log(LogType.info, '语音识别超时');
        AuthorizationManager().states = AlexaStates.timeOut;
      }).listen(
          (message) {
            if (message is HeadersStreamMessage) {
              for (var header in message.headers) {
                var name = utf8.decode(header.name);
                var value = utf8.decode(header.value);
                responseHeader[name] = value;
                print('reconi Header: $name: $value');
                if (name == ':status') {
                  status = int.parse(value);
                  if (status == 400) {
                    stream.terminate();
                    recStream = null;
                    transport.terminate(status);
                  }
                }
              }
            } else if (message is DataStreamMessage) {
              msg = [...msg, ...message.bytes];
              String resp = String.fromCharCodes(message.bytes);
              print(
                  'reslen == ${message.bytes.length} recognice resp ===== $resp ');
              if (resp
                  .contains(DirectiveType.requestProcessingCompleted.title)) {
                stream.terminate();
                transport.terminate(200);
                recStream = null;
              } else if (resp
                  .contains(DirectiveType.requestProcessingStarted.title)) {
                AuthorizationManager().states = AlexaStates.thinking;
              }
            } else {
              String bodyText = String.fromCharCodes(body ?? []);
              LoggerHandler.log(
                  LogType.error, 'recognizerConnect  params: $bodyText',
                  error: message);
              print('other Message Type == ${message.toString()}');
            }
          },
          onDone: () {},
          onError: (error, stackTrace) {
            String bodyText = String.fromCharCodes(body ?? []);
            LoggerHandler.log(
                LogType.error, 'recognizerConnect params: $bodyText',
                error: error, stackTrace: stackTrace);
          });

      String responseText = String.fromCharCodes(msg);
      print('recognizerConnect ${uri.path} response: $responseText');
      LoggerHandler.log(LogType.info,
          'recognizerConnect header == $responseHeader data === $responseText');
      await transport.finish();
      return (status, msg);
    } catch (error, stackTrace) {
      recStream = null;
      LoggerHandler.log(LogType.error, 'recognizerConnect Error',
          error: error, stackTrace: stackTrace);
      return (0, []);
    }
  }

  static downChannelPingAction(Function() callback) async {
    try {
      await transportState.ping();
    } catch (error) {
      LoggerHandler.log(LogType.info, 'downChannelPing 断开');
      callback();
    }
  }

  //http 2.0请求封装
  static Future<(int, dynamic)> http2Request(
      String url,
      RequestMethod method,
      List<int>? body,
      List<Header> reqHeaders,
      String connectName,
      Function(List<Map<String, dynamic>>) callback) async {
    try {
      final uri = Uri.parse(url);
      var transport = ClientTransportConnection.viaSocket(
        await SecureSocket.connect(
          uri.host,
          uri.port,
          supportedProtocols: ['h2'],
          timeout: const Duration(seconds: 10),
        ),
      );

      if(connectName == EventType.downChannel.title){
        transport.onPingReceived.listen((event) {
           LoggerHandler.log(LogType.info, 'downChannelPing $event');
        });
      }

      bool isEndStream = body == null;
      //如果是下行流则 需要缓存起来
      if (connectName == EventType.downChannel.title) {
        transportState = transport;
        isEndStream = false;
      }

      final methodString = method == RequestMethod.post ? 'POST' : 'GET';
      final headers = [
        Header.ascii(':method', methodString),
        Header.ascii(':path', uri.path),
        Header.ascii(':scheme', uri.scheme),
        Header.ascii(':authority', uri.host),
      ];
      headers.addAll(reqHeaders);
      var stream = transport.makeRequest(
        headers,
        endStream: isEndStream,
      );

      if (body != null) {
        stream.outgoingMessages.add(DataStreamMessage(body, endStream: true));
      }

      var status = 0;
      List<int> msg = [];
      Map<String, dynamic> responseHeader = {};
      stream.incomingMessages.listen((message) {
        if (message is HeadersStreamMessage) {
          for (var header in message.headers) {
            var name = utf8.decode(header.name);
            var value = utf8.decode(header.value);
            responseHeader[name] = value;
            print('$connectName Header: $name: $value');
            if (name == ':status') {
              status = int.parse(value);
            }
          }
        } else if (message is DataStreamMessage) {
          msg = [...msg, ...message.bytes];
          if (connectName == EventType.downChannel.title) {
            final responseData = String.fromCharCodes(message.bytes);
            print('$connectName Received data: $responseData');
            LoggerHandler.log(LogType.info, '下行流收到事件数据 $responseData');
            print('下行流收到事件数据 $responseData');
            if (responseData.contains('directive')) {
              transport.terminate();
            }
          }
        } else {
          String bodyText = String.fromCharCodes(body ?? []);
          LoggerHandler.log(LogType.error, '$connectName  params: $bodyText',
              error: message);
          print('$connectName other Message Type == ${message.toString()}');
        }
      }, onDone: () {
        // if(connectName == EventType.downChannel.title){
        //   LoggerHandler.log(LogType.info, '$connectName 连接断开');
        // }
      }, onError: (error, stackTrace) {
        // String bodyText = String.fromCharCodes(body ?? []);
        // LoggerHandler.log(LogType.error, '$connectName params: $bodyText', error:error, stackTrace: stackTrace);
        print('$connectName error: ${error.toString()}');
      });

      await transport.finish();
      String responseText = String.fromCharCodes(msg);
      print('$connectName  response: $responseText');
      LoggerHandler.log(LogType.info,
          '$connectName header == ${responseHeader.toString()} xxx data === $responseText');
      return (status, msg);
    } catch (error, stackTrace) {
      LoggerHandler.log(LogType.error, '$connectName Error',
          error: error, stackTrace: stackTrace);
      return (0, []);
    }
  }

  //设备授权
  static Future<(dynamic, dynamic)> deviceAuthorization() async {
    final deviceId = await DeviceInfoHandler.getDeviceId();
    final productId = AuthorizationManager().productId;
    final clientId = AuthorizationManager().clientId;
    Map<String, dynamic> scopeData = {};
    scopeData['alexa:all'] = {
      'productID': productId,
      'productInstanceAttributes': {'deviceSerialNumber': deviceId}
    };
    Map<String, dynamic> params = {};
    params['client_id'] = clientId;
    params['scope'] = 'alexa:all';
    params['scope_data'] = scopeData;
    params['response_type'] = 'device_code';
    Options options = Options(contentType: 'application/x-www-form-urlencoded');
    final res =
        await httpRequest(deviceAuthUrl, RequestMethod.post, params, options);
    return res;
  }

  //请求令牌
  static Future<(dynamic, dynamic)> requestDeviceTokens(
      String deviceCode, String userCode) async {
    Map<String, dynamic> params = {};
    params['device_code'] = deviceCode;
    params['user_code'] = userCode;
    params['grant_type'] = 'device_code';
    Options options = Options(contentType: 'application/x-www-form-urlencoded');
    final res =
        await httpRequest(tokenUrl, RequestMethod.post, params, options);
    return res;
  }

  //刷新令牌
  static Future<(dynamic, dynamic)> refreshDeviceToken(
      String refreshToken, String clientId) async {
    Map<String, dynamic> params = {};
    params['refresh_token'] = refreshToken;
    params['client_id'] = clientId;
    params['grant_type'] = 'refresh_token';
    Options options = Options(contentType: 'application/x-www-form-urlencoded');
    final res =
        await httpRequest(tokenUrl, RequestMethod.post, params, options);
    return res;
  }

  //查询支持国家
  static Future<dynamic> supportedCountries() async {
    Options options = Options(contentType: 'application/json');
    final res = await httpRequest(
        'https://api.fe.amazonalexa.com/v1/avs/supportedCountries',
        RequestMethod.get,
        {},
        options);
    return res;
  }

  static Future<(dynamic, dynamic)> setCapabilities(String accessToken) async {
    Map<String, dynamic> params = {};
    List<Map<String, String>> capabilities = [
      {
        "interface": "InteractionModel",
        "type": "AlexaInterface",
        "version": "1.2"
      },
      {"interface": "Alexa", "type": "AlexaInterface", "version": "3"},
      {
        "interface": "Alexa.ApiGateway",
        "type": "AlexaInterface",
        "version": "1.0"
      },
      {
        "interface": "SpeechSynthesizer",
        "type": "AlexaInterface",
        "version": "1.3"
      },
      {"interface": "AudioPlayer", "type": "AlexaInterface", "version": "1.5"},
      {
        "interface": "SpeechRecognizer",
        "type": "AlexaInterface",
        "version": "2.3"
      },
      {
        "interface": "TemplateRuntime",
        "type": "AlexaInterface",
        "version": "1.0"
      },
      {"interface": "Speaker", "type": "AlexaInterface", "version": "1.0"},
    ];

    params["capabilities"] = capabilities;
    params["envelopeVersion"] = "20160207";

    Options options = Options(
        contentType: 'application/json',
        headers: {'x-amz-access-token': accessToken});
    final res =
        await httpRequest(capabilitiesUrl, RequestMethod.put, params, options);
    return res;
  }

  static Future<(dynamic, dynamic)> deleteOneAlarm(
      String accessToken, String alertToken) async {
    Options options = Options(
        contentType: 'application/json',
        headers: {'Authorization': accessToken});
    final url = '$alarmsBaseUrl/$alertToken/cancel';
    print(url);
    final res = await httpRequest(url, RequestMethod.delete, {}, options);
    return res;
  }

  //下行流 downchannel streams 需要先创建链接
  static Future<(int, dynamic)> createConnection(
      String accessToken, Function(List<Map<String, dynamic>>) callback) async {
    final reqHeader = [
      Header.ascii('authorization', 'Bearer $accessToken'),
    ];
    final res = await http2Request(directivesUrl, RequestMethod.get, null,
        reqHeader, EventType.downChannel.title, (da) {});
    final status = res.$1;
    if (status == 200) {
      LoggerHandler.log(LogType.info, '下行流数据返回');
      String content = String.fromCharCodes(res.$2);
      LoggerHandler.log(LogType.info, '下行流数据识别结果 $content');
      DataResolver.extractContent(res.$2, (mapList) {
        callback(mapList);
      });
    } else {
      String resp = String.fromCharCodes(res.$2);
      LoggerHandler.log(LogType.error, '下行流失败 $resp');
    }
    return res;
  }

  //创建链接成功后 同步设备状态
  static Future<(int, dynamic)> synchronizeStates() async {
    String accessToken = AuthorizationManager().accessToken;
    final body = await _getSynchronizingBody(accessToken);
    final reqHeader = [
      Header.ascii('authorization', 'Bearer $accessToken'),
      Header.ascii(
          'content-type', 'multipart/form-data; boundary=BOUNDARY_TERM_HERE'),
    ];
    final res = await http2Request(eventUrl, RequestMethod.post, body,
        reqHeader, 'synchronizeStates', (data) {});
    return res;
  }

  //维持链接
  static Future<(int, dynamic)> ping(String accessToken) async {
    final reqHeaders = [
      Header.ascii('authorization', 'Bearer $accessToken'),
    ];
    final res = await http2Request('https://avs-alexa-na.amazon.com/ping',
        RequestMethod.get, null, reqHeaders, 'ping', (data) {});
    return res;
  }

  //创建语音http2链接
  static Future createSpeechRecognizerConnect(
      String accessToken, Function(Response) callback) async {
    isSpeechRecognizerStop = false;
    final body = await _getSpeechRecognizerBody([]);
    final reqHeader = [
      Header.ascii('authorization', 'Bearer $accessToken'),
      Header.ascii(
          'content-type', 'multipart/form-data; boundary=BOUNDARY_TERM_HERE'),
    ];

    final res =
        await recognizerConnect(eventUrl, RequestMethod.post, body, reqHeader);
    LoggerHandler.log(LogType.info, '语音识别结果  $res');
    final status = res.$1;
    if (status == 200) {
      LoggerHandler.log(LogType.info, '语音识别成功');
      String content = String.fromCharCodes(res.$2);
      LoggerHandler.log(LogType.info, '语音识别结果 $content');
      DataResolver.extractContent(res.$2, (mapList) {
        callback(Response(res.$1, mapList));
      });
    } else {
      String resp = String.fromCharCodes(res.$2);
      LoggerHandler.log(LogType.error, '语音识别失败 $resp');
      callback(Response(res.$1, []));
    }
  }

  static bool isSpeechRecognizerStop = false;

  //语音识别持续传输
  static void speechRecognizer(List<int> audioData) {
    LoggerHandler.log(LogType.info,
        '收到语音数据  判断isSpeechRecognizerStop $isSpeechRecognizerStop');
    try {
      if (!isSpeechRecognizerStop) {
        recStream?.outgoingMessages
            .add(DataStreamMessage(audioData, endStream: false));
      }
    } catch (error, stackTrace) {
      isSpeechRecognizerStop = true;
      LoggerHandler.log(LogType.error, '语音识别 流传输错误',
          error: error, stackTrace: stackTrace);
      recStream = null;
    }
  }

  /*
  token : 对话token 或者计时器token
  accessToken : 授权token
  other : 额外的参数
   */
  static Future<(int, dynamic)> sendEvent(EventType eventName,
      EventNamespaceType namespace, String? token, String accessToken,
      {Map<String, dynamic>? other}) async {
    Map<String, dynamic> map = await EventHandler.getEventMap(
        eventName, namespace, token ?? '',
        other: other);
    LoggerHandler.log(LogType.event, '${eventName.title} == ${map.toString()}');
    print('${eventName.title} == ${map.toString()}');
    final body = await _getEventBody(map);
    final reqHeader = [
      Header.ascii('authorization', 'Bearer $accessToken'),
      Header.ascii(
          'content-type', 'multipart/form-data; boundary=BOUNDARY_TERM_HERE'),
    ];

    final res = await http2Request(eventUrl, RequestMethod.post, body,
        reqHeader, eventName.title, (data) {});
    return res;
  }

  static Future<List<int>> _getEventBody(Map<String, dynamic> map) async {
    String content = jsonEncode(map);
    List<int> begin = await _jsonBegin();
    List<int> end = await _jsonEnd();
    List<int> header = await _jsonHeaders();
    List<int> data = utf8.encode(content);
    List<int> dataEnd = utf8.encode('\r\n');
    List<int> body = [...begin, ...header, ...data, ...dataEnd, ...end];
    return body;
  }

  static Future<List<int>> _getSpeechRecognizerBody(List<int> audioData) async {
    List<int> begin = await _jsonBegin();
    List<int> end = await _jsonEnd();
    List<int> jsonHeader = await _jsonHeaders();
    List<int> jsonContent = await _jsonContents();
    List<int> binaryHeader = await _binaryAudioHeaders();
    List<int> binaryContent = await _binaryAudioContent(audioData);

    Uint8List concatenatedList = Uint8List.fromList([
      ...begin,
      ...jsonHeader,
      ...jsonContent,
      ...begin,
      ...binaryHeader
    ]); //,...begin, ...binaryHeader, ...binaryContent,  ...end
    return concatenatedList;
  }

  static Future<List<int>> _getSynchronizingBody(
      String accessToken) async {
    final messageId = DeviceInfoHandler.md5RandomString();
    int volume = AuthorizationManager().model.volume;
    List<Map<String, String>> allAlerts = AuthorizationManager().model.allAlerts;
    List<Map<String, String>> activeAlerts = AuthorizationManager().model.activeAlerts;
    Map<String, dynamic> alertMap = {'allAlerts': allAlerts, 'activeAlerts': activeAlerts};

    Map<String, dynamic> map = {
      'context': [
        {
          'header': {'namespace': 'AudioPlayer', 'name': 'PlaybackState'},
          'payload': {
            'token': '',
            'offsetInMilliseconds': 0,
            'playerActivity': 'IDLE'
          }
        },
        {
          'header': {'namespace': 'SpeechSynthesizer', 'name': 'SpeechState'},
          'payload': {
            'token': '',
            'offsetInMilliseconds': 0,
            'playerActivity': 'FINISHED'
          }
        },
        {
          'header': {'namespace': 'Alerts', 'name': 'AlertsState'},
          'payload': alertMap,
        },
        {
          'header': {'namespace': 'Speaker', 'name': 'VolumeState'},
          'payload': {'volume': volume, 'muted': false}
        },
      ],
      'event': {
        'header': {
          'namespace': 'System',
          'name': 'SynchronizeState',
          'messageId': messageId
        },
        'payload': {}
      }
    };
    String content = jsonEncode(map);
    List<int> begin = await _jsonBegin();
    List<int> end = await _jsonEnd();
    List<int> header = await _jsonHeaders();
    List<int> data = utf8.encode(content);
    List<int> dataEnd = utf8.encode('\r\n');
    List<int> res = [...begin, ...header, ...data, ...dataEnd, ...end];
    return res;
  }

  static Future<List<int>> _binaryAudioContent(List<int> audioData) async {
    List<int> data1 = utf8.encode('\r\n\r\n');
    List<int> concatenatedList = [...audioData, ...data1];
    return concatenatedList;
  }

  static Future<List<int>> _binaryAudioHeaders() async {
    List<int> data1 =
        utf8.encode("Content-Disposition: form-data; name=\"audio\"\r\n");
    List<int> data2 = utf8.encode('Content-Type: application/octet-stream\r\n');
    List<int> data3 = utf8.encode('\r\n');
    List<int> concatenatedList = [...data1, ...data2, ...data3];
    return concatenatedList;
  }

  static Future<List<int>> _jsonContents() async {
    final expectSpeechId = AuthorizationManager().model.dialogId;
    final messageId = DeviceInfoHandler.md5RandomString();
    final dialogId = expectSpeechId.isNotEmpty
        ? expectSpeechId
        : DeviceInfoHandler.generateDialogRequestId();
    int volume = AuthorizationManager().model.volume;
    List<Map<String, String>> allAlerts = AuthorizationManager().model.allAlerts;
    List<Map<String, String>> activeAlerts = AuthorizationManager().model.activeAlerts;
    Map<String, dynamic> alertMap = {'allAlerts': allAlerts, 'activeAlerts': activeAlerts};
    print('dialog === $dialogId');
    Map<String, dynamic> initiator = expectSpeechId.isNotEmpty
        ? {'type': 'EXPECT_SPEECH_PROMPT', 'payload': {}}
        : {'type': 'TAP', 'payload': {}};
    Map<String, dynamic> map = {
      'context': [
        // {
        //   'header' : { 'namespace' : 'SpeechSynthesizer', 'name' : 'RecognizerState' },
        //   'payload' : { 'token' : '', 'offsetInMilliseconds' : 0, 'playerActivity' : 'FINISHED' }
        // },
        // {
        //   'header' : { 'namespace' : 'AudioPlayer', 'name' : 'PlaybackState' },
        //   'payload' : { 'token' : '', 'offsetInMilliseconds' : 0, 'playerActivity' : 'FINISHED' }
        // },
        {
          'header' : { 'namespace' : 'Alerts', 'name' : 'AlertsState' },
          'payload' : {'allAlerts': [], 'activeAlerts': []},
        },
        {
          'header': {'namespace': 'Notifications', 'name': 'IndicatorState'},
          'payload': {'isEnabled': true, 'isVisualIndicatorPersisted': false}
        },
        {
          'header': {'namespace': 'Speaker', 'name': 'VolumeState'},
          'payload': {'volume': volume, 'muted': false}
        },
      ],
      'event': {
        'header': {
          'namespace': 'SpeechRecognizer',
          'name': 'Recognize',
          'messageId': messageId,
          'dialogRequestId': dialogId
        },
        'payload': {
          'profile': 'NEAR_FIELD',
          'format': 'AUDIO_L16_RATE_16000_CHANNELS_1',
          'initiator': initiator
        } //
      }
    };
    String content = jsonEncode(map);
    List<int> data = utf8.encode(content);
    List<int> data1 = utf8.encode('\r\n');
    List<int> concatenatedList = [...data, ...data1];
    return concatenatedList;
  }

  static Future<List<int>> _jsonHeaders() async {
    List<int> data1 =
        utf8.encode("Content-Disposition: form-data; name=\"metadata\"\r\n");
    List<int> data2 =
        utf8.encode("Content-Type: application/json; charset=UTF-8\r\n");
    List<int> data3 = utf8.encode("\r\n");
    List<int> concatenatedList = [...data1, ...data2, ...data3];
    return concatenatedList;
  }

  static Future<List<int>> _jsonBegin() async {
    List<int> data = utf8.encode('--BOUNDARY_TERM_HERE\r\n');
    return data;
  }

  static Future<List<int>> _jsonEnd() async {
    List<int> data = utf8.encode('--BOUNDARY_TERM_HERE--\r\n');
    return data;
  }
}
