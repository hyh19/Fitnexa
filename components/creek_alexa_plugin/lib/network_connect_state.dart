import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class NetworkConnectState {
  static final NetworkConnectState _singleton = NetworkConnectState();

  ConnectivityResult connectionStatus = ConnectivityResult.none;

  final Connectivity _connectivity = Connectivity();

  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  List<Function(ConnectivityResult)> listens = [];

  static NetworkConnectState getInstance() {
    _singleton._init();
    return _singleton;
  }

  setConnectivityResultListen(
      Function(ConnectivityResult) connectivityResultListen) {
    listens.add(connectivityResultListen);
  }

  removeConnectivityResultListen(
      Function(ConnectivityResult) connectivityResultListen) {
    listens.remove(connectivityResultListen);
  }

  _init() async {
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {}
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    for (var e in listens) {
      e(result);
    }
    connectionStatus = result;
    switch (result) {
      case ConnectivityResult.wifi:
        break;
      case ConnectivityResult.mobile:
        break;
      case ConnectivityResult.none:
        break;
      default:
        break;
    }
  }
}
