// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
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
      appBar: const CustomAppBar(
        title: 'New Password',
        backButton: true,
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
          const NormalFormInput(label: 'New Password', hint: '********'),
          const NormalFormInput(label: 'Confirm Password', hint: '********'),
          SizedBox(
            height: 24.h,
          ),
          Center(child: CustomButton(title: 'Confirm Password'))
        ],
      ),
    );
  }
}
