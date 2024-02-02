// ignore_for_file: file_names
import 'package:eunoia/Screens/LoginPage.dart';
import 'package:eunoia/Screens/RegisterPage2.dart';
import 'package:flutter/material.dart';
import '../Constants/Constants.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomRegisterTextField.dart';

class RegisterPage1 extends StatelessWidget {
  const RegisterPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: SingleChildScrollView(
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
                        'Register',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.75),
                            fontFamily: 'Source Serif Pro',
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      )),
                    ),
                    const SizedBox(height: 20),
                    const CustomRegisterTextField(
                      label: 'Name',
                      hint: 'Full name',
                    ),
                    const SizedBox(height: 5),
                    const CustomRegisterTextField(
                      label: 'Email',
                      hint: 'example@example.com',
                    ),
                    const SizedBox(height: 5),
                    const CustomRegisterTextField(
                      label: 'Password',
                      hint: '********',
                    ),
                    const SizedBox(height: 5),
                    const CustomRegisterTextField(
                      label: 'Confirm password',
                      hint: '********',
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 25),
                    CustomButton(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterPage2();
                        }));
                      },
                      title: 'Create account',
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: 16,
                                fontFamily: 'Source Serif Pro')),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginPage();
                            }));
                          },
                          child: const Text(
                            'Login',
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
