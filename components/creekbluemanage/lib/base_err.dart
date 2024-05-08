
import 'package:creek_blue_manage/creek_enum.dart';

///基础命令头部错误码
class CreeKError{
   static String error(CodeType codeType){
     String avalue = "";
     switch(codeType){
       case CodeType.code0:
         avalue = "正常";
         break;
       case CodeType.code1:
         avalue = "命令ID不支持";
         break;
       case CodeType.code2:
         avalue = "校验错误";
         break;
       case CodeType.code3:
         avalue = " 应用内部错误";
         break;
       case CodeType.code4:
         avalue = "内存不足";
         break;
       case CodeType.code5:
         avalue = "无效长度";
         break;
       case CodeType.code6:
         avalue = "无效标志，帧命令类型不支持";
         break;
       case CodeType.code100:
         avalue = "解码错误";
         break;
     }
     return avalue;
   }
}
