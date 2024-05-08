import 'dart:math';

import 'package:creekhealth/creek_strava.dart';
import 'package:creekhealth/creek_strava_entity.dart';
import 'package:creekhealth/creekhealth.dart';
import 'package:creekhealth/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

enum AppState {
  DATA_NOT_FETCHED,
  FETCHING_DATA,
  DATA_READY,
  NO_DATA,
  AUTHORIZED,
  AUTH_NOT_GRANTED,
  DATA_ADDED,
  DATA_DELETED,
  DATA_NOT_ADDED,
  DATA_NOT_DELETED,
  STEPS_READY,
}

class _MyAppState extends State<MyApp> {
  List<HealthDataPoint> _healthDataList = [];
  AppState _state = AppState.DATA_NOT_FETCHED;
  int _nofSteps = 0;
  static final types = dataTypesAndroid;
  final permissions = types.map((e) => HealthDataAccess.READ_WRITE).toList();
  HealthFactory health = HealthFactory(useHealthConnectIfAvailable: true);


  Future authorize() async {
    // If we are trying to read Step Count, Workout, Sleep or other data that requires
    // the ACTIVITY_RECOGNITION permission, we need to request the permission first.
    // This requires a special request authorization call.
    //
    // The location permission is requested for Workouts using the Distance information.
    await Permission.activityRecognition.request();
    await Permission.location.request();

    // Check if we have permission
    bool? hasPermissions =
    await health.hasPermissions(types, permissions: permissions);

    // hasPermissions = false because the hasPermission cannot disclose if WRITE access exists.
    // Hence, we have to request with WRITE as well.
    hasPermissions = false;

    bool authorized = false;
    if (!hasPermissions) {
      // requesting access to the data types before reading them
      try {
        authorized =
        await health.requestAuthorization(types, permissions: permissions);
      } catch (error) {
        print("Exception in authorize: $error");
      }
    }

    setState(() =>
    _state =
    (authorized) ? AppState.AUTHORIZED : AppState.AUTH_NOT_GRANTED);
  }

  /// Fetch data points from the health plugin and show them in the app.
  Future fetchData() async {
    setState(() => _state = AppState.FETCHING_DATA);

    // get data within the last 24 hours
    final now = DateTime.now();
    final yesterday = now.subtract(Duration(hours: 24));

    // Clear old data points
    _healthDataList.clear();

    try {
      // fetch health data
      List<HealthDataPoint> healthData =
      await health.getHealthDataFromTypes(yesterday, now, types);
      // save all the new data points (only the first 100)
      _healthDataList.addAll(
          (healthData.length < 100) ? healthData : healthData.sublist(0, 100));
    } catch (error) {
      print("Exception in getHealthDataFromTypes: $error");
    }

    // filter out duplicates
    _healthDataList = HealthFactory.removeDuplicates(_healthDataList);

    // print the results
    _healthDataList.forEach((x) => print(x));

    // update the UI to display the results
    setState(() {
      _state = _healthDataList.isEmpty ? AppState.NO_DATA : AppState.DATA_READY;
    });
  }

  /// Add some random health data.
  Future addData() async {
    final now = DateTime.now();
    final earlier = now.subtract(Duration(minutes: 20));

    // Add data for supported types
    // NOTE: These are only the ones supported on Androids new API Health Connect.
    // Both Android's Google Fit and iOS' HealthKit have more types that we support in the enum list [HealthDataType]
    // Add more - like AUDIOGRAM, HEADACHE_SEVERE etc. to try them.
    bool success = true;
    success &= await health.writeHealthData(
        10, HealthDataType.BODY_FAT_PERCENTAGE, earlier, now);

    success &= await health.writeHealthData(
        1.925, HealthDataType.HEIGHT, earlier, now);

    success &=
    await health.writeHealthData(90, HealthDataType.WEIGHT, earlier, now);

    success &= await health.writeHealthData(
        90, HealthDataType.HEART_RATE, earlier, now);

    success &=
    await health.writeHealthData(90, HealthDataType.STEPS, earlier, now);

    success &= await health.writeHealthData(
        200, HealthDataType.ACTIVE_ENERGY_BURNED, earlier, now);
    success &= await health.writeHealthData(
        70, HealthDataType.HEART_RATE, earlier, now);
    success &= await health.writeHealthData(
        37, HealthDataType.BODY_TEMPERATURE, earlier, now);
    success &= await health.writeBloodOxygen(98, earlier, now, flowRate: 1.0);
    success &= await health.writeHealthData(
        105, HealthDataType.BLOOD_GLUCOSE, earlier, now);
    success &=
    await health.writeHealthData(1.8, HealthDataType.WATER, earlier, now);
    success &= await health.writeWorkoutData(
        HealthWorkoutActivityType.AMERICAN_FOOTBALL,
        now.subtract(Duration(minutes: 15)),
        now,
        totalDistance: 2430,
        totalEnergyBurned: 400);
    success &= await health.writeBloodPressure(90, 80, earlier, now);

    // Store an Audiogram
    // Uncomment these on iOS - only available on iOS
    // const frequencies = [125.0, 500.0, 1000.0, 2000.0, 4000.0, 8000.0];
    // const leftEarSensitivities = [49.0, 54.0, 89.0, 52.0, 77.0, 35.0];
    // const rightEarSensitivities = [76.0, 66.0, 90.0, 22.0, 85.0, 44.5];

    // success &= await health.writeAudiogram(
    //   frequencies,
    //   leftEarSensitivities,
    //   rightEarSensitivities,
    //   now,
    //   now,
    //   metadata: {
    //     "HKExternalUUID": "uniqueID",
    //     "HKDeviceName": "bluetooth headphone",
    //   },
    // );

    setState(() {
      _state = success ? AppState.DATA_ADDED : AppState.DATA_NOT_ADDED;
    });
  }

  /// Delete some random health data.
  Future deleteData() async {
    final now = DateTime.now();
    final earlier = now.subtract(Duration(hours: 24));

    bool success = true;
    for (HealthDataType type in types) {
      success &= await health.delete(type, earlier, now);
    }

    setState(() {
      _state = success ? AppState.DATA_DELETED : AppState.DATA_NOT_DELETED;
    });
  }

  /// Fetch steps from the health plugin and show them in the app.
  Future fetchStepData() async {
    int? steps;

    // get steps for today (i.e., since midnight)
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);

    bool requested = await health.requestAuthorization([HealthDataType.STEPS]);

    if (requested) {
      try {
        steps = await health.getTotalStepsInInterval(midnight, now);
      } catch (error) {
        print("Caught exception in getTotalStepsInInterval: $error");
      }

      print('Total number of steps: $steps');

      setState(() {
        _nofSteps = (steps == null) ? 0 : steps;
        _state = (steps == null) ? AppState.NO_DATA : AppState.STEPS_READY;
      });
    } else {
      print("Authorization not granted - error in authorization");
      setState(() => _state = AppState.DATA_NOT_FETCHED);
    }
  }

  /// 移除健康权限
  Future revokeAccess() async {
    try {
      await health.revokePermissions();
    } catch (error) {
      print("Caught exception in revokeAccess: $error");
    }
  }

  Widget _authorized() {
    return Text('Authorization granted!');
  }

  Widget _authorizationNotGranted() {
    return Text('Authorization not given. '
        'For Android please check your OAUTH2 client ID is correct in Google Developer Console. '
        'For iOS check your permissions in Apple Health.');
  }

  Widget _dataAdded() {
    return Text('Data points inserted successfully!');
  }

  Widget _contentDataReady() {
    return ListView.builder(
        itemCount: _healthDataList.length,
        itemBuilder: (_, index) {
          HealthDataPoint p = _healthDataList[index];
          if (p.value is AudiogramHealthValue) {
            return ListTile(
              title: Text("${p.typeString}: ${p.value}"),
              trailing: Text('${p.unitString}'),
              subtitle: Text('${p.dateFrom} - ${p.dateTo}'),
            );
          }
          if (p.value is WorkoutHealthValue) {
            return ListTile(
              title: Text(
                  "${p.typeString}: ${(p.value as WorkoutHealthValue)
                      .totalEnergyBurned} ${(p.value as WorkoutHealthValue)
                      .totalEnergyBurnedUnit?.name}"),
              trailing: Text(
                  '${(p.value as WorkoutHealthValue).workoutActivityType
                      .name}'),
              subtitle: Text('${p.dateFrom} - ${p.dateTo}'),
            );
          }
          return ListTile(
            title: Text("${p.typeString}: ${p.value}"),
            trailing: Text('${p.unitString}'),
            subtitle: Text('${p.dateFrom} - ${p.dateTo}'),
          );
        });
  }

  Widget _contentNoData() {
    return Text('No Data to show');
  }

  Widget _contentNotFetched() {
    return Column(
      children: [
        Text('Press the download button to fetch data.'),
        Text('Press the plus button to insert some random data.'),
        Text('Press the walking button to get total step count.'),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  Widget _contentFetchingData() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(
              strokeWidth: 10,
            )),
        Text('Fetching data...')
      ],
    );
  }

  Widget _dataDeleted() {
    return Text('Data points deleted successfully!');
  }

  Widget _stepsFetched() {
    return Text('Total number of steps: $_nofSteps');
  }

  Widget _dataNotAdded() {
    return Text('Failed to add data');
  }

  Widget _dataNotDeleted() {
    return Text('Failed to delete data');
  }

  Widget _content() {
    if (_state == AppState.DATA_READY)
      return _contentDataReady();
    else if (_state == AppState.NO_DATA)
      return _contentNoData();
    else if (_state == AppState.FETCHING_DATA)
      return _contentFetchingData();
    else if (_state == AppState.AUTHORIZED)
      return _authorized();
    else if (_state == AppState.AUTH_NOT_GRANTED)
      return _authorizationNotGranted();
    else if (_state == AppState.DATA_ADDED)
      return _dataAdded();
    else if (_state == AppState.DATA_DELETED)
      return _dataDeleted();
    else if (_state == AppState.STEPS_READY)
      return _stepsFetched();
    else if (_state == AppState.DATA_NOT_ADDED)
      return _dataNotAdded();
    else if (_state == AppState.DATA_NOT_DELETED)
      return _dataNotDeleted();
    else
      return _contentNotFetched();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: HealthWidget(),
        // body: Container(
        //   child: Column(
        //     children: [
        //       Wrap(
        //         spacing: 10,
        //         children: [
        //           TextButton(
        //               onPressed: authorize,
        //               child:
        //               Text("Auth", style: TextStyle(color: Colors.white)),
        //               style: ButtonStyle(
        //                   backgroundColor:
        //                   MaterialStatePropertyAll(Colors.blue))),
        //           TextButton(
        //               onPressed: fetchData,
        //               child: Text("Fetch Data",
        //                   style: TextStyle(color: Colors.white)),
        //               style: ButtonStyle(
        //                   backgroundColor:
        //                   MaterialStatePropertyAll(Colors.blue))),
        //           TextButton(
        //               onPressed: addData,
        //               child: Text("Add Data",
        //                   style: TextStyle(color: Colors.white)),
        //               style: ButtonStyle(
        //                   backgroundColor:
        //                   MaterialStatePropertyAll(Colors.blue))),
        //           TextButton(
        //               onPressed: deleteData,
        //               child: Text("Delete Data",
        //                   style: TextStyle(color: Colors.white)),
        //               style: ButtonStyle(
        //                   backgroundColor:
        //                   MaterialStatePropertyAll(Colors.blue))),
        //           TextButton(
        //               onPressed: fetchStepData,
        //               child: Text("Fetch Step Data",
        //                   style: TextStyle(color: Colors.white)),
        //               style: ButtonStyle(
        //                   backgroundColor:
        //                   MaterialStatePropertyAll(Colors.blue))),
        //           TextButton(
        //               onPressed: revokeAccess,
        //               child: Text("Revoke Access",
        //                   style: TextStyle(color: Colors.white)),
        //               style: ButtonStyle(
        //                   backgroundColor:
        //                   MaterialStatePropertyAll(Colors.blue))),
        //         ],
        //       ),
        //       Divider(thickness: 3),
        //       Expanded(child: Center(child: _content()))
        //     ],
        //   ),
        // ),
      ),
    );
  }
}


class HealthWidget extends StatefulWidget {
  const HealthWidget({Key? key}) : super(key: key);

  @override
  State<HealthWidget> createState() => _HealthWidgetState();
}


class _HealthWidgetState extends State<HealthWidget> {

  bool author = false;

  String? steps;

  String? heartRate;

  String? bloodOxygenStr;

  String? kcalStr;

  String? distanceStr;


  int stepsCount = 0;

  int heartCount = 0;

  int bloodOxygen = 0;

  int kcal = 0;

  int distance = 0;


  /// 获取权限
  void authorize() {
    CreekHealth.authorize((a) {
      if (a) {
        author = a;
      } else {
        author = a;
      }

      setState(() {

      });
    });
  }


  /// 获取数据
  void fetchData() async {
    // CreekHealth.fetchData(DateTime.now(),DateTime.now(),(listData){
    //
    //   if(listData!.isNotEmpty){
    //
    //   }else{
    //
    //   }
    //
    // });

    DateTime startTime = DateTime(DateTime
        .now()
        .year, DateTime
        .now()
        .month, DateTime
        .now()
        .day, DateTime
        .now()
        .hour);
    DateTime endTime = startTime.add(const Duration(hours: 1));
    // startTime: startTime,endTime: endTime
    // int a = await CreekHealth.fetchStepsData();
    //
    // print('$a');

  }

  bool isLogin = false;

  @override
  void initState() {
    // TODO: implement initState
    authorize();
    super.initState();

    print('设置了');
    StravaManager.setupManager(clientId, clientSecret, (login) {
      isLogin = login;
      setState(() {

      });
    });
  }

  final String clientSecret = 'be1e5e53c498977a383a17bd4c4a97493c314bc9';
  final String clientId = '118141';

  void _authorizeDevice(BuildContext context) {
    StravaManager.authorizeDevice(context, (isSucceed){
      if(isSucceed){
        setState(() {
          isLogin = isSucceed;
        });
      }
    });
  }

  void _logout() {
    StravaManager().logout();
    isLogin = false;
    setState(() {

    });

  }

  // void _createGpxFile(){
  //    CreekSportModel model = CreekSportModel();
  //    model.startTime = "2023-12-21T13:02:13Z";
  //    model.endTime = "2023-12-21T13:04:53Z";
  //
  //    DateTime startDate = DateTime.parse(model.startTime ?? '');
  //    DateTime endDate = DateTime.parse(model.endTime ?? '');
  //    final timeInterval = endDate.difference(startDate).inSeconds;
  //
  //    List<int> eles = [];
  //    // Timer.periodic(Duration(seconds: 2), (Timer timer) {
  //    //   if (start.isAfter(end)) {
  //    //     timer.cancel();
  //    //     print('Timer stopped');
  //    //   } else {
  //    //     int randomValue = getRandomNumber(100, 200);
  //    //
  //    //   }
  //    // });
  //
  //    for(int i = 0; i < timeInterval; i+=2){
  //      int randomValue = getRandomNumber(100, 200);
  //      eles.add(randomValue);
  //    }
  //
  //
  //    model.elevationItem = eles;
  //    model.sportType = 2;
  //    model.creatTime = '2023-12-21';
  //    List<CreekSportLocationModel> trail = [];
  //    int latitude = 3777499;
  //    int longitude = -12241944;
  //
  //    for(int i = 0; i < (model.elevationItem?.length ?? 0); i++){
  //      latitude = latitude + i;
  //      longitude = longitude - i;
  //      final dataModel = CreekSportLocationModel.fromJson({'latitude' : latitude , 'longitude' : longitude });
  //      trail.add(dataModel);
  //      model.trailData = trail;
  //    }
  //
  //    final list = [model, model, model];
  //
  //    StravaManager.uploadSportModelList(list);
  //
  //    // StravaManager.configData(model);
  //
  // }



  void _createActivity(){

    StravaActivityEntity entity = StravaActivityEntity();

    entity.name = 'RideTest1';
    entity.type = 'Ride';
    entity.sportType = 'MountainBikeRide';
    entity.startDateLocal = "2023-12-20T13:02:13Z";//DateTime.now().toIso8601String();
    entity.elapsedTime = 56;
    entity.description = 'MountainBikeRideTest';
    entity.distance = 3;
    entity.trainer = 56;
    entity.commute = 56;
    StravaManager.createActivity(entity);

  }

  void _updateActivity() {
    StravaActivityEntity entity = StravaActivityEntity();
    entity.id = 10398420827;
    entity.name = 'RideTest1';
    entity.type = 'Ride';
    entity.sportType = 'MountainBikeRide';
    entity.startDateLocal = "2023-12-20T14:02:13Z";//DateTime.now().toIso8601String();
    entity.elapsedTime = 560;
    entity.description = 'MountainBikeRideTest';
    entity.distance = 30;
    entity.trainer = 560;
    entity.commute = 560;
    StravaManager.updateActivity(entity);
  }

  void _uploadActivity() async{

    String dir = (await getApplicationDocumentsDirectory())?.path ?? '';

    StravaActivityEntity entity = StravaActivityEntity();
    entity.name = 'RideTest1';
    entity.description = 'MountainBikeRideTest';
    entity.trainer = 0;
    entity.commute = 0;
    entity.externalId = 'RideTest1';
    entity.fileName = 'Bormes.gpx';
    entity.filePath = '$dir/Bormes.gpx';
    StravaManager.uploadActivity(entity);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('打开健康权限'),
              CupertinoSwitch(value: author, onChanged: (a) {
                authorize();
              })
            ],
          ),
          const SizedBox(height: 8,),
          TextButton(
              onPressed: () {
                // CreekHealth.fetchData(DateTime.now(),DateTime.now(),(value){
                //   print(value);
                // });

                fetchData();
              },
              style: const ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll(Colors.blue)),
              child: const Text("Fetch Data",
                  style: TextStyle(color: Colors.white))),
          const SizedBox(height: 8,),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              TextButton(
                  onPressed: () {
                    _authorizeDevice(context);
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("授权",
                      style: TextStyle(color: Colors.white))),
              const SizedBox(width: 20,),
              Text(("授权状态：$isLogin"),
                  style:const TextStyle(color: Colors.black)),
              const SizedBox(width: 20,),
              TextButton(
                  onPressed: () async {
                    _logout();
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("退出授权",
                      style: TextStyle(color: Colors.white))),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              TextButton(
                  onPressed: () {
                    // _createActivity();
                    // _createGpxFile();
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("创建运动",
                      style: TextStyle(color: Colors.white))),
              const SizedBox(width: 20,),
              TextButton(
                  onPressed: () {
                    // _updateActivity();
                    _uploadActivity();
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("更新运动",
                      style: TextStyle(color: Colors.white))),
              const Expanded(child: SizedBox()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    final now = DateTime.now();
                    final earlier = now.subtract(Duration(minutes: 20));

                    stepsCount += 1000;
                    // CreekHealth.addHealthStepsData(earlier, now,stepsCount.toDouble(), (p0){
                    //       if(p0){
                    //         setState(() {
                    //           steps = '$stepsCount steps';
                    //         });
                    //
                    //       }
                    // });

                  },
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("Add Steps Data",
                      style: TextStyle(color: Colors.white))),
              Text(steps ?? 'NO Data'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    final now = DateTime.now();
                    final earlier = now.subtract(Duration(minutes: 20));
                    heartCount++;
                    // CreekHealth.addHealthHeartRateData(earlier, now,heartCount.toDouble(), (p0){
                    //   if(p0){
                    //     setState(() {
                    //       heartRate = '$heartCount bpm';
                    //     });
                    //   }
                    // });

                  },
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("Add 心率 Data",
                      style: TextStyle(color: Colors.white))),
              Text(heartRate ?? 'NO Data'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    final now = DateTime.now();
                    final earlier = now.subtract(Duration(minutes: 20));
                    kcal += 1000;
                    // CreekHealth.addHealthWorkoutData(earlier, heartCount, 4,(p0){
                    //   if(p0){
                    //     setState(() {
                    //       kcalStr = '$kcal 热量';
                    //     });
                    //   }
                    // });

                  },
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("Add 卡路里 Data",
                      style: TextStyle(color: Colors.white))),
              Text(kcalStr ?? 'NO Data'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    final now = DateTime.now();
                    final earlier = now.subtract(Duration(minutes: 20));
                    distance += 1000;
                    // CreekHealth.addHealthWorkoutData(earlier, 1,distance, (p0){
                    //   if(p0){
                    //     setState(() {
                    //       distanceStr = '$distance 米';
                    //     });
                    //   }
                    // });

                  },
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.blue)),
                  child: const Text("Add 距离 Data",
                      style: TextStyle(color: Colors.white))),
              Text(distanceStr ?? 'NO Data'),
            ],
          ),

        ],
      ),
    );
  }
}

