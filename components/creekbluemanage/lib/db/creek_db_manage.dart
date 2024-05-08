part of creek_blue;

class DBManager {
  /// 数据库名
  final String _dbName = "creek.db";

  /// 数据库版本
  final int _version = 18;

  static final DBManager _instance = DBManager._();

  factory DBManager() {
    return _instance;
  }

  DBManager._();

  static Database? _db;

  Future<Database> get db async {
    return _db ??= await _initDB();
  }

  /// 初始化数据库
  Future<Database> _initDB() async {
    var databasesPath = await getDatabasesPath();
    print(databasesPath);
    String path = join(databasesPath, 'creek.db');
    Database base;
    base = await openDatabase(
      path,
      version: _version,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
    return base;
  }

  ///检测是否更新表
  Future updateDatabase(Database base) async{

    List<Map<String, Object?>> list = await base.rawQuery("SELECT name FROM sqlite_master WHERE type='table'");
    if(list.isNotEmpty){
      ///这里维护新增表
      List<String> baseNames = ["SYNC_TIME","HRV_DATA_HEAD","SYNC_STATE"];
      for (var element in baseNames) {
       if(!list.toString().contains(element)){
         if(element == "SYNC_TIME"){
           await base.execute(
               'CREATE TABLE SYNC_TIME (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, activity TEXT,goal TEXT,hearRate TEXT,noise TEXT ,pressure TEXT,sleep TEXT,spo TEXT,sport TEXT,hrv TEXT)');
           await base.insert("SYNC_TIME", {"userID":1});
         }else if(element == "HRV_DATA_HEAD"){
           await base.execute(
               'CREATE TABLE HRV_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER,min INTEGER,max INTEGER,average INTEGER,sleepMax INTEGER,sleepMin INTEGER, datas TEXT)');
         }else if(element == "SYNC_STATE"){
           await base.execute(
               'CREATE TABLE SYNC_STATE (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, activity BOOLEAN,goal BOOLEAN,hearRate BOOLEAN,noise BOOLEAN ,pressure BOOLEAN,sleep BOOLEAN,spo BOOLEAN,sport BOOLEAN,hrv BOOLEAN)');
         }
       }
      }
      ///这里维护更新表
      for (var e in list) {
        if(e["name"] is String){
          if(e["name"] == "BIND_DEVICE"){
          }else if(e["name"] == "DEVICE_INFO"){
            List names = [
              "fw_major_version","fw_minor_version","fw_type","nw_major_version","nw_minorr_version","nw_type","current_language","switch_language",
              "product_id", "factory_id","customer_id","production_date","batch_num","serial_num","color_code",
              "gps_soc_name","width","height","angle","recoveryMode","photoNum"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(DEVICE_INFO)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                if(name == "recoveryMode"){
                  await base.execute('ALTER TABLE DEVICE_INFO ADD COLUMN $name BOOLEAN');
                }else{
                  await base.execute('ALTER TABLE DEVICE_INFO ADD COLUMN $name INTEGER');
                }

              }
            }
          }else if(e["name"] == "DIAL_INFO"){

          }else if(e["name"] == "ALL_DIAL_INFO"){

          }else if(e["name"] == "SPORT_DATA_HEAD"){

            List names = [
              "swimDistance","maxElevation","minElevation","avgElevation","climbHeight","met","elevationItem","uploadStatus","avgPower",
              "metSupport","elevationSupport","avgPowerSupport","speedPaceItem","speedPaceSupport","restCaloriesSupport","totalRestCalories","strava"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(SPORT_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                if(name == "uploadStatus"){
                  await base.execute('ALTER TABLE SPORT_DATA_HEAD ADD COLUMN $name BOOLEAN');
                }else if(name == "speedPaceItem" || name == "elevationItem"){
                  await base.execute('ALTER TABLE SPORT_DATA_HEAD ADD COLUMN $name TEXT');
                }else{
                  await base.execute('ALTER TABLE SPORT_DATA_HEAD ADD COLUMN $name INTEGER');
                }

              }
            }

          }else if(e["name"] == "HEART_RATE_DATA_HEAD"){
            List names = [
              "uploadStatus"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(HEART_RATE_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE HEART_RATE_DATA_HEAD ADD COLUMN $name BOOLEAN');
              }
            }

          }else if(e["name"] == "STRESS_DATA_HEAD"){
            List names = [
              "uploadStatus"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(STRESS_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE STRESS_DATA_HEAD ADD COLUMN $name BOOLEAN');
              }
            }

          }else if(e["name"] == "SPO_DATA_HEAD"){
            List names = [
              "uploadStatus"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(SPO_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE SPO_DATA_HEAD ADD COLUMN $name BOOLEAN');
              }
            }

          }else if(e["name"] == "NOISE_DATA_HEAD"){
            List names = [
              "uploadStatus"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(NOISE_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE NOISE_DATA_HEAD ADD COLUMN $name BOOLEAN');
              }
            }

          }else if(e["name"] == "SLEEP_DATA_HEAD"){
            List names = [
              "uploadStatus"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(SLEEP_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE SLEEP_DATA_HEAD ADD COLUMN $name BOOLEAN');
              }
            }

          }else if(e["name"] == "ACTIVITY_DATA_HEAD"){
            List names = [
              "uploadStatus","floors_climbed_support","total_floors_climbed"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(ACTIVITY_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                if(name == "uploadStatus"){
                  await base.execute('ALTER TABLE ACTIVITY_DATA_HEAD ADD COLUMN $name BOOLEAN');
                }else{
                  await base.execute('ALTER TABLE ACTIVITY_DATA_HEAD ADD COLUMN $name INTEGER');
                }
              }
            }

          }else if(e["name"] == "HRV_DATA_HEAD"){
            List names = [
              "uploadStatus","sleepMax","sleepMin"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(HRV_DATA_HEAD)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                if(name == "uploadStatus"){
                  await base.execute('ALTER TABLE HRV_DATA_HEAD ADD COLUMN $name BOOLEAN');
                }else{
                  await base.execute('ALTER TABLE HRV_DATA_HEAD ADD COLUMN $name INTEGER');
                }

              }
            }

          }else if(e["name"] == "USER_INFO_DATA"){

          }else if(e["name"] == "GOALS_DATA"){
            List names = [
              "uploadStatus"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(GOALS_DATA)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE GOALS_DATA ADD COLUMN $name BOOLEAN');
              }
            }

          }else if(e["name"] == "ContactAndCommonReplay_DATA"){

          }else if(e["name"] == "NoticeOpenCloseState_DATA"){

          }else if(e["name"] == "Time_Weather_Data"){

          }else if(e["name"] == "SYNC_TIME"){
            List names = [
              "hrv"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(SYNC_TIME)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE SYNC_TIME ADD COLUMN $name TEXT');
              }
            }

          }else if(e["name"] == "SYNC_STATE"){
            List names = [
              "hrv"
            ];
            List<Map<String, Object?>> list = await base.rawQuery("PRAGMA table_info(SYNC_STATE)");
            List<String> sqlNames = [];
            for (var e in list) {
              sqlNames.add(e["name"] as String);
            }
            for (var name in names) {
              if(!sqlNames.contains(name)){
                await base.execute('ALTER TABLE SYNC_STATE ADD COLUMN $name BOOLEAN');
              }
            }

          }
        }
      }
    }

    return;
  }

  /// 创建表
  Future _onCreate(Database db, int version) async {
    ///绑定设备表结构
    await db.execute('CREATE TABLE BIND_DEVICE ('
        'id INTEGER PRIMARY KEY, '
        'userID INTEGER, '
        'name TEXT, '
        'address TEXT, '
        'code TEXT,'
        'blueName TEXT,'
        'lastBind BOOLEAN'
        ')');

    ///设备信息表结构
    await db.execute('CREATE TABLE DEVICE_INFO ('
        'id INTEGER PRIMARY KEY, '
        'name TEXT, address TEXT, '
        'device_id INTEGER,'
        'major_version INTEGER,'
        'minor_version INTEGER,'
        'micro_version INTEGER,'
        'pair_flag INTEGER,'
        'platform INTEGER,'
        'shape INTEGER,'
        'dev_type INTEGER,'
        'batteryLevel INTEGER,'
        'mac_addr TEXT,'
        'bt_addr TEXT,'
        'bt_name TEXT,'
        'font_major_version INTEGER,'
        'font_minor_version INTEGER,'
        'font_micro_version INTEGER,'
        'width INTEGER,'
        'height INTEGER,'
        'angle INTEGER,'
        'recoveryMode BOOLEAN,'
        'photoNum INTEGER,'
        'product_id INTEGER,'
        'factory_id INTEGER,'
        'customer_id INTEGER,'
        'production_date INTEGER,'
        'batch_num INTEGER,'
        'serial_num INTEGER,'
        'color_code INTEGER,'
        'fw_major_version INTEGER,'
        'fw_minor_version INTEGER,'
        'fw_type INTEGER,'
        'nw_major_version INTEGER,'
        'nw_minorr_version INTEGER,'
        'nw_type INTEGER,'
        'current_language INTEGER,'
        'switch_language INTEGER,'
        'deviceColor INTEGER'
        ')');

    ///表盘信息表结构
    await db.execute('CREATE TABLE DIAL_INFO ('
        'id INTEGER PRIMARY KEY, '
        'userID INTEGER,dialId INTEGER, deviceId TEXT, '
        'dialName TEXT,'
        'fileName TEXT,'
        'dialVersion TEXT,'
        'newDialTime INTEGER,'
        'packageCompressSize REAL,'
        'packageSize REAL,'
        'packageUrl TEXT,'
        'previewUrl TEXT,'
        'screedPreviewUrl TEXT,'
        'type INTEGER,'
        'sort INTEGER,'
        'current INTEGER'
        ')');
    ///所有表盘
    await db.execute('CREATE TABLE ALL_DIAL_INFO ('
        'id INTEGER PRIMARY KEY,'
        'userID INTEGER,'
        'dialId INTEGER,'
        'deviceId TEXT,'
        'dialVersion TEXT,'
        'dialName TEXT,'
        'fileName TEXT,'
        'newDialTime INTEGER,'
        'packageCompressSize REAL,'
        'packageSize REAL,'
        'packageUrl TEXT,'
        'previewUrl TEXT,'
        'screedPreviewUrl TEXT,'
        'type INTEGER,'
        'current INTEGER'
        ')');

    ///运动表结构
    await db.execute('CREATE TABLE SPORT_DATA_HEAD ('
        'id INTEGER PRIMARY KEY, '
        'userID INTEGER, deviceId TEXT, '
        'creatTime TEXT,'
        'startTime TEXT,'
        'endTime TEXT,'
        'sportType INTEGER,'
        'isConnectApp INTEGER,'
        'sportStartType INTEGER,'
        'durations INTEGER,'
        'goalType INTEGER,'
        'goalData INTEGER,'
        'avgHrValue INTEGER,'
        'maxHrValue INTEGER,'
        'minHrValue INTEGER,'
        'warmUpTime INTEGER,'
        'fatBurningTime INTEGER,'
        'aerobicExerciseTime INTEGER,'
        'anaerobicExerciseTime INTEGER,'
        'extremeExerciseTime INTEGER,'
        'totalStep INTEGER,'
        'totalCalories INTEGER,'
        'totalDistance INTEGER,'
        'avgKmPace INTEGER,'
        'fastKmPace INTEGER,'
        'avgSpeed INTEGER,'
        'fastSpeed INTEGER,'
        'avgStepFrequency INTEGER,'
        'maxStepFrequency INTEGER,'
        'avgStepStride INTEGER,'
        'maxStepStride INTEGER,'
        'trainingEffect INTEGER,'
        'vozmax INTEGER,'
        'grade INTEGER,'
        'recoveryTime INTEGER,'
        'hrItemCount INTEGER,'
        'kmSpeedCount INTEGER,'
        'paceCount INTEGER,'
        'stepFrequencyCount INTEGER,'
        'stepStrideCount INTEGER,'
        'avgPower INTEGER,'
        'swimDistance INTEGER,'
        'maxElevation INTEGER,'
        'minElevation INTEGER,'
        'avgElevation INTEGER,'
        'climbHeight INTEGER,'
        'metSupport INTEGER,'
        'elevationSupport INTEGER,'
        'avgPowerSupport INTEGER,'
        'uploadStatus BOOLEAN,'
        'met INTEGER,'
        'speedPaceSupport INTEGER,'
        'restCaloriesSupport INTEGER,'
        'totalRestCalories INTEGER,'
        'strava INTEGER,'
        'hrValueItem TEXT,'
        'kmSpeedItem TEXT,'
        'stepFrequencyItem TEXT,'
        'kmPaceItem TEXT,'
        'stepStrideItem TEXT,'
        'trailData TEXT,'
        'miSpeedItem TEXT,'
        'elevationItem TEXT,'
        'speedPaceItem TEXT,'
        'miPaceItem TEXT'
        ')');

    ///心率表结构
    await db.execute(
        'CREATE TABLE HEART_RATE_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER,silent_hr INTEGER,min INTEGER,max INTEGER,average INTEGER,raisedHr INTEGER,hr_interval TEXT, uploadStatus BOOLEAN,datas TEXT)');

    ///压力表结构
    await db.execute('CREATE TABLE STRESS_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER, min INTEGER,max INTEGER,average INTEGER,low INTEGER,usual INTEGER,higher INTEGER,veryHigh INTEGER, uploadStatus BOOLEAN,datas TEXT)');

    ///血氧表结构
    await db.execute(
        'CREATE TABLE SPO_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER,min INTEGER,max INTEGER,average INTEGER, uploadStatus BOOLEAN,datas TEXT)');

    ///噪音表结构
    await db.execute(
        'CREATE TABLE NOISE_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER,min INTEGER,max INTEGER,average INTEGER, uploadStatus BOOLEAN,datas TEXT)');

    ///HrV表结构
    await db.execute(
        'CREATE TABLE HRV_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER,min INTEGER,max INTEGER,average INTEGER,sleepMax INTEGER,sleepMin INTEGER, uploadStatus BOOLEAN,datas TEXT)');

    ///睡眠表结构
    await db.execute(
        'CREATE TABLE SLEEP_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, get_up_date TEXT, offset_last INTEGER,fall_asleep_time TEXT,get_up_time TEXT,total_sleep_time_mins INTEGER,wake_mins INTEGER,light_sleep_mins INTEGER,deep_sleep_mins INTEGER,rem_mins INTEGER,wake_count INTEGER,light_sleep_count INTEGER,deep_sleep_count INTEGER,rem_count INTEGER,sleep_score INTEGER, uploadStatus BOOLEAN,datas TEXT)');

    ///日常活动表结构
    await db.execute(
        'CREATE TABLE ACTIVITY_DATA_HEAD (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creat_time TEXT, offset_last INTEGER,total_step INTEGER,total_exercise_min INTEGER, total_activity_calories INTEGER,total_rest_calories INTEGER,total_distances INTEGER,total_stand_hour INTEGER,activity_item_count INTEGER,floors_climbed_support INTEGER,total_floors_climbed INTEGER,uploadStatus BOOLEAN,datas TEXT)');

    ///用户的基本信息,出生年月、单位 用户信息更新版本
    await db.execute('CREATE TABLE USER_INFO_DATA (id INTEGER PRIMARY KEY, userID TEXT, deviceId TEXT,userUpdateVersion TEXT, create_time TEXT,userInfo TEXT,userUnit TEXT)');

    ///设定目标
    await db.execute(
        'CREATE TABLE GOALS_DATA (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, creatTime TEXT,calories INTEGER,exercise INTEGER,stand INTEGER,steps INTEGER,distance INTEGER,sportDay INTEGER,sleepTotal INTEGER,notifySwitchFlag INTEGER,notifyFlag INTEGER,uploadStatus BOOLEAN)');

    ///联系人(Contact)，短信快捷回复用语、来电快捷回复用语表结构
    await db.execute(
        'CREATE TABLE ContactAndCommonReplay_DATA (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, createTime TEXT,contact_person TEXT, short_message_reply TEXT,incoming_call_reply TEXT )');

    /// 消息通知白名单、已经开关监听之类  noticeOpenClose(为开关和健康监测中的通知类封装)
    await db.execute(
        'CREATE TABLE NoticeOpenCloseState_DATA (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, createTime TEXT,messageNotice TEXT,noticeOpenClose TEXT,healthyNotice TEXT )');
    //勿扰设置 时钟  TimeZoneModel 天气
    await db.execute(
        'CREATE TABLE Time_Weather_Data (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, createTime TEXT,weatherModel TEXT,notDisturbModel TEXT,timeZoneModel TEXT )');
    ///记录同步云端时间
    await db.execute(
        'CREATE TABLE SYNC_TIME (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, activity TEXT,goal TEXT,hearRate TEXT,noise TEXT ,pressure TEXT,sleep TEXT,spo TEXT,sport TEXT,hrv TEXT)');

    ///记录同步状态
    await db.execute(
        'CREATE TABLE SYNC_STATE (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, activity BOOLEAN,goal BOOLEAN,hearRate BOOLEAN,noise BOOLEAN ,pressure BOOLEAN,sleep BOOLEAN,spo BOOLEAN,sport BOOLEAN,hrv BOOLEAN)');

    ///重发绑定信息
  // await db.execute('CREATE TABLE Retry_Upload_Data (id INTEGER PRIMARY KEY, userID INTEGER, deviceId TEXT, createTime TEXT,type TEXT,content TEXT )');

    await db.insert("SYNC_TIME", {"userID":1});
    return db;
  }
  /// 更新表
  Future _onUpgrade(Database db, int oldVersion, int newVersion) async {
    CreekLog.info("表结构老版本：$oldVersion--新版本$newVersion");
    if(newVersion > oldVersion){
      await updateDatabase(db);
    }
    return db;
  }

  Future<void> close(Database database) async {
    await  database!.close();
  }
}
