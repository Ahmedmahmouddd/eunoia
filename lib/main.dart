// ignore_for_file: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/OnBoarding.dart';
import 'package:eunoia/Screens/Categories.dart';
import 'package:eunoia/Screens/temp.dart';
import 'package:eunoia/Screens/temptemp.dart';
import 'package:eunoia/Screens/temptemptemp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'Constants/Constants.dart';

void main() {
  runApp(const Eunoia());
}

class Eunoia extends StatelessWidget {
  const Eunoia({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: KprimaryBeige,
          splash: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Logo.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          duration: 2000,
          nextScreen: const TempTempTemp(),
          splashIconSize: double.infinity,
          pageTransitionType: PageTransitionType.fade,
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}
