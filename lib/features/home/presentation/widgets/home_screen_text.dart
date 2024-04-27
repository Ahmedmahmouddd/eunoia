import 'package:flutter/material.dart';

class HomeScreenText extends StatelessWidget {
  const HomeScreenText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Literata',
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Color.fromRGBO(0, 0, 0, 0.60),
        ),
      ),
    );
  }
}
