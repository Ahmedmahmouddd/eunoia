// ignore_for_file: unused_import
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eunoia/core/config/bloc_observer.dart';
import 'package:eunoia/core/constants/cash_storage.dart';
import 'package:eunoia/features/home/data/home_cubit/home_cubit.dart';
import 'package:eunoia/features/home/presentation/views/home.dart';
import 'package:eunoia/features/sign_form/login/presentation/views/login_page.dart';
import 'package:eunoia/features/sign_form/on_boarding/views/onboarding.dart';
import 'package:eunoia/Screens/Categories.dart';
import 'package:eunoia/Screens/navigationBar.dart';
import 'package:eunoia/core/config/config.dart';
import 'package:eunoia/features/splash/presentation/views/splash_screen.dart';
import 'package:eunoia/services/shared_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'core/constants/constants.dart';

Widget defaultHome = const LoginPage();

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.casheInitialization();
  runApp(const Eunoia());
  
}

class Eunoia extends StatelessWidget {
  const Eunoia({super.key});

  @override
  Widget build(BuildContext context) {
    return  const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
