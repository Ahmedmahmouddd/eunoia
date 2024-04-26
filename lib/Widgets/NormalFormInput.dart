// ignore_for_file: file_names
import 'package:eunoia/core/Constants/Constants.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: Color.fromRGBO(119, 119, 119, 0.6),
          )),
        ),
        child: TextField(
          style: TextStyle(
            fontSize: smallText,
            fontFamily: 'Koh Santepheap',
          ),
          decoration: InputDecoration(
            label: Text(label,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: smallText,
                    fontFamily: 'Koh Santepheap',
                    fontWeight: FontWeight.w500)),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
                fontFamily: 'Koh Santepheap',
                fontSize: smallText,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
