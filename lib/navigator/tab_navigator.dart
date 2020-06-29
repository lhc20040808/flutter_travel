import 'package:flutter/material.dart';
import 'package:fluttertravel/pages/home_page.dart';
import 'package:fluttertravel/pages/my_page.dart';
import 'package:fluttertravel/pages/search_page.dart';
import 'package:fluttertravel/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  int _curIndex = 0;
  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          pageController.jumpToPage(index);
          setState(() {
            _curIndex = index;
          });
        },
        currentIndex: _curIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomItem("首页", Icons.home, 0),
          _bottomItem("搜索", Icons.search, 1),
          _bottomItem("旅拍", Icons.camera_alt, 2),
          _bottomItem("我的", Icons.account_circle, 3),
        ],
      ),
    );
  }

  _bottomItem(String name, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
        ),
        activeIcon: Icon(
          icon,
        ),
        title: Text(
          name,
        ));
  }
}
