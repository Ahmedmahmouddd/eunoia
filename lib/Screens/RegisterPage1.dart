// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:eunoia/Screens/LoginPage.dart';
import 'package:eunoia/Screens/RegisterPage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/Constants.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomRegisterTextField.dart';

class RegisterPage1 extends StatelessWidget {
  const RegisterPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: screenHeight * 0.25,
                child: Image.asset('assets/logo 1.png')),
            Container(
              height: screenHeight * 0.75,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(110)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.0.h),
                    child: Center(
                        child: Text(
                      'Register',
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 27.sp),
                    )),
                  ),
                  SizedBox(height: 15.h),
                  const CustomRegisterTextField(
                    label: 'Name',
                    hint: 'Full name',
                  ),
                  SizedBox(height: 4.h),
                  const CustomRegisterTextField(
                    label: 'Email',
                    hint: 'example@example.com',
                  ),
                  SizedBox(height: 4.h),
                  const CustomRegisterTextField(
                    label: 'Password',
                    hint: '********',
                  ),
                  SizedBox(height: 4.h),
                  const CustomRegisterTextField(
                    label: 'Confirm password',
                    hint: '********',
                  ),
                  SizedBox(height: 18.h),
                  SizedBox(height: 22.h),
                  CustomButton(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterPage2();
                      }));
                    },
                    title: 'Create account',
                  ),
                  SizedBox(height: 7.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 0.6),
                              fontSize: 14.5.sp,
                              fontFamily: 'Source Serif Pro')),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: KprimaryGreen,
                              fontSize: 14.5.sp,
                              fontFamily: 'Source Serif Pro'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
