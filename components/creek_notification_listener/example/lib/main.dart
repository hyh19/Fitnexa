import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:creek_notification_listener/notification_listen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: NotificationsLog(),
    );
  }
}

class NotificationsLog extends StatefulWidget {
  @override
  _NotificationsLogState createState() => _NotificationsLogState();
}

class _NotificationsLogState extends State<NotificationsLog> {
  List<NotificationEvent> _log = [];
  bool started = false;
  bool _loading = false;

  ReceivePort port = ReceivePort();

  @override
  void initState() {
    initPlatformState();
    super.initState();
  }

  // we must use static method, to handle in background
  static void _callback(int type, NotificationEvent evt) {
    print("send evt to ui: $evt");
    final SendPort? send = IsolateNameServer.lookupPortByName("_listener_");
    if (send == null) print("can't find the sender");
    send?.send(evt);
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    NotificationListen.initialize(callbackHandle: _callback);

    // this can fix restart<debug> can't handle error
    IsolateNameServer.removePortNameMapping("_listener_");
    IsolateNameServer.registerPortWithName(port.sendPort, "_listener_");
    port.listen((message) => onData(message));

    // don't use the default receivePort
    // NotificationListen.receivePort.listen((evt) => onData(evt));

    var isR = await NotificationListen.isRunning;
    print("""Service is ${!isR! ? "not " : ""}aleary running""");

    setState(() {
      started = isR;
    });
  }

  void onData(NotificationEvent event) {
    setState(() {
      _log.add(event);
    });

    print(event.toString());
  }

  void startListening() async {
    print("start listening");
    setState(() {
      _loading = true;
    });
    var hasPermission = await NotificationListen.hasPermission;
    if (!hasPermission!) {
      print("no permission, so open settings");
      NotificationListen.openPermissionSettings();
      return;
    }

    var isR = await NotificationListen.isRunning;

    if (!isR!) {
      await NotificationListen.startService(foreground: true, title: "Listener Running", description: "Welcome to having me");
    }

    setState(() {
      started = true;
      _loading = false;
    });
  }

  void stopListening() async {
    print("stop listening");

    setState(() {
      _loading = true;
    });

    await NotificationListen.stopService();

    setState(() {
      started = false;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          await NotificationListen.moveTaskBack();
          // 返回桌面而不是关掉APP
          // android_intent.Intent()
          //   ..setAction(android_action.Action.ACTION_MAIN)
          //   ..addFlag(android_flag.Flag.FLAG_ACTIVITY_NEW_TASK)
          //   ..addCategory("android.intent.category.HOME")
          //   ..startActivity().catchError(
          //           (e) => print(e));

          // return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Listener Example'),
          actions: [
            IconButton(
                onPressed: () {
                  print("TODO:");
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: Center(
            child: ListView.builder(
                itemCount: _log.length,
                reverse: true,
                itemBuilder: (BuildContext context, int idx) {
                  final entry = _log[idx];
                  return ListTile(
                      onTap: () {
                        entry.tap();
                      },
                    //  trailing: entry.appIcon !=null ? Image.memory(entry.appIcon!, width: 80, height: 80) : entry.largeIcon !=null? Image.memory(entry.largeIcon!, width: 80, height: 80):Text(entry.packageName??""),
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(entry.appLabel ?? "<<no appLabel>>"),
                            Text(entry.packageName ?? "<<no packageName>>"),
                            Text(entry.title ?? "<<no title>>"),
                            Text(entry.text ?? "<<no text>>"),
                            Row(
                              children: (entry.actions ?? []).map((act) {
                                return TextButton(
                                    onPressed: () {
                                      // semantic is 1 means reply quick
                                      if (act.semantic == 1) {
                                        Map<String, dynamic> map = {};
                                        act.inputs?.forEach((e) {
                                          print("set inputs: ${e.label}<${e.resultKey}>");
                                          map[e.resultKey ?? ''] = "Auto reply from me";
                                        });
                                        act.postInputs(map);
                                      } else {
                                        // just tap
                                        act.tap();
                                      }
                                    },
                                    child: Text(act.title ?? ''));
                              }).toList()
                               // ..add(),
                            ),
                            TextButton(
                                child: Text("Full"),
                                onPressed: () async {
                                  try {
                                    var data = await entry.getFull();
                                    print("full notifaction: $data");
                                  } catch (e) {
                                    print(e);
                                  }
                                }),
                            Text(entry.createAt.toString().substring(0, 19)),
                          ],
                        ),
                      ));
                })),
        floatingActionButton: FloatingActionButton(
          onPressed: started ? stopListening : startListening,
          tooltip: 'Start/Stop sensing',
          child: _loading ? Icon(Icons.close) : (started ? Icon(Icons.stop) : Icon(Icons.play_arrow)),
        ),
      ),
    );
  }
}
