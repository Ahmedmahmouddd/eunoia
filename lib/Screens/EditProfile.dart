// ignore_for_file: file_names

import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/CircularPictureWithHalfMoonShadow.dart';
import 'package:eunoia/Widgets/EditableInputField.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KprimaryBeige,
        appBar: const CustomAppBar(
          title: 'Edit Profile',
          backButton: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 10.h),
            const CircularPictureWithHalfMoonShadow(),
            SizedBox(height: 10.h),
            Text(
              'PROFILE PHOTO',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Literata',
                  color: const Color.fromRGBO(0, 0, 0, 0.75)),
            ),
            SizedBox(height: 50.h),
            const EditableField(
                title: 'Name', hint: ' hint', suffixIcon: Icon(Icons.edit)),
            SizedBox(height: 15.h),
            const EditableField(
                title: 'Email',
                hint: ' Users_Email@mail.com',
                suffixIcon: Icon(Icons.edit)),
          ],
        ));
  }
}
