// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
          'New password',
          style: TextStyle(
              fontFamily: 'Literata',
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
              color: const Color.fromRGBO(0, 0, 0, 0.60)),
        ),
        elevation: 0,
        backgroundColor: KprimaryBeige,
      ),
    );
  }
}
