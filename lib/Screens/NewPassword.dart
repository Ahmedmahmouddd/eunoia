// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:eunoia/Widgets/NormalFormInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
          'New password',
          style: TextStyle(
              fontFamily: 'Literata',
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
              color: const Color.fromRGBO(0, 0, 0, 0.60)),
        ),
        elevation: 0,
        backgroundColor: KprimaryBeige,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text(
              'Set a new password',
              style: TextStyle(
                  fontFamily: 'Literata',
                  fontSize: 22.sp,
                  color: const Color.fromRGBO(0, 0, 0, 0.75),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Text('Please Write your new password',
                style: TextStyle(
                    fontFamily: 'Literata',
                    fontSize: 19.sp,
                    color: const Color.fromRGBO(0, 0, 0, 0.75),
                    fontWeight: FontWeight.w400)),
          ),
          const ForgotPasswordFormInput(
              label: 'New Password', hint: '********'),
          const ForgotPasswordFormInput(
              label: 'Confirm Password', hint: '********'),
          SizedBox(
            height: 24.h,
          ),
          Center(child: CustomButton(title: 'Confirm Password'))
        ],
      ),
    );
  }
}
