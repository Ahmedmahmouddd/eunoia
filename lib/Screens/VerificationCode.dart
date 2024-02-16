// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/NewPassword.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:eunoia/Widgets/OTPContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color.fromRGBO(0, 0, 0, 0.65),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          'Verification Code',
          style: TextStyle(
              fontFamily: 'Literata',
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
              color: const Color.fromRGBO(0, 0, 0, 0.60)),
        ),
        elevation: 0,
        backgroundColor: KprimaryBeige,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 18.h, right: 62.w, left: 62.w, bottom: 40.sp),
              child: Image.asset('assets/ResetPassword.png'),
            ),
            Text(
              'Verify email address',
              style: TextStyle(
                  fontFamily: 'Literata',
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 0.75)),
            ),
            Text(
              'Verification code sent to your email',
              style: TextStyle(
                  fontFamily: 'Literata',
                  fontSize: 14.5.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 0.75)),
            ),
            SizedBox(
              height: 14.h,
            ),
            const Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPContainer(),
                OTPContainer(),
                OTPContainer(),
                OTPContainer(),
              ],
            )),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              child: CustomButton(title: 'Confirm Code'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NewPassword();
                }));
              },
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn’t receive a code ? ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
                        fontSize: 14.5.h,
                        fontFamily: 'Source Serif Pro')),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Resent code',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: KprimaryGreen,
                        fontSize: 14.5.h,
                        fontFamily: 'Source Serif Pro'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
