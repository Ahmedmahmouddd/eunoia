// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/offerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: AppBar(
        backgroundColor: KprimaryBeige,
        title: const Padding(
          padding: EdgeInsets.only(left: 10.0, top: 30.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hey, Islam',
                style: TextStyle(
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 0, 0.60),
                ),
              ),
              Icon(
                Icons.favorite_border_outlined,
                size: 29,
                color: Color.fromRGBO(0, 0, 0, 0.60),
              )
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 40,
              endIndent: 60,
              indent: 60,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Special offers',
                style: TextStyle(
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.60),
                ),
              ),
            ),
            OfferCard(),
          ],
        ),
      ),
    );
  }
}
