// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPContainer extends StatelessWidget {
  const OTPContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: const Color.fromRGBO(245, 185, 167, 1)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 68,
        width: 64,
        child: Center(
          child: TextFormField(
            cursorColor: Colors.black54,
            style: TextStyle(
                fontFamily: 'Koh Santepheap',
                fontSize: 30.sp,
                color: const Color.fromRGBO(0, 0, 0, 0.75),
                fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '-',
              hintStyle:
                  TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600),
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ),
    );
  }
}
