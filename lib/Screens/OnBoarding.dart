// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/LoginPage.dart';
import 'package:eunoia/Screens/RegisterPage1.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            'Step into event perfection!',
            style: TextStyle(
                fontSize: 22,
                color: Color.fromRGBO(0, 0, 0, 0.6),
                fontFamily: 'Literata',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          const Text('From elegant weddings to corporate',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(119, 119, 119, 0.6),
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400)),
          const Text('gatherings, Let’s turn your visions into',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(119, 119, 119, 0.6),
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400)),
          const Text('remarkable moments!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(119, 119, 119, 0.6),
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400)),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/Group 19.png',
            ),
          ),
          const SizedBox(height: 14),
          CustomButton(
            title: 'Get Started',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RegisterPage1();
              }));
            },
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account ? ',
                style: TextStyle(
                    fontFamily: 'Source Serif Pro',
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(85, 102, 94, 1)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Source Serif Pro',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: KprimaryGreen),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
