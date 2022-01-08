import 'package:f1/widgeds/AppBarWidged.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "NOtifications", backgroundColor: Colors.blue),
      body: Text("This is notification page"),
    );
  }
}