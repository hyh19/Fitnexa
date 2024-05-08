
part of creek_blue;


///功能表解析类
class  FuncTable{

  static dynamic funcTable(CmdId type,int table){
    dynamic valueData;
    switch(type){
      case CmdId.screen:
        valueData = ScreenTable().fromTable(table);
        break;
      case CmdId.sportType:
        valueData = SportTable().fromTable(table);
        break;
    }
    return valueData;
  }
}


///屏幕亮度功能表
class ScreenTable{
  ///是否支持夜间自动亮度调整  bit0
  bool night = false;

  ///是否支持常亮模式选择，支持用aod_time_setting ，不支持用aod_switch_flag  bit1
  bool steady = false;

  ScreenTable fromTable(int table) {
    ScreenTable screenTable = ScreenTable();
     String str = table.toRadixString(2);
    if(str.isNotEmpty){
      screenTable.night = int.parse(str.substring(str.length-1,str.length)) == 1;
    }
    if(str.length > 1){
      screenTable.steady = int.parse(str.substring(str.length-2,str.length-1)) == 1;
    }
    return screenTable;
  }
}

///多运动功能表
class SportTable{

  ///是否支持梅脱  bit0
  bool met = false;

  ///是否支持海拔高度  bit1
  bool elevation = false;

  ///是否支持跑步功率  bit2
  bool avgPower = false;

  SportTable fromTable(int table) {
    SportTable sportTable = SportTable();
    String str = table.toRadixString(2);
    if(str.isNotEmpty){
      sportTable.met = int.parse(str.substring(str.length-1,str.length)) == 1;
    }
    if(str.length > 1){
      sportTable.elevation = int.parse(str.substring(str.length-2,str.length-1)) == 1;
    }
    if(str.length > 2){
      sportTable.avgPower = int.parse(str.substring(str.length-3,str.length-2)) == 1;
    }
    return sportTable;
  }
}