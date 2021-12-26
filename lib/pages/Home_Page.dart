import 'package:f1/main.dart';
import 'package:f1/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    int days = 30;
    String names = "Ahmed";
    var today = "Friday";
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('First App'),
      )),
      body: Center(
          child: Container(
              child: Text("Welcome to my App $days By $names on $today"))),
      drawer: Drawer(),
    );
  }
}
