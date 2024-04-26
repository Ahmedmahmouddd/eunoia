// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/features/home/presentation/widgets/nearbyCard.dart';
import 'package:eunoia/features/home/presentation/widgets/nearby_card_list_view.dart';
import 'package:eunoia/features/home/presentation/widgets/offerCard.dart';
import 'package:eunoia/features/home/presentation/widgets/offer_card_list_view.dart';
import 'package:eunoia/features/home/presentation/widgets/popularCard.dart';
import 'package:eunoia/features/home/presentation/widgets/popular_card_list_view.dart';
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
          padding: EdgeInsets.only(left: 10.0, right: 12.0),
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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            endIndent: 60,
            indent: 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
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
            child: OfferCardlistlView(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
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
            child: PopularCardListView(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 7),
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
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
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
            child: NearbyCardListView(),
          ),
        ],
      ),
    );
  }
}
