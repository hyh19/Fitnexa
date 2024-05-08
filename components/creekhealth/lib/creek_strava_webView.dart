import 'package:creektool/creek_tool.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:creekhealth/creek_strava_request.dart';

class CreekStravaWebViewPage extends StatefulWidget {
  String urlString = '';
  Function(String) callback;
  Function(String) errorCallback;

  CreekStravaWebViewPage(
      {required this.urlString,
      required this.callback,
      required this.errorCallback,
      Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreekStravaWebViewPageState();
}

class _CreekStravaWebViewPageState extends State<CreekStravaWebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Strava',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        child: CreekStravaWebView(
            urlString: widget.urlString,
            callback: widget.callback,
            errorCallback: widget.errorCallback),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    SmartDialog.dismiss();
  }
}

class CreekStravaWebView extends StatefulWidget {
  String urlString = '';
  final Function(String) callback;
  final Function(String) errorCallback;

  @override
  CreekStravaWebView(
      {required this.urlString,
      required this.callback,
      required this.errorCallback,
      Key? key})
      : super(key: key);

  State<StatefulWidget> createState() => _CreekStravaWebViewState();
}

class _CreekStravaWebViewState extends State<CreekStravaWebView> {
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
              SmartDialog.showLoading();
              CreekLog.info('CreekStrava 授权网页开始加载');
            },
            onLoadStop: (vc, url) {
              SmartDialog.dismiss();
              CreekLog.info('CreekStrava 授权网页结束加载');
              try {
                Map<String, dynamic> queryParams = url?.queryParameters ?? {};
                print(
                    'Query Parameters: $queryParams path: ${url?.path}  ${url?.scheme}  ${url?.host}');
                CreekLog.info(
                    'CreekStrava 授权网页结束加载 url: $url, Parameters: $queryParams');

                String targetUrl = '${url?.scheme}://${url?.host}';
                if (targetUrl == redirectUrl) {
                  if (queryParams.containsKey('error')) {
                    String error = queryParams['error'];
                    widget.errorCallback(error);
                    return;
                  }
                  String code = queryParams['code'] ?? '';
                  widget.callback(code);
                }
              } catch (error) {
                String errString = '$error';
                widget.errorCallback(errString);
              }
            },
            onReceivedError: (vc, req, error) {
              SmartDialog.dismiss();
              CreekLog.info('CreekStrava 授权网页加载错误  error : $error');
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
