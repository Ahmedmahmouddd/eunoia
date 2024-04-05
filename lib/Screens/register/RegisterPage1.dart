// ignore_for_file: file_names, sized_box_for_whitespace, non_constant_identifier_names
import 'package:eunoia/Screens/Home.dart';
import 'package:eunoia/Screens/login/LoginPage.dart';
import 'package:eunoia/Widgets/imput_form_field.dart';
import 'package:eunoia/config/config.dart';
import 'package:eunoia/models/registerModels/register_request_model.dart';
import 'package:eunoia/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import '../../Constants/Constants.dart';

class RegisterPage1 extends StatefulWidget {
  const RegisterPage1({super.key});

  @override
  State<RegisterPage1> createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalformKey = GlobalKey<FormState>();
  String? username;
  String? password;
  String? email;

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
                          InputFormField(
                            icon: const Icon(Icons.person_outline, size: 28),
                            title: 'Name',
                            hidePassword: false,
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
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      InputFormField(
                        icon: const Icon(Icons.email, size: 28),
                        title: 'Email',
                        hidePassword: false,
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
                      ),
                      SizedBox(height: 4.h),
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
                      SizedBox(height: 4.h),
                      InputFormField(
                        icon: const Icon(Icons.password, size: 28),
                        title: 'Confirm Password',
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
                      SizedBox(height: 18.h),
                      SizedBox(height: 22.h),
                      ElevatedButton(
                          onPressed: () {
                            if (validateAndSave()) {
                              setState(() {
                                isApiCallProcess = false;
                              });
                              RegisterRequestModel model = RegisterRequestModel(
                                  email: email!,
                                  password: password!,
                                  name: username);
                              ApiServices.register(model).then((Response) => {
                                    if (Response.token != null)
                                      {
                                        FormHelper.showSimpleAlertDialog(
                                          context,
                                          config.appName,
                                          "success !!",
                                          "OK",
                                          () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return const Home();
                                            }));
                                          },
                                        )
                                      }
                                    else
                                      {
                                        FormHelper.showSimpleAlertDialog(
                                          context,
                                          config.appName,
                                          'there was an error',
                                          "OK",
                                          () {
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      }
                                  });
                            }
                            if (globalformKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('validate complete'),
                                ),
                              );
                            }
                          },
                          child: const Text('Register')),
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

  bool validateAndSave() {
    final form = globalformKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
