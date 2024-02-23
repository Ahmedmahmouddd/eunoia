// ignore_for_file: file_names

import 'package:eunoia/Constants/Constants.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar(
      {super.key,
      required this.selectedColor,
      required this.unSelectedColor,
      required this.onTap,
      required this.children,
      required this.selectedTab});
  final Color selectedColor;
  final Color unSelectedColor;
  final Function(int index) onTap;
  final List<CustomBottomAppBarItem> children;
  final int selectedTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 107,
      padding: const EdgeInsets.only(top: 10),
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey.shade300,
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            children.length,
            (index) {
              return CustomBottomAppBarItem(
                  icon: children[index].icon,
                  color: selectedTab == index ? selectedColor : unSelectedColor,
                  press: () {
                    onTap(index);
                  });
            },
          ),
        ),
      ),
    );
  }
}

class CustomBottomAppBarItem extends StatelessWidget {
  const CustomBottomAppBarItem({
    super.key,
    required this.icon,
    this.press,
    this.color,
  });

  final IconData icon;
  final VoidCallback? press;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: Icon(
        icon,
        size: 30,
      ),
      color: color == KprimaryPink ? KprimaryPink : Colors.grey,
    );
  }
}
