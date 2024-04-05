// ignore: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/nearbyCard.dart';
import 'package:eunoia/Widgets/offerCard.dart';
import 'package:eunoia/Widgets/popularCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

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
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              height: 40,
              endIndent: 60,
              indent: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 3.0),
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
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  OfferCard(),
                  OfferCard(), // Add more OfferCards if needed
                  OfferCard(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 1.0, top: 1.0),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.60),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PopularCard(),
                  PopularCard(), // Add more PopularCards if needed
                  PopularCard(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7.0),
              child: Text(
                'Nearby',
                style: TextStyle(
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.60),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 1.0),
              child: Row(
                children: [
                  Icon(
                    Icons.pin_drop_outlined,
                    size: 15,
                    color: Color.fromRGBO(0, 0, 0, .6),
                  ),
                  Text(
                    'Cairo',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .6),
                      fontFamily: 'Literata',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NearbyCard(),
                  NearbyCard(), // Add more NearbyCards if needed
                  NearbyCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
