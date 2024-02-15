// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/RegisterPage3.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:eunoia/Widgets/ReverseCustomButton.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

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
          Center(child: Image.asset('assets/logo 1.png')),
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
              child: ReverseCustomButton(
            title: 'User',
            onTap: () {},
          )),
          const SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account? ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 16,
                      fontFamily: 'Source Serif Pro')),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: KprimaryGreen,
                      fontSize: 16,
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
