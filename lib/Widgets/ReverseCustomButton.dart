// ignore_for_file: file_names, must_be_immutable
import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';

class ReverseCustomButton extends StatelessWidget {
  ReverseCustomButton({super.key, required this.title, this.onTap});
  final String title;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 44,
          width: 355,
          decoration: BoxDecoration(
              border: Border.all(color: KprimaryGreen, width: 1),
              borderRadius: BorderRadius.circular(20),
              color: KprimaryBeige),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Koh Santepheap',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: KprimaryGreen),
            ),
          )),
    );
  }
}
