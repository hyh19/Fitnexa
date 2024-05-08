import 'dart:io';
import 'package:flutter/material.dart';

class AlexaLogPage extends StatefulWidget {
  String filePath = '';
  String? title = 'Alexa Log';

  AlexaLogPage({required this.filePath, this.title, Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _AlexaLogPageState();
}

class _AlexaLogPageState extends State<AlexaLogPage> {
  @override
  String logData = "";

  @override
  void initState() {
    super.initState();
    // 在这里调用读取日志文件的函数
    readLogFile();
  }

  Future<void> readLogFile() async {
    try {
      // 替换为你的日志文件路径
      File file = File(widget.filePath);
      String contents = await file.readAsString();
      setState(() {
        logData = contents;
      });
    } catch (e) {
      print("Error reading log file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          (widget.title ?? ''),
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(logData),
        ),
      ),
    );
  }
}
