import 'package:creekbase/creek_base.dart';

extension ExtensionIntScreen on int{

  dynamic get w => _w();
  dynamic get sp => _sp();
  dynamic get px => _px();


  _w(){
    return CreekScreen.getInstance().getWidth(double.parse(toString()));
  }
  _sp(){
    return CreekScreen.getInstance().getSp(double.parse(toString()));
  }
  _px(){
    return CreekScreen.getInstance().getWidthPx(double.parse(toString()));
  }
}

extension ExtensionDoubleScreen on double{

  dynamic get w => _w();
  dynamic get h => _h();
  dynamic get sp => _sp();
  dynamic get px => _px();

  _w(){
    return CreekScreen.getInstance().getWidth(double.parse(toString()));
  }
  _h(){
    return CreekScreen.getInstance().getHeight(double.parse(toString()));
  }
  _sp(){
    return CreekScreen.getInstance().getSp(double.parse(toString()));
  }
  _px(){
    return CreekScreen.getInstance().getWidthPx(double.parse(toString()));
  }
}