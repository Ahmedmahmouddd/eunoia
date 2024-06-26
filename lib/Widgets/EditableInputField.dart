// ignore_for_file: file_names
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditableField extends StatelessWidget {
  const EditableField({
    super.key,
    required this.title,
    required this.hint,
    this.suffixIcon,
  });
  final String title, hint;
  final Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Literata',
              color: const Color.fromRGBO(0, 0, 0, 0.6),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                width: 0.5,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              )),
            ),
            child: TextField(
              style: TextStyle(
                fontSize: smallText,
                fontFamily: 'Literata',
              ),
              decoration: InputDecoration(
                enabled: true,
                border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(
                    fontFamily: 'Literata',
                    fontSize: smallText,
                    fontWeight: FontWeight.w400),
                suffixIcon: suffixIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
