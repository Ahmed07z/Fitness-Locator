import 'package:f1/widgeds/AppBarWidged.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Search fitness Center", backgroundColor: Colors.orange),
      body: Text("This is Search page"),
    );
  }
}
