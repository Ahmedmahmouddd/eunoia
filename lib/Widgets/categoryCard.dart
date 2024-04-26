// ignore_for_file: file_names, must_be_immutable, sized_box_for_whitespace
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {super.key,
      required this.categoryImage,
      required this.categoryName,
      required this.screen});
  String categoryName;
  String categoryImage;
  Widget screen;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: screen,
          withNavBar: true,
        );
      },
      child: Container(
          width: 350,
          height: 130,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(categoryImage), fit: BoxFit.cover),
                  ),
                ),
              ),
              Center(
                child: Text(
                  categoryName,
                  style: TextStyle(
                    color: const Color.fromRGBO(0, 0, 0, 0.7),
                    fontSize: smallText,
                    fontFamily: 'Literata',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 13.sp,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
