// ignore_for_file: file_names
import 'package:eunoia/features/sign_form/login/presentation/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/Screens/navigationBar.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page3.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:eunoia/Widgets/InverseCustomButton.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 120),
          Center(child: Image.asset('assets/images/logo1.png')),
          const SizedBox(height: 45),
          const Text('Create account as a',
              style: TextStyle(
                  fontFamily: 'Literata',
                  fontWeight: FontWeight.w400,
                  fontSize: 26)),
          const SizedBox(height: 22),
          Center(
              child: CustomButton(
            title: 'Service provider',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RegisterPage3();
              }));
            },
          )),
          const SizedBox(height: 22),
          Center(
              child: InverseCustomButton(
            title: 'Client',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Registration successful"),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MainNav();
              }));
            },
          )),
          
        ],
      ),
    );
  }
}
