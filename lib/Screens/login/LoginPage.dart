// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names,  non_constant_identifier_names, must_be_immutable
import 'package:eunoia/Widgets/imput_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/forgot_password/ForgotPassword.dart';
import 'package:eunoia/Screens/register/RegisterPage1.dart';
import 'package:eunoia/models/loginModels/login_request_model.dart';
import 'package:eunoia/services/api_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalformKey = GlobalKey<FormState>();

  String? email;
  String? password;

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
                              fontFamily: 'Source Serif Pro',
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp),
                        )),
                      ),
                      SizedBox(height: 16.h),
                      InputFormField(
                        icon: const Icon(Icons.email, size: 28),
                        title: 'Email',
                        hidePassword: false,
                        onSaved: (value) {
                          email = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Field cannot be empty';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 13.h),
                      InputFormField(
                        icon: const Icon(Icons.password, size: 28),
                        title: 'Password',
                        hidePassword: hidePassword,
                        onSaved: (value) {
                          password = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Field cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        onPressed: () {
                          setState(() {
                            hidePassword =
                                !hidePassword; // Toggle password visibility
                          });
                        },
                      ),
                      SizedBox(height: 31.h),
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
                                  fontFamily: 'Source Serif Pro',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp)),
                        ),
                      ),
                      SizedBox(height: 11.h),
                      ElevatedButton(
                          onPressed: () async {
                            if (validateAndSave()) {
                              setState(() {
                                isApiCallProcess = true;
                              });
                              LoginRequestModel model = LoginRequestModel(
                                  email: email!, password: password!);

                              try {
                                await ApiServices.login(model);
                                if (!context.mounted) return;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Home()));
                              } catch (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(error.toString()),
                                    duration: const Duration(
                                        seconds:
                                            2), // Adjust the duration as needed
                                  ),
                                );
                              } finally {
                                setState(() {
                                  isApiCallProcess = false;
                                });
                              }
                            }
                          },
                          child: const Text('Login')),
                      SizedBox(
                        height: 78.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a user? ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: smallText,
                                  fontFamily: 'Source Serif Pro')),
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

  bool validateAndSave() {
    final form = globalformKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
