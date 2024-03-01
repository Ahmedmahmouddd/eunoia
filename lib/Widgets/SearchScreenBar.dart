// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';

class SearchScreenBar extends StatelessWidget {
  const SearchScreenBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 48,
        width: screenWidth * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.transparent,
          border: Border.all(
            color:
                const Color.fromRGBO(0, 0, 0, 0.5), // Set the border color here
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    fontFamily: Literata,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
