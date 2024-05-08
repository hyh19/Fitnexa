import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigator_manager.dart';

/// @desc: 导航监听
class MyNavigatorObserver extends NavigatorObserver {
 @override
  void didPush(Route route, Route? previousRoute) {
   debugPrint("didPush router : $route |  previousRoute: $previousRoute");
   NavigatorManager().addRouter(route);
  }

 @override
  void didPop(Route route, Route? previousRoute) {
  debugPrint("didPop router : $route |  previousRoute: $previousRoute");

   NavigatorManager().removeRouter(route);
    super.didPop(route, previousRoute);
  }


  @override
  void didRemove(Route route, Route? previousRoute) {
   debugPrint("didRemove router : $route |  previousRoute: $previousRoute");

    NavigatorManager().removeRouter(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
   debugPrint("didReplace router : $newRoute |  previousRoute: $oldRoute");

    NavigatorManager().replaceRouter(newRoute!, oldRoute!);
  }
}
