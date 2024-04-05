// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/EditProfile.dart';
import 'package:eunoia/Screens/Requests.dart';
import 'package:eunoia/Widgets/UserProfileOption.dart';
import 'package:eunoia/services/shared_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../Widgets/CircularPictureWithHalfMoonShadow.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KprimaryBeige,
        //appBar: const CustomAppBar(title: ''),
        body: ListView(
          children: [
            SizedBox(height: 26.h),
            const CircularPictureWithHalfMoonShadow(),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'Lewis Hamilton',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Literata',
                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            UserProfileOption(
              icon: Icons.edit,
              data: 'Edit Profile',
              ontap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const EditProfile(),
                  withNavBar: false,
                );
              },
            ),
            UserProfileOption(
              icon: Icons.lock_outline_rounded,
              data: 'Change Password',
              ontap: () {},
            ),
            UserProfileOption(
              icon: Icons.favorite_border,
              data: 'Favorites',
              ontap: () {},
            ),
            UserProfileOption(
              icon: Icons.supervisor_account_outlined,
              data: 'Business account',
              ontap: () {},
            ),
            UserProfileOption(
              icon: Icons.ads_click,
              data: 'Requests',
              ontap: () {
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const Requests(),
                  withNavBar: false,
                );
              },
            ),
            UserProfileOption(
              icon: Icons.logout_outlined,
              data: 'Logout',
              ontap: () {
                SharedServices.logout(context);
              },
            ),
          ],
        ));
  }
}
