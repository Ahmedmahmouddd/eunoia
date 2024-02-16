// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
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
          'Forogt password',
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
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Text(
                  'Please write your email to receive a confimration code to set a new password ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      fontFamily: 'Literata',
                      color: const Color.fromRGBO(0, 0, 0, 0.75)),
                ),
              ),
            ),
            const NormalFormInput(label: 'Email', hint: 'example@example.com'),
            Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
              child: GestureDetector(
                child: CustomButton(title: 'Confirm Mail'),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
