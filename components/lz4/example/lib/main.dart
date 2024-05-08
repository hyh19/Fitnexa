import 'package:flutter/material.dart';
import 'package:lz4/lz4.dart' as lz4;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String version = '';

  @override
  void initState() {
    super.initState();
    version = lz4.version;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: Center(child: Text(version))
      ),
    );
  }
}
