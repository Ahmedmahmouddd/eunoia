// ignore_for_file: camel_case_types
/*import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/Categories.dart';
import 'package:eunoia/Screens/ChatBot.dart';
import 'package:eunoia/Screens/Search.dart';
import 'package:eunoia/Screens/UserProfile.dart';
import 'package:eunoia/Widgets/navBar.dart';
import 'package:flutter/material.dart';

class NavigationUtility {
  static bool showBottomNavBar = true;
}

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  final List<Widget> screens = [
    const Categories(),
    const Search(),
    const Home(),
    const ChatBot(),
    const UserProfile(),
  ];

  int _currentTab = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationUtility.showBottomNavBar
          ? CustomNavBar(
              unSelectedColor: Colors.grey.shade400,
              selectedColor: KprimaryPink,
              selectedTab: _currentTab,
              children: const [
                CustomBottomAppBarItem(
                  icon: Icons.category_outlined,
                ),
                CustomBottomAppBarItem(
                  icon: Icons.search_outlined,
                ),
                CustomBottomAppBarItem(
                  icon: Icons.home_outlined,
                ),
                CustomBottomAppBarItem(
                  icon: Icons.chat_outlined,
                ),
                CustomBottomAppBarItem(
                  icon: Icons.person_outlined,
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentTab = index;
                });
              },
            )
          : null,
      backgroundColor: KprimaryBeige,
      body: SafeArea(child: screens[_currentTab]),
    );
  }
}
*/