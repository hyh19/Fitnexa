
import 'dart:async';

class CollectionTime {
  int count = 0;

  /// 倒计时的计时器。
  Timer? _timer;


  start(Function(int)? callBack) {
    cancelTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      count ++;
      if(callBack != null){
        callBack!(count);
      }
    });
  }

  /// 取消计时器。
  cancelTimer() {
    // 计时器（`Timer`）组件的取消（`cancel`）方法，取消计时器。
    _timer?.cancel();
    _timer = null;
  }
}