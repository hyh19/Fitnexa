import 'package:isar/isar.dart';

part 'notice.g.dart';

@collection
class NoticeResultModel {
  NoticeResultModel({
    required this.noticeId,
    required this.type,
    this.title = '',
    this.content = '',
    this.contentReply = '',
    this.name,
    required this.updateTime,
    this.userId,
    this.isRead = false,
    this.isSyncToFirmware = false,
    this.newDialClassifyId
  });

  Id? id;

  /// 用户id
  @Index()
  String? userId;

  /// 消息id
  @Index(composite: [CompositeIndex('userId')], unique: true, replace: true)
  final int? noticeId;
  final int? type;
  final String title;
  final String content;
  final String contentReply;
  final int? newDialClassifyId;
  final String? name;
  bool isRead;
  bool isSyncToFirmware;


  /// yyyy-MM-dd HH:mm:ss
  final String? updateTime;

  factory NoticeResultModel.fromJson(
      Map<String, dynamic> json, int type, String userId) {
    return NoticeResultModel(
      noticeId: json["id"],
      title: json["title"]??'',
      content: json["content"] ??'',
      contentReply: json["contentReply"] ?? '',
      updateTime: json["updateTime"],
      newDialClassifyId: json["newDialClassifyId"],
      name: json["name"],
      type: type,
      userId: userId,
    );
  }

  // @override
  // String toString() {
  //   return "$id, $title, $content, $contentReply, $updateTime, ";
  // }
  @override
  String toString() {
    return 'NoticeResultModel{id: $id, userId: $userId, noticeId: $noticeId, type: $type, title: $title, content: $content, contentReply: $contentReply, isRead: $isRead, isSyncToFirmware: $isSyncToFirmware, updateTime: $updateTime}';
  }
}
