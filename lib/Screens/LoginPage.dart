// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/EditProfile.dart';
import 'package:eunoia/Screens/UserProfile.dart';
import 'package:eunoia/Screens/ForgotPassword.dart';
import 'package:eunoia/Screens/RegisterPage1.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/CustomLoginTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 25.h),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 28.sp),
                    )),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomLoginTextField(
                        label: 'Email',
                        icon: const Icon(Icons.person_outline, size: 30)),
                  ),
                  SizedBox(height: 13.h),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: CustomLoginTextField(
                        label: 'Password',
                        icon: const Icon(Icons.lock_outline, size: 30),
                      )),
                  SizedBox(height: 31.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPassword();
                      }));
                    },
                    child: Center(
                      child: Text('Forgot your password?',
                          style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 0.6),
                              fontFamily: 'Source Serif Pro',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp)),
                    ),
                  ),
                  SizedBox(height: 11.h),
                  /////////////////////////////////////////////
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const EditProfile();
                      }));
                      /////////////////////////////////////////
                    },
                    child: CustomButton(
                      title: 'Log in',
                    ),
                  ),
                  SizedBox(
                    height: 78.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a user? ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 0.6),
                              fontSize: smallText,
                              fontFamily: 'Source Serif Pro')),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const RegisterPage1();
                          }));
                        },
                        child: Text(
                          'Create account',
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
            )
          ],
        ),
      ),
    );
  }
}
