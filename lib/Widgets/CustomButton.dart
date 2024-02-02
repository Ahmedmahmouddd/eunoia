// ignore_for_file: file_names, must_be_immutable
import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title, this.onTap});
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
              borderRadius: BorderRadius.circular(20), color: KprimaryGreen),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Koh Santepheap',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )),
    );
  }
}
