// ignore_for_file: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eunoia/Screens/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Constants/Constants.dart';

void main() {
  runApp(const Eunoia());
}

class Eunoia extends StatelessWidget {
  const Eunoia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: KprimaryBeige,
        splash: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Logo.png'),
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
        duration: 2000,
        nextScreen: const OnBoarding(),
        splashIconSize: double.infinity,
        pageTransitionType: PageTransitionType.fade,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
