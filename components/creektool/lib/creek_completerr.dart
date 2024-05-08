part of creek_tool;

///任务队列状态
enum TaskState{
  start,       //开始
  inProcess    //处理中
}

///任务队列
class CompleterExt {
  static Future<T> awaitFor<T>(Function(Function(T)) run) {
    var c = Completer<T>();
    run((r) => c.complete(r));
    return c.future;
  }

}