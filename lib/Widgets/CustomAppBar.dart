// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../Constants/Constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color.fromRGBO(0, 0, 0, 0.65),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Literata',
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Color.fromRGBO(0, 0, 0, 0.60),
        ),
      ),
      elevation: 0,
      backgroundColor: KprimaryBeige,
    );
  }
}
