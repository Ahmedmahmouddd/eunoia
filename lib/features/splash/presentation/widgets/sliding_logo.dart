import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (BuildContext context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Image.asset(
              'assets/images/eunoia 1.png',
              height: 60.h,
            ),
          );
        });
  }
}