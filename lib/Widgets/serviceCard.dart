// ignore_for_file: file_names

import 'package:eunoia/features/business/presentation/views/business_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ServiceCard1 extends StatelessWidget {
  const ServiceCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const BusinessPage(),
          withNavBar: false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Column(
          children: [
            Container(
              // height: 190.h,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(-5, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Image.asset(
                          'assets/images/mercure.png',
                          fit: BoxFit.cover,
                          height: 130,
                          width: screenWidth * 0.99,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //SizedBox(width: 16.h),
                          Padding(
                              padding: EdgeInsets.only(left: 16.0.w),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/merc.png',
                                  height: 60,
                                  width:
                                      60, // Make sure to set both width and height to the same value for a perfect circle
                                  fit: BoxFit
                                      .cover, // Ensure the image fits within the circle
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0.w, top: 38.h),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 1.h),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mercure Al-Forsan',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  fontFamily: 'Literata',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                Text(
                                  'ismailia',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h, bottom: 9.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Starts from: 8000 EGP',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontFamily: 'Literata',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard2 extends StatelessWidget {
  const ServiceCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const BusinessPage(),
          withNavBar: false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Column(
          children: [
            Container(
              // height: 190.h,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(-5, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Image.asset(
                          'assets/images/similar.png',
                          fit: BoxFit.cover,
                          height: 130,
                          width: screenWidth * 0.99,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //SizedBox(width: 16.h),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0.w),
                            child: Image.asset('assets/images/profilepic.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0.w, top: 38.h),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 1.h),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gardenia',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  fontFamily: 'Literata',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                Text(
                                  'ismailia',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h, bottom: 9.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Starts from: 8000 EGP',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontFamily: 'Literata',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard3 extends StatelessWidget {
  const ServiceCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const BusinessPage(),
          withNavBar: false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Column(
          children: [
            Container(
              // height: 190.h,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(-5, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Image.asset(
                          'assets/images/outdoor.jpg',
                          fit: BoxFit.cover,
                          height: 130,
                          width: screenWidth * 0.99,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //SizedBox(width: 16.h),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0.w),
                            child: Image.asset('assets/images/profilepic.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0.w, top: 38.h),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 1.h),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Center garden',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  fontFamily: 'Literata',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                Text(
                                  'ismailia',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h, bottom: 9.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Starts from: 8000 EGP',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontFamily: 'Literata',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard4 extends StatelessWidget {
  const ServiceCard4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const BusinessPage(),
          withNavBar: false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Column(
          children: [
            Container(
              // height: 190.h,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(-5, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Image.asset(
                          'assets/images/goldencover.jpg',
                          fit: BoxFit.cover,
                          height: 130,
                          width: screenWidth * 0.99,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //SizedBox(width: 16.h),
                          Padding(
                              padding: EdgeInsets.only(left: 16.0.w),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/golden.jpg',
                                  height: 60,
                                  width:
                                      60, // Make sure to set both width and height to the same value for a perfect circle
                                  fit: BoxFit
                                      .cover, // Ensure the image fits within the circle
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0.w, top: 38.h),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 1.h),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Golden Jewel',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  fontFamily: 'Literata',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                Text(
                                  'ismailia',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h, bottom: 9.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Starts from: 8000 EGP',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontFamily: 'Literata',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard5 extends StatelessWidget {
  const ServiceCard5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const BusinessPage(),
          withNavBar: false,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Column(
          children: [
            Container(
              // height: 190.h,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(-5, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Image.asset(
                          'assets/images/salon.jpg',
                          fit: BoxFit.cover,
                          height: 130,
                          width: screenWidth * 0.99,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          //SizedBox(width: 16.h),
                          Padding(
                              padding: EdgeInsets.only(left: 16.0.w),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/mayadiab.jpg',
                                  height: 60,
                                  width:
                                      60, // Make sure to set both width and height to the same value for a perfect circle
                                  fit: BoxFit
                                      .cover, // Ensure the image fits within the circle
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(right: 16.0.w, top: 38.h),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h, top: 1.h),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Golden Hands',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  fontFamily: 'Literata',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  size: 15,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                Text(
                                  'ismailia',
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    fontFamily: 'Literata',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h, bottom: 9.h),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Starts from: 3500 EGP',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontFamily: 'Literata',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
