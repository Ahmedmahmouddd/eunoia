// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NormalFormInput extends StatelessWidget {
  const NormalFormInput({
    super.key,
    required this.label,
    required this.hint,
  });
  final String label, hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: Color.fromRGBO(119, 119, 119, 0.6),
          )),
        ),
        child: TextField(
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Koh Santepheap',
          ),
          decoration: InputDecoration(
            label: Text(label,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Koh Santepheap',
                    fontWeight: FontWeight.w500)),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
                fontFamily: 'Koh Santepheap',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
