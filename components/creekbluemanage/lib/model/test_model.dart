part of creek_blue;


class TestModel {

  int? id;

  String? title;

  bool? done;

  /// Todo model.
  TestModel();


  TestModel.fromMap(Map map) {
    id = map['id'] as int?;
    title = map['title'] as String?;
    done = map['done'] == 1;
  }

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      'title': title,
      'done': done == true ? 1 : 0
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "id=$id,title=$title,done=$done";
  }


  /// 保存数据
  static saveData(TestModel model) async {
    Database database = await DBManager().db;
    return await database.insert("Test3", model.toMap());
  }

}
