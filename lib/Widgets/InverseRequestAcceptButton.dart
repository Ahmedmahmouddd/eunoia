// ignore_for_file: must_be_immutable, file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InverseRequestAcceptButton extends StatelessWidget {
  InverseRequestAcceptButton({super.key, required this.title, this.onTap});
  final String title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 32.h,
          width: 90.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.transparent),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Koh Santepheap',
                  fontSize: smallText,
                  fontWeight: FontWeight.w600,
                  color: KprimaryGreen),
            ),
          )),
    );
  }
}
