// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';

class CustomLoginTextField extends StatelessWidget {
  CustomLoginTextField({super.key, required this.label, required this.icon});
  String? label;
  Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Color.fromRGBO(119, 119, 119, 0.6),
        ))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: icon,
                ),
                const SizedBox(width: 5),
                Container(
                  width: 1,
                  height: 55,
                  color: const Color.fromRGBO(119, 119, 119, 0.6),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Koh Santepheap',
                    ),
                    decoration: InputDecoration(
                      label: Text(label!),
                      labelStyle: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          fontWeight: FontWeight.w100,
                          fontSize: 18,
                          fontFamily: 'Koh Santepheap'),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
