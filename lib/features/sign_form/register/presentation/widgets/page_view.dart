// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:eunoia/features/sign_form/register/presentation/views/register_page1.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page2.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page3.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page4.dart';
import 'package:eunoia/features/sign_form/register/presentation/views/register_page5.dart';
import 'package:flutter/material.dart';

class mltiStepForm extends StatefulWidget {
  const mltiStepForm({super.key});

  @override
  _mltiStepFormState createState() => _mltiStepFormState();
}

class _mltiStepFormState extends State<mltiStepForm> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          RegisterPage1(),
          RegisterPage2(),
          RegisterPage3(),
          RegisterPage4(),
          RegisterPage5(),
        ],
      ),
    );
  }
}
