// ignore_for_file: file_names

import 'package:eunoia/features/home/data/models/popular_services/popular_service_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
    required this.popularService,
  });
  final PopularService popularService;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Container(
        width: 135.w,
        height: 125.h,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.01),
              offset: const Offset(-1, 0),
              blurRadius: 10,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                      image: NetworkImage(popularService.avatar ??
                          'https://st4.depositphotos.com/14953852/24787/v/1600/depositphotos_247872612-stock-illustration-no-image-available-icon-vector.jpg'),
                      fit: BoxFit.fill),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 39.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0, left: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    popularService.businessName ?? '',maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .6),
                      fontFamily: 'Literata',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    popularService.about ?? '',maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .6),
                      fontFamily: 'Literata',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
