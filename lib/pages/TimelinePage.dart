import 'package:f1/widgeds/AppBarWidged.dart';
import 'package:flutter/material.dart';

class TimeLinePage extends StatefulWidget {
  TimeLinePage({Key? key}) : super(key: key);

  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "TimeLine", backgroundColor: Colors.yellow),
    );
  }
}