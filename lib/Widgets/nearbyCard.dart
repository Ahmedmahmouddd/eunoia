// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyCard extends StatelessWidget {
  const NearbyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 30),
      child: Container(
        width: 209.w,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/nearby.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 39.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 6.0, left: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Yomna Tarek',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .6),
                      fontFamily: 'Literata',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Event Planner',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .6),
                      fontFamily: 'Literata',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
