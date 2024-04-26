// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:eunoia/features/sign_form/register/presentation/views/RegisterPage5.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Widgets/RegisterStepperContainer.dart';

class RegisterPage4 extends StatelessWidget {
  const RegisterPage4({Key? key}) : super(key: key);

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
                child: Image.asset('assets/images/logo1.png')),
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
                        'Business info',
                        style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 28.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screenWidth * 0.31,
                        height: screenWidth * 0.31,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.5),
                            width: 1.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Icon(
                                Icons.image_outlined,
                                color: const Color.fromRGBO(0, 0, 0, 0.4),
                                size: 28.sp,
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: KprimaryPink),
                                    child: Icon(
                                      Icons.add_outlined,
                                      size: 22.sp,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload your profile picture',
                            style: TextStyle(
                                fontSize: smallText,
                                fontFamily: 'Koh Santepheap',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Preferably your personal photo ',
                            style: TextStyle(
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: 12.sp,
                                fontFamily: 'Koh Santepheap',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 17.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Mobile number',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallText,
                            fontFamily: 'Koh Santepheap',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black,
                                  strokeAlign: BorderSide.strokeAlignInside))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: Text(
                              '+20',
                              style: TextStyle(
                                  fontFamily: 'Koh Santepheap',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '1234567890',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Business describtion',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallText,
                            fontFamily: 'Koh Santepheap',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3))
                          ]),
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
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Desrcibe your business',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            maxLines: 2,
                            minLines: 2,
                          ),
                        ],
                      ),
                    ),
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
                            return const RegisterPage5();
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
