import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:routine/screens/profile_screen.dart';
import 'package:routine/screens/routine_screen.dart';
import 'package:routine/screens/schedule_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> pageList = [
    RoutineScreen(),
    ScheduleScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pageList[_pageIndex],
      body: BottomBarPageTransition(
        builder: (_, index) => _getBody(index),
        transitionType: TransitionType.slide,
        currentIndex: _pageIndex,
        totalLength: pageList.length,
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBody(int index) {
    return Container(
      child: pageList[index],
    );
  }

  Widget _getBottomBar() {
    return BottomNavigationBar(
      currentIndex: _pageIndex,
      onTap: (value) {
        setState(() {
          _pageIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Routine"),
        BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "Schedule"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
