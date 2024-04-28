import 'package:eunoia/features/business/presentation/views/package_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PackageCard extends StatelessWidget {
  const PackageCard(
      {super.key,
      required this.image,
      required this.price,
      required this.title});

  final String image;
  final String price;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 5, top: 10),
      child: GestureDetector(
        onTap: () {
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const PackagePage(),
            withNavBar: false,
          );
        },
        child: Container(
          width: 135.w,
          height: 125.h,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.01),
                offset: const Offset(-1, -2),
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
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      image,
                    ),
                  ),
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
                padding: EdgeInsets.only(bottom: 6.0, left: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, .6),
                        fontFamily: 'Literata',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      price,
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
      ),
    );
  }
}
