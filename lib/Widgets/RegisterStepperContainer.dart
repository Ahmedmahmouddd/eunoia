// ignore_for_file: file_names
import 'package:flutter/material.dart';

class RegisterStepperContainer extends StatelessWidget {
  const RegisterStepperContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        color: color,
      ),
    );
  }
}
