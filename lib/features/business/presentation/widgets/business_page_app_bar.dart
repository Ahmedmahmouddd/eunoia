import 'package:eunoia/core/constants/constants.dart';
import 'package:flutter/material.dart';

class BusinessPageAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BusinessPageAppBar({
    Key? key,
    required this.title,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;
  final String title;

  @override
  State<BusinessPageAppBar> createState() => _BusinessPageAppBarState();
}

class _BusinessPageAppBarState extends State<BusinessPageAppBar> {
  bool isFavorite = false;

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
        widget.title,
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
            icon: isFavorite == false
                ? const Icon(
                    Icons.favorite_border_outlined,
                    size: 29,
                    color: Color.fromRGBO(0, 0, 0, 0.60),
                  )
                : const Icon(
                    Icons.favorite,
                    size: 29,
                    color: Colors.red,
                  ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
                print(isFavorite);
              });
            },
          ),
        ),
      ],
    );
  }
}
