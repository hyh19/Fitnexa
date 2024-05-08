part of creek_base;

abstract class CreekBaseStatefulPage extends StatefulWidget {
  const CreekBaseStatefulPage({Key? key}) : super(key: key);
  @override
  CreekBaseWidgetState createState() => getState();

  ///子类实现
  CreekBaseWidgetState getState();
}

abstract class CreekBaseWidgetState<T extends CreekBaseStatefulPage> extends State<T> with WidgetsBindingObserver {
  bool dialogShow = false;

  GestureTapCallback? cancelBlock;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();

    hideLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  void showToast(String msg) {
    CreekToast.showToast(msg);
  }

  void showLoading(String s) {
    if (!dialogShow) {
      dialogShow = true;
      CreekLoading.show(title: s, needMask: true);
    }
  }

  void showLoadings({String title = ""}) {
    if (title.isEmpty) {
      title = S.current.title_Loading_setting_up;
    }
    if (!dialogShow) {
      dialogShow = true;
      CreekLoading.show(title: title, needMask: true);
    }
  }

  void hideLoading() {
    if (dialogShow) {
      dialogShow = false;
      CreekLoading.dismiss();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      //  print("app进入前台");
      print("resumed");
    } else if (state == AppLifecycleState.inactive) {
      // print("app在前台但不响应事件，");
      print("inactive，");
    } else if (state == AppLifecycleState.paused) {
      // print("app进入后台");
      print("paused");
    } else if (state == AppLifecycleState.detached) {
      // print("没有宿主视图但是flutter引擎仍然有效");
      print("detached");
    }
  }

  /// 点击任意位置关闭键盘
  void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }

  void showKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.requestFocus(null);
    }
  }
}
