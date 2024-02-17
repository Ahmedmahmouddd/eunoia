// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotBusiness extends StatelessWidget {
  const NotBusiness({super.key});

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
          'Forgot password',
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
