import 'package:f1/widgeds/AppBarWidged.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({Key? key}) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "UploadPage", backgroundColor: Colors.black),
      body: Text("This is upload page"));
  }
}