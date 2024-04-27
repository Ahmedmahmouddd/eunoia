import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/features/sign_form/login/presentation/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
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
              'Hey, Islam',
              style: TextStyle(
                fontFamily: 'Literata',
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Color.fromRGBO(0, 0, 0, 0.60),
              ),
            ),
            GestureDetector(
              onTap: () async {
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.remove('email');
                // ignore: use_build_context_synchronously
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const LoginPage(),
                  withNavBar: false,
                );
              },
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
