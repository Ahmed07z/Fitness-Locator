import 'package:flutter/material.dart';
import 'package:f1/main.dart';
import 'package:google_fonts/google_fonts.dart';
class Mytheme{
  static ThemeData  Lightthemes(BuildContext context)=> ThemeData(
          primarySwatch: Colors.deepPurple,

          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
          
          ) ,
        );
          static ThemeData  Darkthemes(BuildContext context)=> ThemeData(
            brightness: Brightness.dark,);
}
