// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/Screens/navigationBar.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/RegisterPage3.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:eunoia/Widgets/InverseCustomButton.dart';

import '../../../login/presentation/views/LoginPage.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 120),
          Center(child: Image.asset('assets/images/logo1.png')),
          const SizedBox(height: 45),
          const Text('Create account as a',
              style: TextStyle(
                  fontFamily: 'Source Serif Pro',
                  fontWeight: FontWeight.w400,
                  fontSize: 26)),
          const SizedBox(height: 22),
          Center(
              child: CustomButton(
            title: 'Service provider',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RegisterPage3();
              }));
            },
          )),
          const SizedBox(height: 22),
          Center(
              child: InverseCustomButton(
            title: 'Client',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MainNav();
              }));
            },
          )),
          const SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: smallText,
                      fontFamily: 'Source Serif Pro')),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: KprimaryGreen,
                      fontSize: smallText,
                      fontFamily: 'Source Serif Pro'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
