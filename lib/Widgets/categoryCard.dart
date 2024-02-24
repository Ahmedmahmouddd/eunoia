// ignore_for_file: file_names, must_be_immutable, sized_box_for_whitespace
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {super.key, required this.categoryImage, required this.categoryName});
  String categoryName;
  String categoryImage;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                  fontSize: 16,
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 15,
                ),
              ),
            ),
          ],
        ));
  }
}
