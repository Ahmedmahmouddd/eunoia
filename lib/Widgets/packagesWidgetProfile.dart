// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget(
      {super.key,
      required this.packageName,
      required this.packageDescription,
      required this.packagePrice});
  final String packageName;
  final String packageDescription;
  final String packagePrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            packageName,
            style: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(0, 0, 0, 0.6),
                fontFamily: 'Literata'),
          ),
          Text(
            'Description: $packageDescription',
            style: const TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(0, 0, 0, 0.6),
                fontFamily: 'Literata'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price: $packagePrice',
                style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    fontFamily: 'Literata'),
              ),
              const Icon(
                Icons.edit,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
