import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        top: 8,
        bottom: 10,
      ),
      child: Container(
        width: 240.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              offset: const Offset(-5, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Image(
                          image: AssetImage('assets/images/review.png'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Sara Mohamed',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, .65),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.0),
              child: Text(
                'Very helpful and friendly, birthday memories beautifully captured!',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, .65),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
