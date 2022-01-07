


import 'package:get/get.dart';
import 'package:f1/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,

   

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      
    home: loginpage(),
    
    );
  }
}
