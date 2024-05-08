import 'package:isar/isar.dart';

part 'wear_medal.g.dart';

/// 当前佩戴奖章
@collection
class WearMedalModel {
  WearMedalModel({required this.userId, required this.medalId});

  Id? id;

  /// 用户ID
  @Index(unique: true,replace: true)
  String? userId;

  /// 奖章ID
  final String? medalId;
}
