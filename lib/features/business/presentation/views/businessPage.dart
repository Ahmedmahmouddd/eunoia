// ignore: file_names
import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/business/presentation/widgets/customBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomBar(
        title: 'Mercure Al-Forsan',
      ),
      body: Column(
        children: [
          Container(
            height: 190.h,
            child: Image.asset(
              'assets/images/mercure.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
