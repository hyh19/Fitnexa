import 'package:creek_blue_manage_example/log_page.dart';
import 'package:creek_blue_manage_example/pages/home/page/home_page.dart';
import 'package:creek_blue_manage_example/tabbar/creek_bottom_bar.dart';
import 'package:flutter/material.dart';


class CreekTabBarPage extends StatefulWidget {
  const CreekTabBarPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreekTabBarPageState();
  }
}

class CreekTabBarPageState extends State<CreekTabBarPage>
     {
  final Color _activeColor = const Color(0xFF12B770);
  final Color _inActiveColor = const Color(0xFF101A2E);
  PageController? pageController;



  @override
  // TODO: implement wantKeepAlive
  // bool get wantKeepAlive => true;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: _currentIndex);

  }

  int _currentIndex = 0;
  int categoryId = 0;
  final List<Widget> _pageList = [
    HomePage(),
    LogPage(),
    Container(),
  ];

  Widget _buildBottomBar() {
    return CreekBottomBar(
      containerHeight: 55,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) {
        setState(() {
          _currentIndex = index;
          pageController!.jumpToPage(index);
        });
      },
      items: <BottomBarItem>[
        BottomBarItem(
          icon: const Icon(Icons.bluetooth,color: Colors.black,),
          activeIcon: const Icon(Icons.bluetooth,color: Colors.blue,),
          title: const Text('蓝牙',style: TextStyle(fontSize: 15),),
          activeColor: _activeColor,
          inactiveColor: _inActiveColor,
          textAlign: TextAlign.center,
        ),
        BottomBarItem(
          icon: const Icon(Icons.ac_unit,color: Colors.black,),
          activeIcon: const  Icon(Icons.ac_unit,color: Colors.blue,),
          title: const Text('日志',style: TextStyle(fontSize: 15)),
          activeColor: _activeColor,
          inactiveColor: _inActiveColor,
          textAlign: TextAlign.center,
        ),
        BottomBarItem(
          icon: const Icon(Icons.access_alarm,color: Colors.black,),
          activeIcon: const Icon(Icons.access_alarm,color: Colors.blue,),
          title: const Text('其他',style: TextStyle(fontSize: 15)),
          activeColor: _activeColor,
          inactiveColor: _inActiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: _pageList,
        ),
        bottomNavigationBar: _buildBottomBar());
  }
}
