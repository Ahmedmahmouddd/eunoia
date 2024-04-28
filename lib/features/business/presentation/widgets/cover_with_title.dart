import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoverWithTitle extends StatelessWidget {
  const CoverWithTitle(
      {super.key,
      required this.image,
      required this.title,
      required this.location,
      required this.rate,
      required this.pin});

  final String image;
  final String title;
  final String location;
  final String rate;
  final bool pin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190.h,
          child: Image.asset(
            image,
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Literata',
                  color: Color.fromRGBO(0, 0, 0, .6),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    rate,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Literata',
                      color: Color.fromRGBO(0, 0, 0, .6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 3, bottom: 15),
          child: Row(
            children: [
              pin
                  ? const Icon(
                      Icons.pin_drop_outlined,
                      color: Color.fromRGBO(0, 0, 0, .6),
                      size: 18,
                    )
                  : Padding(padding: EdgeInsets.all(1)),
              Text(
                location,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Literata',
                  color: Color.fromRGBO(0, 0, 0, .6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
