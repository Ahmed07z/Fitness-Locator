// ignore_for_file: prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fyt3.ggpht.com%2Fytc%2FAKedOLR-9smUShg1YJEYb8L3unE1j7WBJZmON5Ok0KgZ%3Ds900-c-k-c0x00ffffff-no-rj&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCQbQlfh-Q8AGjivyJSVsnIQ&tbnid=15GS2IR4laJVkM&vet=12ahUKEwiK0fGF4vz0AhXIweAKHesCBNgQMygAegQIARAQ..i&docid=tf5IlSvlUviFdM&w=900&h=900&itg=1&q=terraxop&ved=2ahUKEwiK0fGF4vz0AhXIweAKHesCBNgQMygAegQIARAQ";
    var userAccountsDrawerHeader = UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.black),
        margin: EdgeInsets.zero,
        accountName: Text("Ahmed Hassan"),
        accountEmail: Text("Ahmedhassan0057@gmail.com"),
        currentAccountPicture:
            CircleAvatar(backgroundImage: AssetImage("assets/images/hey.png")));
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero, child: userAccountsDrawerHeader),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
