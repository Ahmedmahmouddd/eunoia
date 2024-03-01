/*import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/UserProfile.dart';
import 'package:eunoia/Screens/categories.dart';
import 'package:eunoia/Screens/chatBot.dart';
import 'package:eunoia/Screens/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TempTemp extends StatefulWidget {
  const TempTemp({Key? key}) : super(key: key);

  @override
  State<TempTemp> createState() => _TempTempState();
}

class _TempTempState extends State<TempTemp> {
  int _currentIndex = 2; // Set the initial index to 2 for home

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: KprimaryPink,
        inactiveColor: Color.fromARGB(255, 164, 164, 164),
        backgroundColor: Colors.white,
        height: 95,
        iconSize: 32,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          _buildBottomNavigationBarItem(0, Icons.category_outlined),
          _buildBottomNavigationBarItem(1, Icons.search_outlined),
          _buildBottomNavigationBarItem(2, Icons.home_outlined),
          _buildBottomNavigationBarItem(3, Icons.chat_outlined),
          _buildBottomNavigationBarItem(4, Icons.person_outlined),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: Categories());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: Search());
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: Home());
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: ChatBot());
              },
            );
          case 4:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: UserProfile());
              },
            );
        }
        return Container();
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      int index, IconData iconData) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(
            bottom: 15.0), // Adjust bottom padding as needed
        child: Icon(iconData),
      ),
    );
  }
}
*/