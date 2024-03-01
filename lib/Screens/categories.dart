import '../Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/djs.dart';
import 'package:eunoia/Screens/eventPlanners.dart';
import 'package:eunoia/Screens/food.dart';
import 'package:eunoia/Screens/hairStylists.dart';
import 'package:eunoia/Screens/makeupArtists.dart';
import 'package:eunoia/Screens/otherDetails.dart';
import 'package:eunoia/Screens/photographers.dart';
import 'package:eunoia/Screens/venues.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/categoryCard.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List screens = [
    const Home(),
    const Categories(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Categories',
        backButton: false,
      ),
      backgroundColor: KprimaryBeige,
      body: ListView.builder(
        itemCount: categoryCards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 18),
            child: categoryCards[index],
          );
        },
      ),
    );
  }
}

List<CategoryCard> categoryCards = [
  CategoryCard(
    categoryImage: 'assets/venues.png',
    categoryName: 'VENUES',
    screen: const Venues(),
  ),
  CategoryCard(
    categoryImage: 'assets/photographers.png',
    categoryName: 'PHOTOGRAPHERS',
    screen: const Photographers(),
  ),
  CategoryCard(
    categoryImage: 'assets/eventplanners.png',
    categoryName: 'EVENT PLANNERS',
    screen: const EventPlanners(),
  ),
  CategoryCard(
    categoryImage: 'assets/djs.png',
    categoryName: 'DJs',
    screen: const Djs(),
  ),
  CategoryCard(
    categoryImage: 'assets/makeupartists.png',
    categoryName: 'MAKEUP ARTISTS',
    screen: const MakeupArtists(),
  ),
  CategoryCard(
    categoryImage: 'assets/food.png',
    categoryName: 'FOOD',
    screen: const Food(),
  ),
  CategoryCard(
    categoryImage: 'assets/hairstylists.png',
    categoryName: 'HAIR STYLISTS',
    screen: const HairStylists(),
  ),
  CategoryCard(
    categoryImage: 'assets/otherdetails.png',
    categoryName: 'OTHER DETAILS',
    screen: const OtherDetails(),
  ),
];
