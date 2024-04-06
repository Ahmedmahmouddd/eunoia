// ignore_for_file: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eunoia/Constants/cash_storage.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/login/LoginPage.dart';
import 'package:eunoia/Screens/onboarding/OnBoarding.dart';
import 'package:eunoia/Screens/Categories.dart';
import 'package:eunoia/Screens/navigationBar.dart';
import 'package:eunoia/config/config.dart';
import 'package:eunoia/services/shared_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'Constants/Constants.dart';

Widget defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get result of the login function.
  bool _result = await SharedServices.isLoggedIn();
  if (_result) {
    defaultHome = const Home();
  }

  await CacheStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
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
                image: AssetImage('assets/images/Logo.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          duration: 2000,
          nextScreen: const OnBoarding(),
          splashIconSize: double.infinity,
          pageTransitionType: PageTransitionType.fade,
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}
