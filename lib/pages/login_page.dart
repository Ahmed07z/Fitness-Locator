import 'dart:ui';
import 'package:f1/pages/Login_Controller.dart';
import 'package:get/get.dart';
import 'package:f1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final controller = Get.put(LoginController());

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text("Login Page"), backgroundColor: Colors.blueGrey),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.grey, Colors.black],
          )),
          child: Center(child: Obx(() {
            if (controller.googleAccount.value == null) {
              return buildloginbutoon();
            } else {
              return BuildProfileView();
            }
          })),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueGrey,
          iconSize: 35,
          selectedFontSize: 15,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap:(index) =>setState(()=> currentIndex =index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
               ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',
              ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
           ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_camera),
                label: 'Upload',
             )
          ],
        ));
  }

  Column BuildProfileView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(controller.googleAccount.value?.photoUrl ?? '')
                  .image,
          radius: 100,
        ),
        Text(controller.googleAccount.value?.displayName ?? '',
            style: TextStyle(color: Colors.white, fontSize: 35)),
        Text(controller.googleAccount.value?.email ?? '',
            style: TextStyle(color: Colors.white)),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: Text("Logout"),
          onPressed: () {
            controller.logout();
          },
        ),
      ],
    );
  }

  FloatingActionButton buildloginbutoon() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: Image.asset(
        "assets/images/Gicon.jpg",
        height: 45,
        width: 45,
      ),
      label: Text("Sign in with Google"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
