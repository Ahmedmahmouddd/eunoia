import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/business/presentation/widgets/cover_with_title.dart';
import 'package:flutter/material.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KprimaryBeige,
      body: CoverWithTitle(
        image: 'assets/images/package2.png',
        title: 'Outdoor Venue',
        location: 'Mercure Al-Forsan',
        rate: '4',
        pin: false,
      ),
    );
  }
}
