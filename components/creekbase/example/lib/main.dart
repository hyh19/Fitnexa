import 'package:creekbase/creek_base.dart';
import 'package:creekbase_example/homepage.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:creekbase/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    appBarBackgroundColor = Colors.red;
    headers = {"key":"2"};
  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('zh'),
      home: Homepage(),
    );
  }
}
