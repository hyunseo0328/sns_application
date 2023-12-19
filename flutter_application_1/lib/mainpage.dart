import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpages/homescreen.dart';
import 'package:flutter_application_1/mainpages/mylikescreen.dart';
import 'package:flutter_application_1/mainpages/myscreen.dart';
import 'package:flutter_application_1/mainpages/showgridscreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: 'home',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: 'like',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: 'alarms',
      icon: Icon(Icons.announcement),
    ),
    BottomNavigationBarItem(
      label: 'my account',
      icon: Icon(Icons.account_circle),
    ),
  ];
  List pages = [
    HomeScreen(),
    ShowGridScreen(),
    MyLikeScreen(),
    MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PETstagram',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.yellow[600],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
