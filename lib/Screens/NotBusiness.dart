// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotBusiness extends StatelessWidget {
  const NotBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomAppBar(
        title: 'Business Account',
        backButton: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 90.h, right: 62.w, left: 62.w, bottom: 40.sp),
            child: Image.asset('assets/NotBusiness.png'),
          ),
          Text(
            'You don’t have a business account',
            style: TextStyle(
                fontFamily: 'Literata',
                fontWeight: FontWeight.w500,
                fontSize: 17.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.75)),
          ),
          SizedBox(
            height: 25.sp,
          ),
          CustomButton(title: 'Create Business Account')
        ],
      ),
    );
  }
}
