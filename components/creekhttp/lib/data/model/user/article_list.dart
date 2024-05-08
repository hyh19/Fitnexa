/// data : [{"classify":"","content":"","coverImg":"","id":0,"title":"","url":""}]

class ArticleListModel {
  ArticleListModel({
    this.data,
  });

  ArticleListModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ArticleModel.fromJson(v));
      });
    }
  }
  List<ArticleModel>? data;
  ArticleListModel copyWith({
    List<ArticleModel>? data,
  }) =>
      ArticleListModel(
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// classify : ""
/// content : ""
/// coverImg : ""
/// id : 0
/// title : ""
/// url : ""

class ArticleModel {
  ArticleModel({
    this.type,
    this.content,
    this.subtitle,
    this.coverImg,
    this.id,
    this.title,
    this.url,
  });

  ArticleModel.fromJson(dynamic json) {
    type = json['type'];
    content = json['content'];
    coverImg = json['coverImg'];
    subtitle = json['subtitle'];
    contentType = json['contentType'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
  }
  int? type;
  String? content;
  String? coverImg;
  String? id;
  String? title;
  String? url;
  String? subtitle;
  int? contentType;

  ///contentType 1 文件 2 链接

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['content'] = content;
    map['coverImg'] = coverImg;
    map['id'] = id;
    map['title'] = title;
    map['url'] = url;
    map['subtitle'] = subtitle;
    map['contentType'] = contentType;
    return map;
  }
}
