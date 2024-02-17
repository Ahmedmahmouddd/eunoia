// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:eunoia/Screens/RegisterPage4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constants/Constants.dart';
import '../Widgets/RegisterStepperContainer.dart';

class RegisterPage3 extends StatefulWidget {
  const RegisterPage3({super.key});

  @override
  State<RegisterPage3> createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
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
                    height: screenHeight * 0.005,
                    color: const Color.fromRGBO(0, 0, 0, 0.1)),
                SizedBox(width: 11.w),
                RegisterStepperContainer(
                    height: screenHeight * 0.005,
                    color: const Color.fromRGBO(0, 0, 0, 0.1)),
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
                      'Business type',
                      style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 28.sp),
                    )),
                  ),
                  SizedBox(height: 40.h),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            'Business category',
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
                                              fontSize: 13.sp,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.6)),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) => setState(() => item = item),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.sp),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            'Location',
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
                                              fontSize: 13.sp,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.6)),
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (item) => setState(() => item = item),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 25.h,
                      right: 25.w,
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        backgroundColor: KprimaryGreen,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const RegisterPage4();
                          }));
                        },
                        child: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
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
