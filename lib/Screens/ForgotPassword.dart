// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/VerificationCode.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:eunoia/Widgets/NormalFormInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomAppBar(
        title: 'Forgot Password',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 18.h, right: 62.w, left: 62.w, bottom: 40.sp),
              child: Image.asset('assets/ResetPassword.png'),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Text(
                  'Please write your email to receive a confimration code to set a new password ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: smallText,
                      fontFamily: 'Literata',
                      color: const Color.fromRGBO(0, 0, 0, 0.75)),
                ),
              ),
            ),
            const ForgotPasswordFormInput(
                label: 'Email', hint: 'example@example.com'),
            Padding(
              padding: EdgeInsets.only(top: 80.h, bottom: 20.h),
              child: GestureDetector(
                child: CustomButton(title: 'Confirm Mail'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VerificationCode();
                  }));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
