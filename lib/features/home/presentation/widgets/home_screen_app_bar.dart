import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: KprimaryBeige,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Hey, Sara',
              style: TextStyle(
                fontFamily: 'Literata',
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Color.fromRGBO(0, 0, 0, 0.60),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.favorite_border_outlined,
                size: 29,
                color: Color.fromRGBO(0, 0, 0, 0.60),
              ),
            )
          ],
        ),
      ),
    );
  }
}
