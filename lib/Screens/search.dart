// ignore_for_file: file_names, non_constant_identifier_names

import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/SearchScreenBar.dart';
import 'package:eunoia/Widgets/SearchScreenButton.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = getScreenWidth(context);

    return const Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: CustomAppBar(
        title: 'Search',
        backButton: false,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SearchScreenBar(), SearchScreenButton()],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search history',
                  style: TextStyle(
                      fontFamily: Literata,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                Text(
                  'Clear',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: Literata,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
