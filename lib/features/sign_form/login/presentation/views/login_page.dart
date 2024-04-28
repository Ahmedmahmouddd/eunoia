// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_const
// ignore_for_file: file_names,  non_constant_identifier_names, must_be_immutable
import 'package:eunoia/Screens/navigationBar.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page1.dart';
import 'package:eunoia/Widgets/input_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/features/forget_password/presentation/views/ForgotPassword.dart';
import 'package:eunoia/features/sign_form/login/data/models/login_request_model.dart';
import 'package:eunoia/services/api_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> globalformKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  bool hidePassword = true;
  String? email;
  String? password;
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
                SizedBox(
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
                          'Login',
                          style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 0.75),
                              fontFamily: 'Literata',
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp),
                        )),
                      ),
                      SizedBox(height: 16.h),
                      InputFormField(
                        icon: const Icon(Icons.email_outlined,
                            size: 28,
                            color: const Color.fromRGBO(0, 0, 0, 0.6)),
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
                      SizedBox(height: 13.h),
                      InputFormField(
                        icon: const Icon(
                          Icons.lock_outline,
                          size: 28,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        ),
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
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                      SizedBox(height: 45.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ForgotPassword();
                          }));
                        },
                        child: Center(
                          child: Text('Forgot your password ?',
                              style: TextStyle(
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontFamily: 'Literata',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp)),
                        ),
                      ),
                      SizedBox(height: 11.h),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                        ),
                        onPressed: () async {
                          if (validateAndSave()) {
                            setState(() {
                              isApiCallProcess = true;
                            });
                            LoginRequestModel model = LoginRequestModel(
                                email: email!, password: password!);

                            try {
                              if (isfieldempty == false) {
                                await ApiServices.login(model);
                                if (!context.mounted) return;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const MainNav()));
                              } else {
                                  NoFieldCanBeEmptySnackBar(context);
                                  isfieldempty = false;
                                }
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(error.toString()),
                                  duration: const Duration(seconds: 3),
                                ),
                              );
                            } finally {
                              setState(() {
                                isApiCallProcess = false;
                              });
                            }
                          }
                        },
                        child: Container(
                          height: 44.h,
                          width: 325.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: KprimaryGreen),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'Literata',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a user? ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: smallText,
                                  fontFamily: 'Literata')),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const RegisterPage1();
                              }));
                            },
                            child: Text(
                              'Create account',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: KprimaryGreen,
                                  fontSize: smallText,
                                  fontFamily: 'Literata'),
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

  bool validateAndSave() {
    final form = globalformKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}

  void NoFieldCanBeEmptySnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No fields can be empty'),
        duration: Duration(seconds: 2),
      ),
    );
  }