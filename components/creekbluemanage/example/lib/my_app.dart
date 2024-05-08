import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage_example/base/routes.dart';
import 'package:creek_blue_manage_example/tabbar/creek_tabbar_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:creekbase/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();

}


class _MyAppState extends State<MyApp> with WidgetsBindingObserver {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DBManager().db;
    _init();
  }

  void _init() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive: // 处于这种状态的应用程序应该假设它们可能在任何时候暂停。
        break;
      case AppLifecycleState.resumed: // 应用程序可见，前台
        SmartDialog.dismiss();
        break;
      case AppLifecycleState.paused: // 应用程序不可见，后台
        break;
      case AppLifecycleState.detached: // 申请将暂时暂停
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    //3、状态组件绑定,将语言状态与组件绑定

    TimeOfDay noonTime= TimeOfDay(hour:14,minute: 15);
    TimeOfDay morningTime = TimeOfDay(hour:14,minute: 15);




    if (noonTime.period == DayPeriod.am)
      print("-lxk----------${noonTime.hour} is AM");
    else
      print("--${noonTime.hour}-----lxk-----$noonTime is PM");
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: const CreekTabBarPage(),
      builder:  FlutterSmartDialog.init(
          builder: (context,widget){
            return MediaQuery(
              //设置文字大小不随系统设置改变
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget ?? Container(),
            );
          }
      ),
      getPages: pages,
    );
  }

}


