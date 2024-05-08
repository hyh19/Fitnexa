class PageRequestModel {
  PageRequestModel({
    this.searchKey,
    this.pageNum,
    this.pageSize,
    this.lang,
  });

  String? searchKey;
  int? pageNum;
  int? pageSize;
  String? lang;
  factory PageRequestModel.fromJson(Map<String, dynamic> json) {
    return PageRequestModel(
      searchKey: json["searchKey"],
      pageNum: json["pageNum"],
      pageSize: json["pageSize"],
      lang: json["lang"],
    );
  }

  Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map[ "searchKey"]= searchKey;
        map[  "pageNum"]= pageNum;
        map["pageSize"]=pageSize;
        if(lang!=null){
          map[ "lang"]=lang;
        }
        return map;
  }
}
