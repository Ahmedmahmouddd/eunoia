// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/login/LoginPage.dart';
import 'package:eunoia/Screens/register/RegisterPage1.dart';
import 'package:eunoia/Screens/register/page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/CustomButton.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: Column(
        children: [
          SizedBox(height: 80.h),
          Text(
            'Step into event perfection!',
            style: TextStyle(
                fontSize: 20.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.6),
                fontFamily: 'Literata',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 8.h),
          Text('From elegant weddings to corporate',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: smallText,
                  color: const Color.fromRGBO(119, 119, 119, 0.6),
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400)),
          Text('gatherings, Let’s turn your visions into',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: smallText,
                  color: const Color.fromRGBO(119, 119, 119, 0.6),
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400)),
          Text('remarkable moments!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: smallText,
                  color: const Color.fromRGBO(119, 119, 119, 0.6),
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400)),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Image.asset(
              'assets/images/Group 19.png',
            ),
          ),
          SizedBox(height: 13.h),
          CustomButton(
            title: 'Get Started',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const mltiStepForm();
              }));
            },
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account ? ',
                style: TextStyle(
                    fontFamily: 'Source Serif Pro',
                    fontSize: smallText,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromRGBO(85, 102, 94, 1)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Source Serif Pro',
                      fontSize: smallText,
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
