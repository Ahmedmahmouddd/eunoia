import 'package:eunoia/Widgets/packagesWidgetProfile.dart';
import 'package:flutter/material.dart';

class PackagesProfile extends StatelessWidget {
  const PackagesProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PackageWidget(
            packageName: 'First Package',
            packageDescription: 'packageDescription',
            packagePrice: '1000')
      ],
    );
  }
}
