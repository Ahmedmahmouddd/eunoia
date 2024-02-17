// ignore_for_file: file_names, must_be_immutable
import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title, this.onTap});
  final String title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 44.h,
          width: 325.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: KprimaryGreen),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Koh Santepheap',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )),
    );
  }
}
