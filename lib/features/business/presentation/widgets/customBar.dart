import 'package:eunoia/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBar({
    Key? key,
    required this.title,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
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
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Color.fromRGBO(0, 0, 0, 0.60),
        ),
      ),
      elevation: 0,
      backgroundColor: KprimaryBeige,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 29,
              color: Color.fromRGBO(0, 0, 0, 0.60),
            ),
            onPressed: () {
              // Add your onPressed action here
            },
          ),
        ),
      ],
    );
  }
}
