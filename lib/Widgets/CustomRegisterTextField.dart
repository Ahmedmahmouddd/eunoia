// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CustomRegisterTextField extends StatelessWidget {
  const CustomRegisterTextField({
    super.key,
    required this.label,
    required this.hint,
  });
  final String label, hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: Color.fromRGBO(119, 119, 119, 0.6),
          )),
        ),
        child: TextField(
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Koh Santepheap',
          ),
          decoration: InputDecoration(
            label: Text(label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Koh Santepheap',
                )),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(
                fontFamily: 'Koh Santepheap',
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
