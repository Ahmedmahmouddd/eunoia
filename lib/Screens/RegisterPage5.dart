// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../Constants/Constants.dart';
import '../Widgets/RegisterStepperContainer.dart';

class RegisterPage5 extends StatefulWidget {
  const RegisterPage5({super.key});

  @override
  State<RegisterPage5> createState() => _RegisterPage5State();
}

class _RegisterPage5State extends State<RegisterPage5> {
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
            const Padding(
              padding: EdgeInsets.only(top: 67.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RegisterStepperContainer(color: KprimaryGreen),
                  SizedBox(width: 12),
                  RegisterStepperContainer(color: KprimaryGreen),
                  SizedBox(width: 12),
                  RegisterStepperContainer(color: KprimaryGreen),
                ],
              ),
            ),
            Container(
              height: 560,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(110)),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Center(
                      child: Text(
                        'More Details',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontFamily: 'Source Serif Pro',
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 32.0),
                          child: Text(
                            'Words that describe your business',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Koh Santepheap',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 335,
                        height: 60,
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
                                          style: const TextStyle(
                                              fontSize: 14,
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
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Upload your cover photo',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Koh Santepheap',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 335,
                        height: 210,
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
                            const Positioned.fill(
                              child: Icon(
                                Icons.image_outlined,
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                size: 50,
                              ),
                            ),
                            Positioned(
                                bottom: 5,
                                right: 5,
                                child: Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: KprimaryPink),
                                    child: const Icon(
                                      Icons.add_outlined,
                                      size: 24,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Do you want to add more photos for people to see ?',
                        style: TextStyle(
                            fontSize: 15,
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
                        padding: const EdgeInsets.only(
                          right: 25.0,
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
