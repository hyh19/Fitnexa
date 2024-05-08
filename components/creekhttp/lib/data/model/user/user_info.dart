/// 用户信息
class UserInfoRequestModel {
  UserInfoRequestModel( {
     this.avatar,
     this.nickname,
     this.birthday,
     this.gender,
     this.height,
     this.weight,
     this.heightUnit,
     this.weightUnit,
     this.medalId,
     this.alexaCode,
  });

  /// 用户头像
  final String? avatar;

  /// 用户昵称
  final String? nickname;

  /// 生日
  final String? birthday;

  /// 性别
  final int? gender;

  /// 身高
  final int? height;
  ///身高单位 1-cm 2-ft
  final int? heightUnit;
  ///medalId
  final int? medalId;

  /// 体重
  final int? weight;
  ///体重单位 1-kg 2-lbs 3-st
  final int? weightUnit;
  final String? alexaCode;
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map<String, dynamic>();
    if (avatar != null) {
      map["avatar"] = avatar;
    }
    if (nickname != null) {
      map["nickname"] = nickname;
    }
    if (birthday != null) {
      map["birthday"] = birthday;
    }
    if(gender !=null){
      map["gender"] = gender;
    }
    if(height !=null){
      map["height"] = height;
    }
    if(heightUnit !=null){
      map["heightUnit"] = heightUnit;
    }
    if(weight !=null){
      map["weight"] = weight;
    }
    if(weightUnit !=null){
      map["weightUnit"] = weightUnit;
    }
    if(medalId !=null){
      map["medalId"] = medalId;
    }
    if(alexaCode !=null){
      map["alexaCode"] = alexaCode;
    }
    return map;
  }
}

class UserInfoResultModel {
  UserInfoResultModel({
    required this.avatar,
    required this.nickname,
    required this.birthday,
    required this.gender,
    required this.height,
    required this.weight,
    required this.logoffTime,
    required this.heightUnit,
    required this.weightUnit,
    required this.avatarPreview,
    required this.emailVerify,
    required this.medalId,
  });

  /// 用户头像
  final String avatar;

  /// 用户昵称
  final String nickname;

  /// 用户头像显示
  final String avatarPreview;

  /// 生日
  final String birthday;

  /// 性别
  final int? gender;

  /// 身高
  final String? height;
  /// 身高单位
  final int? heightUnit;
  /// 体重
  final String? weight;
  /// 体重单位
  final int? weightUnit;
  /// 注销到期时间
  final String logoffTime;

  /// 邮箱是否验证
  final int? emailVerify;

  ///奖章id
  final int? medalId;


  factory UserInfoResultModel.fromJson(Map<String, dynamic> json) {
    return UserInfoResultModel(
      avatar: json["avatar"] ?? '',
      nickname: json["nickname"] ?? '',
      avatarPreview: json["avatarPreview"] ?? '',
      birthday: json["birthday"] ?? '',
      gender: json["gender"],
      height: json["height"],
      heightUnit: json["heightUnit"],
      weight: json["weight"],
      weightUnit: json["weightUnit"],
      logoffTime: json["logoffTime"] ?? '',
      emailVerify: json["emailVerify"] ,
      medalId: json["medalId"] ,
    );
  }
}
