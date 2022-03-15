import 'package:f1/animatedsplash/splashscreen.dart';
import 'package:f1/pages/AdminLogin.dart';
import 'package:f1/pages/FitnessRegisteration.dart';
import 'package:f1/pages/HomePage.dart';
import 'package:f1/pages/PromotionScreen.dart';
import 'package:f1/pages/StartAppScreen.dart';
import 'package:f1/pages/startappscreen.dart';
import 'package:f1/widgeds/AppBarWidged.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:f1/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home:SplashScreen
      (),
    );
  }
}
