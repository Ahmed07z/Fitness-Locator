// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:f1/main.dart';
import 'package:f1/models/catalog.dart';
import 'package:f1/utils/routes.dart';
import 'dart:convert';
import 'package:f1/utils/widged/drawer.dart';
import 'package:f1/utils/widged/widgeds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 0));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["Product"];
    print(productsData);
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String names = "Ahmed";
    var today = "Friday";
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          foregroundColor: Colors.black,
          title: Center(
            child: Text(
              'CATALOG APP',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidged(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
