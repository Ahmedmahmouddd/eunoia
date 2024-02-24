import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.h,
          width: 285.h,
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
                  Container(
                    child: Image.asset('assets/cover.png'),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 16.h,
                      ),
                      Image.asset('assets/profilepic.png'),
                      SizedBox(
                        width: 180.h,
                      ),
                      const Row(
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
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h, top: 1.h),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Occhio Films',
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
                              'All over Egypt',
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
                    padding: EdgeInsets.only(right: 12.h),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Starts from: 5500 EGP',
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
    );
  }
}
