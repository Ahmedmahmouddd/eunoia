import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularPictureWithHalfMoonShadow extends StatelessWidget {
  const CircularPictureWithHalfMoonShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 168.0.h,
                height: 168.0.h,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: KprimaryPink),
              ),
              Container(
                width: 160.0.h,
                height: 160.0.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/LH44.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 3,
                right: 5,
                child: Container(
                  height: 40.sp,
                  decoration: const BoxDecoration(
                      color: KprimaryGreen, shape: BoxShape.circle),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.white,
                      size: 25.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
