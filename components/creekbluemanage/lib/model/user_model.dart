part of creek_blue;

class UserModel {
  ///功能表
  int? funcTable;
  String? userUpdateVersion;
  OperationType userType = OperationType.inquire;

  UserInfoModel userInfoModel = UserInfoModel();

  UserUnitModel userUnitModel = UserUnitModel();
  UserGoalModel userGoalModel = UserGoalModel();

  UserModel();

  UserModel fromBuffer(List<int> buffer) {
    UserModel userModel = UserModel();
    protocol_user_info_inquire_reply amodel = protocol_user_info_inquire_reply.fromBuffer(buffer);
    userModel.funcTable = amodel.funcTable;
    userModel.userType = amodel.operate == operate_type.INQUIRE
        ? OperationType.inquire
        : amodel.operate == operate_type.SET
            ? OperationType.set
            : OperationType.invalid;
    UserInfoModel infoModel = UserInfoModel();
    infoModel.height = amodel.personalInfo.height;
    infoModel.weight = amodel.personalInfo.weight;
    infoModel.genderType = amodel.personalInfo.gender == gender_type.GENDER_MALE
        ? GenderType.male
        : amodel.personalInfo.gender == gender_type.GENDER_FEMALE
            ? GenderType.female
            : GenderType.other;
    infoModel.year = amodel.personalInfo.year;
    infoModel.month = amodel.personalInfo.month;
    infoModel.day = amodel.personalInfo.day;
    userModel.userInfoModel = infoModel;
    UserUnitModel unitModel = UserUnitModel();
    unitModel.distUnit = amodel.perferences.distUnit;
    unitModel.weightUnit = amodel.perferences.weightUnit;
    unitModel.airTempUnit = amodel.perferences.airTempUnit;
    unitModel.skinTempUnit = amodel.perferences.skinTempUnit;
    unitModel.hourFormat = amodel.perferences.is12hourFormat;
    unitModel.weekStartDay = amodel.perferences.weekStartDay;
    unitModel.calorieUnit = amodel.perferences.calorieUnit;
    unitModel.swimPoolUnit = amodel.perferences.swimPoolUnit;
    unitModel.cyclingUnit = amodel.perferences.cyclingUnit;
    unitModel.walkingRunningUnit = amodel.perferences.walkingRunningUnit;
    unitModel.strideUnit = amodel.perferences.strideUnit;
    unitModel.heightUnit = amodel.perferences.heightUnit;
    unitModel.altitudeUnit = amodel.perferences.altitudeUnit;
    userModel.userUnitModel = unitModel;
    UserGoalModel goalModel = UserGoalModel();
    goalModel.exerciseMin = amodel.goalSetting.exerciseMin;
    goalModel.standingHour = amodel.goalSetting.standingHour;
    goalModel.kcal = amodel.goalSetting.kcal;
    goalModel.switchFlag = amodel.goalSetting.notifySwitchFlag;
    goalModel.notifyFlag = amodel.goalSetting.notifyFlag.value;
    goalModel.steps = amodel.goalSetting.steps;
    goalModel.distance = amodel.goalSetting.distance;
    goalModel.sportDay = amodel.goalSetting.workoutDay;
    userModel.userGoalModel = goalModel;
    return userModel;
  }

  protocol_user_info_operate fromModel() {
    protocol_user_info_operate amodel = protocol_user_info_operate();
    amodel.personalInfo = protocol_personal_info();
    amodel.perferences = protocol_perferences();
    amodel.goalSetting = protocol_goal_setting();
    amodel.operate = userType == OperationType.inquire
        ? operate_type.INQUIRE
        : userType == OperationType.set
            ? operate_type.SET
            : operate_type.INVALID;
    amodel.personalInfo.year = userInfoModel.year ?? 0;
    amodel.personalInfo.month = userInfoModel.month ?? 0;
    amodel.personalInfo.gender = userInfoModel.genderType == GenderType.male
        ? gender_type.GENDER_MALE
        : userInfoModel.genderType == GenderType.female
            ? gender_type.GENDER_FEMALE
            : gender_type.GENDER_OTHER;
    amodel.personalInfo.height = userInfoModel.height ?? 0;
    amodel.personalInfo.weight = userInfoModel.weight ?? 0;
    amodel.personalInfo.day = userInfoModel.day ?? 0;
    amodel.perferences.distUnit = userUnitModel.distUnit ?? 0;
    amodel.perferences.weightUnit = userUnitModel.weightUnit ?? 0;
    amodel.perferences.airTempUnit = userUnitModel.airTempUnit ?? 0;
    amodel.perferences.skinTempUnit = userUnitModel.skinTempUnit ?? 0;
    amodel.perferences.is12hourFormat = userUnitModel.hourFormat ?? 0;
    amodel.perferences.weekStartDay = userUnitModel.weekStartDay ?? 0;
    amodel.perferences.swimPoolUnit = userUnitModel.swimPoolUnit ?? 0;
    amodel.perferences.cyclingUnit = userUnitModel.cyclingUnit ?? 0;
    amodel.perferences.calorieUnit = userUnitModel.calorieUnit ?? 0;
    amodel.perferences.altitudeUnit = userUnitModel.altitudeUnit ?? 0;
    amodel.perferences.walkingRunningUnit = userUnitModel.walkingRunningUnit ?? 0;
    amodel.perferences.strideUnit = userUnitModel.strideUnit ?? 0;
    amodel.perferences.heightUnit = userUnitModel.heightUnit ?? 0;
    amodel.goalSetting.exerciseMin = userGoalModel.exerciseMin ?? 0;
    amodel.goalSetting.standingHour = userGoalModel.standingHour ?? 0;
    amodel.goalSetting.workoutDay = userGoalModel.sportDay ?? 0;
    amodel.goalSetting.kcal = userGoalModel.kcal ?? 0;
    amodel.goalSetting.steps = userGoalModel.steps ?? 0;
    amodel.goalSetting.distance = userGoalModel.distance ?? 0;
    amodel.goalSetting.notifySwitchFlag = userGoalModel.switchFlag ?? false;
    amodel.goalSetting.notifyFlag = userGoalModel.notifyFlag == 0
        ? notify_type.ALLOW
        : userGoalModel.notifyFlag == 1
            ? notify_type.SILENT
            : notify_type.CLOSE;
    return amodel;
  }

  @override
  String toString() {
    return 'UserModel{funcTable: $funcTable, userType: $userType, userInfoModel: $userInfoModel, userUnitModel: $userUnitModel, userGoalModel: $userGoalModel}';
  }

  UserModel.fromJson(dynamic json) {
    funcTable = json['funcTable'];
    userInfoModel = json['userInfoModel'] != null ? UserInfoModel.fromJson(json['userInfoModel']) : UserInfoModel();
    userType = json['userType'];
    userUnitModel = json['userUnitModel'] != null ? UserUnitModel.fromJson(json['userUnitModel']) : UserUnitModel();
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    // map['funcTable'] = funcTable;
    if (userInfoModel != null) {
      map['userInfoModel'] = userInfoModel.toJson();
    }
    if (userGoalModel != null) {
      map['userGoalModel'] = userGoalModel.toJson();
    }
    // map['userType'] = userType;
    if (userUnitModel != null) {
      map['userUnitModel'] = userUnitModel.toJson();
    }
    return map;
  }
}

class UserInfoModel {
  ///身高
  int? height;

  ///体重
  int? weight;

  ///性别
  GenderType? genderType/*= GenderType.male*/;

  ///生日年份
  int? year;

  ///月
  int? month;

  ///日
  int? day;

  ///性别
  int? sex;

  /// 姓
  String? firstName;

  /// 名
  String? lastName;

  /// 头像
  String? avatar;

  ///临时存储数据库
  int? ft; //身高 英尺
  int? ins; //身高 英寸
  dynamic primitiveWeight;
  dynamic primitiveWeightUnit;

  @override
  String toString() {
    return 'UserInfoModel{height: $height, weight: $weight, genderType: $genderType, year: $year, month: $month,firstName: $firstName,lastName: $lastName,avatar: $avatar, day: $day, sex: $sex, ft: $ft, ins: $ins, primitiveWeight: $primitiveWeight, primitiveWeightUnit: $primitiveWeightUnit}';
  }

  ///体重的原始的数据,最后显示

  UserInfoModel({
    this.day,
    this.ft,
    this.height,
    this.ins,
    this.sex,
    this.month,
    this.primitiveWeight,
    this.primitiveWeightUnit,
    this.weight,
    this.year,
    this.firstName,
    this.lastName,
    this.avatar
  });

  UserInfoModel.fromJson(dynamic json) {
    if (json['day'] != null) {
      day = json['day'];
    }
    ft = json['ft'];
    height = json['height'];
    ins = json['ins'];
    sex = json['sex'];
    month = json['month'];
    primitiveWeight = json['primitiveWeight'];
    weight = json['weight'];
    year = json['year'];
    primitiveWeightUnit = json['primitiveWeightUnit'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    avatar = json['avatar'];

  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['ft'] = ft;
    map['height'] = height;
    map['ins'] = ins;
    map['ins'] = ins;
    map['sex'] = sex;
    map['genderType'] = genderType?.index ?? 0;
    map['month'] = month;
    map['primitiveWeight'] = primitiveWeight;
    map['weight'] = weight;
    map['year'] = year;
    map['primitiveWeightUnit'] = primitiveWeightUnit;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['avatar'] = avatar;

    return map;
  }
}

class UserUnitModel {
  ///1bytes  距离单位0x00：无效 0x01：km， 0x02:mi
  int? distUnit;

  /// 体重单位： 0x00：无效，0x01：kg， 0x02:lb， 0x03:英石）
  int? weightUnit =1;

  /// 天气温度单位 0x00：无效 0x01:℃， 0x02:℉  默认选℃
  int? airTempUnit = 1;

  /// 体温温度单位 0x00：无效 0x01:℃， 0x02:℉
  int? skinTempUnit = 1;

  /// 时间制式（0x00：无效<br>0x01：24小时制，0x02：12小时制）
  int? hourFormat = 1;

  /// 周起始日 0x00 星期1,0x01 星期天,0x02 星期6
  int? weekStartDay = 1;

  /// 卡路里单位设置 0 无效，  1：默认千卡； 2：大卡； 3：千焦
  int? calorieUnit = 1;

  /// 泳池单位设置 0 无效，  1：默认米； 2：码
  int? swimPoolUnit = 1;

  /// 骑行的单位（公里/英里） 0 无效； 1：km 公里； 2：英里 ；
  int? cyclingUnit = 1;

  /// 步行或者跑步的单位（公里/英里）设置  0 无效； 1：km 公里； 2：英里；
  int? walkingRunningUnit = 1;

  /// 步幅单位
  int? strideUnit;

  ///身高单位 0x00：无效 0x01，厘米cm 0x02,英寸ft
  int? heightUnit;

  ///1bytes 海拔高度单位 0x00：无效 0x01，米m 0x02,英尺ft
  int? altitudeUnit;


  @override
  String toString() {
    return 'UserUnitModel{distUnit: $distUnit, weightUnit: $weightUnit, airTempUnit: $airTempUnit, skinTempUnit: $skinTempUnit, hourFormat: $hourFormat, weekStartDay: $weekStartDay, calorieUnit: $calorieUnit, swimPoolUnit: $swimPoolUnit, cyclingUnit: $cyclingUnit, walkingRunningUnit: $walkingRunningUnit, strideUnit: $strideUnit, heightUnit: $heightUnit, altitudeUnit: $altitudeUnit}';
  }


  UserUnitModel.fromJson(dynamic json) {
    airTempUnit = json['airTempUnit'];
    calorieUnit = json['calorieUnit'];
    cyclingUnit = json['cyclingUnit'];
    distUnit = json['distUnit'];
    heightUnit = json['heightUnit'];
    hourFormat = json['hourFormat'];
    skinTempUnit = json['skinTempUnit'];
    strideUnit = json['strideUnit'];
    swimPoolUnit = json['swimPoolUnit'];
    walkingRunningUnit = json['walkingRunningUnit'];
    weekStartDay = json['weekStartDay'];
    weightUnit = json['weightUnit'];
    altitudeUnit = json['altitudeUnit'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['airTempUnit'] = airTempUnit;
    map['calorieUnit'] = calorieUnit;
    map['cyclingUnit'] = cyclingUnit;
    map['distUnit'] = distUnit;
    map['heightUnit'] = heightUnit;
    map['hourFormat'] = hourFormat;
    map['skinTempUnit'] = skinTempUnit;
    map['strideUnit'] = strideUnit;
    map['swimPoolUnit'] = swimPoolUnit;
    map['walkingRunningUnit'] = walkingRunningUnit;
    map['weekStartDay'] = weekStartDay;
    map['weightUnit'] = weightUnit;
    map['altitudeUnit'] = altitudeUnit;
    return map;
  }

  UserUnitModel({
    this.airTempUnit,
    this.calorieUnit,
    this.cyclingUnit= 1,
    this.distUnit,
    this.heightUnit,
    this.hourFormat,
    this.skinTempUnit,
    this.strideUnit,
    this.swimPoolUnit,
    this.walkingRunningUnit= 1,
    this.weekStartDay,
    this.weightUnit,
  });
}

class UserGoalModel {
  ///锻炼时长目标
  int? exerciseMin;

  ///站立小时目标
  int? standingHour;

  ///卡路里目标
  int? kcal/*= GenderType.male*/;

  ///步数目标
  int? steps;

  ///距离目标 单位米
  int? distance;

  ///运动目标 单位天
  int? sportDay;

  ///目标提醒开关 true 开启,false 关闭
  bool? switchFlag;

  ///通知类型 0;//允许通知 1;//静默通知 2;//关闭通知
  int? notifyFlag;


  @override
  String toString() {
    return 'UserGoalModel{exerciseMin: $exerciseMin, standingHour: $standingHour, kcal: $kcal, steps: $steps, distance: $distance, sportDay: $sportDay, switchFlag: $switchFlag, notifyFlag: $notifyFlag}';
  }

  UserGoalModel({this.exerciseMin, this.standingHour, this.kcal, this.steps, this.distance, this.sportDay, this.switchFlag, this.notifyFlag});

  UserGoalModel.fromJson(dynamic json) {
    exerciseMin = json['exerciseMin'];
    standingHour = json['standingHour'];
    kcal = json['kcal'];
    steps = json['steps'];
    distance = json['distance'];
    sportDay = json['sportDay'];
    switchFlag = json['switchFlag'];
    notifyFlag = json['notifyFlag'];
  }
  UserGoalModel.formGoalsMode(CreekGoalsModel goalsModel) {
    exerciseMin =goalsModel.exercise;
    standingHour= goalsModel.stand;
    kcal=goalsModel.calories;
    steps=goalsModel.steps;
    distance=goalsModel.distance;
    sportDay=goalsModel.sportDay;
    switchFlag=goalsModel.notifySwitchFlag;
    notifyFlag=goalsModel.notifyFlag;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['exerciseMin'] = exerciseMin;
    map['standingHour'] = standingHour;
    map['kcal'] = kcal;
    map['steps'] = steps;
    map['distance'] = distance;
    map['sportDay'] = sportDay;
    map['switchFlag'] = switchFlag;
    map['notifyFlag'] = notifyFlag;
    return map;
  }

  // formGoalsMode(CreekGoalsModel goalsModel){
  //  exerciseMin =goalsModel.exercise;
  //   standingHour= goalsModel.stand;
  //   kcal=goalsModel.calories;
  //   steps=goalsModel.steps;
  //   distance=goalsModel.distance;
  //   sportDay=goalsModel.sportDay;
  //   switchFlag=goalsModel.notifySwitchFlag;
  //   notifyFlag=goalsModel.notifyFlag;
  // }

}
