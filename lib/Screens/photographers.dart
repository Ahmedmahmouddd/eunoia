import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/temp.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/serviceCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Photographers extends StatelessWidget {
  const Photographers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Exclude Bottom Navigation Bar
    NavigationUtility.showBottomNavBar = false;

    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomAppBar(title: 'Photographers'),
      body: Center(
        child: ServiceCard(),
      ),
    );
  }
}
