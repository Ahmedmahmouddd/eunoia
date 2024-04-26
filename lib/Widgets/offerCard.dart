// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: 240.w,
        height: 125.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/offer.png',
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '-20%',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Literata',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Karim Roshdy',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Literata',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photographer',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Literata',
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'View Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Literata',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
