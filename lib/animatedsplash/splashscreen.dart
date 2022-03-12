import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:f1/pages/startappscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return AnimatedSplashScreen(
      
      splash: Lottie.asset('assets/images/splash.json'),
      nextScreen: StartScreen(),
      splashIconSize: 180,
      backgroundColor: Colors.black87,
      duration: 3780,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      
    );
  }
}
