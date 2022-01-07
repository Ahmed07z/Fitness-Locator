import 'dart:ui';
import 'package:f1/pages/HomePage.dart';
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
    );
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
        Container(margin: EdgeInsets.all(20),
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(10.0),
                  
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              onPressed: () {
                Navigator?.push(
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              
              label:Text("Move To Home" ),
              icon: Icon(Icons.arrow_forward),
              ),
        ),
        Container(margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ActionChip(
              avatar: Icon(Icons.logout),
              label: Text("Logout"),
              onPressed: () {
                controller.logout();
              },
            ),
          ),
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
