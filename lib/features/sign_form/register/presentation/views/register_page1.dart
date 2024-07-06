// ignore_for_file: file_names, sized_box_for_whitespace, non_constant_identifier_names, use_build_context_synchronously
import 'package:eunoia/Widgets/input_form_field2.dart';
import 'package:eunoia/core/extensions/sized_box_helper.dart';
import 'package:eunoia/features/sign_form/login/presentation/views/login_page.dart';
import 'package:eunoia/features/sign_form/register/data/models/register_request_model.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page2.dart';
import 'package:eunoia/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import '../../../../../core/Constants/Constants.dart';

class RegisterPage1 extends StatefulWidget {
  const RegisterPage1({super.key});

  @override
  State<RegisterPage1> createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  GlobalKey<FormState> globalformKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  bool hidePassword = true;
  String? username;
  String? password;
  String? email;
  String? passwordConfirm;
  String? rule;
  String? confirmPassword;
  bool? isfieldempty = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: ProgressHUD(
        key: UniqueKey(),
        inAsyncCall: isApiCallProcess,
        child: SingleChildScrollView(
          child: Form(
            key: globalformKey,
            child: Column(
              children: [
                Container(
                    height: screenHeight * 0.25,
                    child: Image.asset('assets/images/logo1.png')),
                Container(
                  height: screenHeight * 0.75,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(110)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 25.h),
                        child: Center(
                            child: Text(
                          'Register',
                          style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 0.75),
                              fontFamily: 'Source Serif Pro',
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp),
                        )),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputFormField2(
                            icon: const Icon(Icons.person_outline, size: 28),
                            title: 'Name',
                            hidePassword: false,
                            onSaved: (value) {
                              username = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                isfieldempty = true;
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      InputFormField2(
                        icon: const Icon(Icons.email, size: 28),
                        title: 'Email',
                        hidePassword: false,
                        onSaved: (value) {
                          email = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            isfieldempty = true;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.h),
                      InputFormField2(
                        icon: const Icon(Icons.password, size: 28),
                        title: 'Password',
                        hidePassword: hidePassword,
                        onSaved: (value) {
                          password = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            isfieldempty = true;
                          }
                          return null;
                        },
                        onPressed: () {
                          setState(() {
                            hidePassword =
                                !hidePassword; // Toggle password visibility
                          });
                        },
                      ),
                      SizedBox(height: 8.h),
                      InputFormField2(
                        icon: const Icon(Icons.password, size: 28),
                        title: 'Confirm Password',
                        hidePassword: hidePassword,
                        onSaved: (value) {
                          password = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            isfieldempty = true;
                          }
                          return null;
                        },
                        onPressed: () {
                          setState(() {
                            hidePassword =
                                !hidePassword; // Toggle password visibility
                          });
                        },
                      ),
                      18.szH,
                      22.szH,
                      SizedBox(
                        height: 44.h,
                        width: 325.w,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (validateAndSave()) {
                              setState(() {
                                isApiCallProcess = true;
                              });
                              RegisterRequestModel model = RegisterRequestModel(
                                email: email!,
                                password: password!,
                                name: username!,
                                passwordConfirm: password!,
                                role: 'admin',
                              );

                              try {
                                if (isfieldempty == false) {
                                  await ApiServices.register(model);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage2()));
                                } else {
                                  NoFieldCanBeEmptySnackBar(context);
                                  isfieldempty = false;
                                }
                              } on Exception catch (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(error.toString()),
                                    duration: const Duration(seconds: 2),
                                  ),
                                );
                              } finally {
                                setState(() {
                                  isApiCallProcess =
                                      false; // Reset to false after API call completes
                                });
                              }
                            } else {
                              // Form validation failed
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Please fix the errors in the form.'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                KprimaryGreen), // Background color
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(16), // Border radius
                              ),
                            ),
                            elevation: MaterialStateProperty.all<double>(
                                0), // Elevation
                          ),
                          child: const Center(
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                fontFamily: 'Literata',
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 7.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account? ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: smallText,
                                  fontFamily: 'Source Serif Pro')),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: KprimaryGreen,
                                  fontSize: smallText,
                                  fontFamily: 'Source Serif Pro'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void NoFieldCanBeEmptySnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No fields can be empty'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalformKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
