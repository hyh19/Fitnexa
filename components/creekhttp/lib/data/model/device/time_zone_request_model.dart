class TimezoneRequestModel {
  TimezoneRequestModel({
    this.searchKey,
    this.pageNum,
    this.pageSize,
    this.langId,
  });

  String? searchKey;
  int? pageNum;
  int? pageSize;
  String? langId;
  factory TimezoneRequestModel.fromJson(Map<String, dynamic> json) {
    return TimezoneRequestModel(
      searchKey: json["searchKey"],
      pageNum: json["pageNum"],
      pageSize: json["pageSize"],
      langId: json["langId"],
    );
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map[ "searchKey"]= searchKey;
    map[  "pageNum"]= pageNum;
    map["pageSize"]=pageSize;
    if(langId!=null){
      map[ "langId"]=langId;
    }
    return map;
  }
}

