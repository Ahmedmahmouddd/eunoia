import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/segmentControlBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessAccount extends StatelessWidget {
  const BusinessAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomAppBar(title: 'Lewis Hamilton', backButton: true),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/businessCover.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 140.h, right: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(
                        color: KprimaryGreen,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 115.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 120.0.w,
                          height: 120.0.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/LH44.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Lewis Hamilton',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Literata',
                            color: const Color.fromRGBO(0, 0, 0, 0.65),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SegmentControlBar(),
        ],
      ),
    );
  }
}
