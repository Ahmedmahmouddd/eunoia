import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: CustomAppBar(title: 'Profile'),
    );
  }
}
