
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class AuthorizationWebViewPage extends StatefulWidget {
  String urlString = '';

  AuthorizationWebViewPage({required this.urlString, Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _AuthorizationWebViewPageState();
}

class _AuthorizationWebViewPageState extends State<AuthorizationWebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Amazon',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        child: AuthorizationWebView(urlString: widget.urlString),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // AuthorizationManager().isRegistrationPage = false;
    AuthorizationManager().loadTokenTimer?.cancel();
    SmartDialog.dismiss();
    // AuthorizationManager().reloadTokenIsolate?.kill(priority: Isolate.immediate);
  }
}

class AuthorizationWebView extends StatefulWidget {
  String urlString = '';

  @override
  AuthorizationWebView({required this.urlString, Key? key}) : super(key: key);

  State<StatefulWidget> createState() => _AuthorizationWebViewState();
}

class _AuthorizationWebViewState extends State<AuthorizationWebView> {
  double progress = 0;
  final GlobalKey webViewKey = GlobalKey();
  late PullToRefreshController pullToRefreshController;
  late InAppWebViewController webViewController;

  @override
  void initState() {
    super.initState();
    pullToRefreshController = PullToRefreshController(
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController.reload();
        } else if (Platform.isIOS) {
          webViewController.loadUrl(
              urlRequest: URLRequest(url: await webViewController.getUrl()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      child: Stack(
        children: [
          InAppWebView(
            key: webViewKey,
            // contextMenu: contextMenu,
            initialUrlRequest: URLRequest(url: WebUri(widget.urlString)),
            //h5的url
            //   initialOptions: options,
            pullToRefreshController: pullToRefreshController,
            onLoadStart: (vc, url) {
              // SmartDialog.showLoading();
              LoggerHandler.log(LogType.info, 'Authorization 授权网页开始加载');
            },
            onLoadStop: (vc, url) {
              // SmartDialog.dismiss();
              LoggerHandler.log(LogType.info, 'Authorization 授权网页结束加载');
            },
            onReceivedError: (vc, req, error) {
              // SmartDialog.dismiss();
              LoggerHandler.log(LogType.error, 'Authorization 授权网页加载错误 ',
                  error: error);
            },
          ),
          progress < 1.0
              ? LinearProgressIndicator(
                  value: progress, backgroundColor: Colors.blue)
              : Container(),
        ],
      ),
    );
  }
}
