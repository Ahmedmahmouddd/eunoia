// ignore_for_file: file_names, must_be_immutable
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InverseCustomButton extends StatelessWidget {
  InverseCustomButton({super.key, required this.title, this.onTap});
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
              border: Border.all(color: KprimaryGreen, width: 1.5.w),
              borderRadius: BorderRadius.circular(16.r),
              color: KprimaryBeige),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Literata',
                  fontSize: smallText,
                  fontWeight: FontWeight.w600,
                  color: KprimaryGreen),
            ),
          )),
    );
  }
}
