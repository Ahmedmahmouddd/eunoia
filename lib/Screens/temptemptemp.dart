import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/UserProfile.dart';
import 'package:eunoia/Screens/categories.dart';
import 'package:eunoia/Screens/chatBot.dart';
import 'package:eunoia/Screens/search.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class TempTempTemp extends StatefulWidget {
  const TempTempTemp({super.key});

  @override
  State<TempTempTemp> createState() => _TempTempTempState();
}

class _TempTempTempState extends State<TempTempTemp> {
  final _controller = PersistentTabController(initialIndex: 2);

  List<Widget> screens() {
    return [
      const Categories(),
      const Search(),
      const Home(),
      const ChatBot(),
      const UserProfile(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      _buildNavBarItem(Icons.category_outlined),
      _buildNavBarItem(Icons.search_outlined),
      _buildNavBarItem(Icons.home_outlined),
      _buildNavBarItem(Icons.chat_outlined),
      _buildNavBarItem(Icons.person_outlined),
    ];
  }

  PersistentBottomNavBarItem _buildNavBarItem(IconData iconData) {
    return PersistentBottomNavBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(
            bottom: 17.0), // Adjust the bottom padding as needed
        child: Icon(iconData),
      ),
      iconSize: 32,
      activeColorPrimary: KprimaryPink,
      inactiveColorPrimary: const Color.fromARGB(255, 164, 164, 164),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: .1)),
      ),
      child: PersistentTabView(
        context,
        backgroundColor: Colors.white,
        screens: screens(),
        items: navBarItems(),
        controller: _controller,
        navBarStyle: NavBarStyle.style13,
        navBarHeight: 95,
        popAllScreensOnTapOfSelectedTab: true,
      ),
    );
  }
}
