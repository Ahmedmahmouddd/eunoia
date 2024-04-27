// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:eunoia/features/home/presentation/widgets/home_screen_text.dart';
import 'package:eunoia/features/home/presentation/widgets/nearby_card_list_view.dart';
import 'package:eunoia/features/home/presentation/widgets/offer_card_list_view.dart';
import 'package:eunoia/features/home/presentation/widgets/popular_card_list_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: HomeScreenAppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            endIndent: 60,
            indent: 60,
          ),
          HomeScreenText(text: 'Special offers'),
          Expanded(
            child: OfferCardlistlView(),
          ),
          HomeScreenText(text: 'Popular'),
          Expanded(
            child: PopularCardListView(),
          ),
          HomeScreenText(text: 'Nearby'),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.pin_drop_outlined,
                  size: 15,
                  color: Color.fromRGBO(0, 0, 0, .8),
                ),
                Text(
                  'Cairo',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, .8),
                    fontFamily: 'Literata',
                    fontSize: 14,
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
