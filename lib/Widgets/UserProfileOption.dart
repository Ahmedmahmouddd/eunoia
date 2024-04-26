// ignore_for_file: file_names

import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileOption extends StatelessWidget {
  const UserProfileOption({
    super.key,
    required this.icon,
    required this.data,
    required this.ontap,
  });
  final String data;
  final IconData icon;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.0.w),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  data,
                  style: TextStyle(
                    fontFamily: Literata,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: const Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
            child: Container(
              height: 1.0,
              color: const Color.fromARGB(255, 208, 208, 208),
            ),
          ),
        ],
      ),
    );
  }
}
