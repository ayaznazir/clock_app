import 'package:clock_app/constants/constant.dart';
import 'package:clock_app/views/alarm_screen/alarm_screen.dart';
import 'package:clock_app/views/home_screen/home_screen.dart';
import 'package:clock_app/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  bool isLoading = false;
  bool isLoading1 = false;
  bool isLoading2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        allowImplicitScrolling: true,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        controller: _pageController,
        children: const <Widget>[
          HomeScreen(),
          AlarmScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: backgroundColor,
              blurRadius: 5,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: backgroundColor,
          type: BottomNavigationBarType.fixed,
          onTap: _onTappedBar,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 5,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/home.png',
                height: 25,
                width: 25,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/clock.png',
                  height: 25, width: 25, color: Colors.white),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/person.png',
                  height: 25, width: 25, color: Colors.white),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
