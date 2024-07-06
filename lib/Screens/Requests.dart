// ignore_for_file: file_names

import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/RequestCard.dart';
import 'package:eunoia/Widgets/serviceCard.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';

class Requests extends StatelessWidget {
  const Requests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomAppBar(title: 'Requests', backButton: true),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: const ServiceCard1(),
            ),
          );
        },
      ),
    );
  }
}
