// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/CircularPictureWithHalfMoonShadow.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KprimaryBeige,
        appBar: const CustomAppBar(title: ''),
        body: Column(
          children: [
            SizedBox(height: 10.h),
            const CircularPictureWithHalfMoonShadow(),
            SizedBox(height: 10.h),
            Text(
              'Islam Tarek',
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Literata',
                color: const Color.fromRGBO(0, 0, 0, 0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30.h),
            const AccountSettingsContainer(
                icon: Icons.edit, data: 'Edit Profile'),
            const AccountSettingsContainer(
                icon: Icons.lock_outline_rounded, data: 'Change Password'),
            const AccountSettingsContainer(
                icon: Icons.favorite_border, data: 'Favorites'),
            const AccountSettingsContainer(
                icon: Icons.supervisor_account_outlined,
                data: 'Business account'),
            const AccountSettingsContainer(
                icon: Icons.ads_click, data: 'Requests'),
            const AccountSettingsContainer(
                icon: Icons.logout_outlined, data: 'Logout'),
          ],
        ));
  }
}

class AccountSettingsContainer extends StatelessWidget {
  const AccountSettingsContainer({
    super.key,
    required this.icon,
    required this.data,
  });
  final String data;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
