import 'package:f1/pages/FitnessRegisteration.dart';
import 'package:f1/pages/PromotionScreen.dart';
import 'package:f1/pages/SearchPage.dart';
import 'package:f1/pages/login_page.dart';
import 'package:f1/pages/profilePage.dart';
import 'package:f1/widgeds/AppBarWidged.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    SearchPage(),
    PromotionScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          iconSize: 35,
          selectedFontSize: 15,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.notifications),
            //   label: 'Notification',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: 'Profile',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   label: 'Search',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image_sharp),
              label: 'Promotions',
            )
          ],
        ));
  }
}
