


import 'package:f1/pages/HomePage.dart';
import 'package:get/get.dart';
import 'package:f1/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,

   

      debugShowCheckedModeBanner: false,
      
      
    home: loginpage(),
    
    );
  }
}
