// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/Constants.dart';
import '../Widgets/RegisterStepperContainer.dart';

class RegisterPage5 extends StatefulWidget {
  const RegisterPage5({super.key});

  @override
  State<RegisterPage5> createState() => _RegisterPage5State();
}

class _RegisterPage5State extends State<RegisterPage5> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KprimaryBeige,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: screenHeight * 0.25,
                child: Image.asset('assets/logo 1.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RegisterStepperContainer(
                    height: screenHeight * 0.005, color: KprimaryGreen),
                SizedBox(width: 11.w),
                RegisterStepperContainer(
                    height: screenHeight * 0.005, color: KprimaryGreen),
                SizedBox(width: 11.w),
                RegisterStepperContainer(
                    height: screenHeight * 0.005, color: KprimaryGreen),
              ],
            ),
            Container(
              height: screenHeight * 0.745,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(110)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: Center(
                      child: Text(
                        'More Details',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 28.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 32.0),
                          child: Text(
                            'Words that describe your business',
                            style: TextStyle(
                                fontSize: 14.5.sp,
                                fontFamily: 'Koh Santepheap',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: screenWidth * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              value: 'Select',
                              items: [
                                'Select',
                                'Item1',
                                'Item2',
                                'Item3',
                                'Item4',
                              ]
                                  .map((item) => DropdownMenuItem(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.6)),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) => setState(() => item = item),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Upload your cover photo',
                            style: TextStyle(
                                fontSize: 14.5.sp,
                                fontFamily: 'Koh Santepheap',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        width: screenWidth * 0.85,
                        height: screenWidth * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.4),
                            width: 1.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Icon(
                                Icons.image_outlined,
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                size: 50.sp,
                              ),
                            ),
                            Positioned(
                                bottom: 5.sp,
                                right: 5.sp,
                                child: Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: KprimaryPink),
                                    child: Icon(
                                      Icons.add_outlined,
                                      size: 24.sp,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Do you want to add more photos for people to see?',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Koh Santepheap',
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 33,
                            width: 125,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: KprimaryGreen, width: 1),
                                borderRadius: BorderRadius.circular(20),
                                color: KprimaryBeige),
                            child: const Center(
                              child: Text(
                                ' + Add photos ',
                                style: TextStyle(
                                    fontFamily: 'Koh Santepheap',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: KprimaryGreen),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 25.w,
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            backgroundColor: KprimaryGreen,
                            onPressed: () {},
                            child: const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
