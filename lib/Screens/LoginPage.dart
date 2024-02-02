// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/RegisterPage1.dart';
import 'package:eunoia/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import '../Widgets/CustomLoginTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Image.asset('assets/logo 1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Container(
                height: 560,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(110)),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.75),
                            fontFamily: 'Source Serif Pro',
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      )),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: CustomLoginTextField(
                          label: 'Email',
                          icon: const Icon(Icons.person_outline, size: 30)),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: CustomLoginTextField(
                          label: 'Password',
                          icon: const Icon(Icons.lock_outline, size: 30),
                        )),
                    const SizedBox(height: 35),
                    const Center(
                      child: Text('Forgot your password?',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              fontFamily: 'Source Serif Pro',
                              fontWeight: FontWeight.w300,
                              fontSize: 16)),
                    ),
                    const SizedBox(height: 12),
                    CustomButton(
                      title: 'Log in',
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Not a user? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: 16,
                                fontFamily: 'Source Serif Pro')),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const RegisterPage1();
                            }));
                          },
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: KprimaryGreen,
                                fontSize: 16,
                                fontFamily: 'Source Serif Pro'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
