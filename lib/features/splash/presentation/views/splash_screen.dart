import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/splash/presentation/widgets/splash_screen_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KprimaryBeige,
      body: SplashScreenBody(),
    );
  }
}
