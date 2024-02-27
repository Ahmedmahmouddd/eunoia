import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Screens/temp.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/serviceCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Photographers extends StatefulWidget {
  const Photographers({Key? key}) : super(key: key);

  @override
  State<Photographers> createState() => _PhotographersState();
}

class _PhotographersState extends State<Photographers> {
  List<String> items = <String>[
    'Price: Low to High',
    'Price: High to Low',
    'Rate: Low to High',
    'Rate: High to Low'
  ];
  String dropDownValue = 'Price: Low to High';
  @override
  Widget build(BuildContext context) {
    // Exclude Bottom Navigation Bar
    NavigationUtility.showBottomNavBar = false;

    return Scaffold(
        backgroundColor: KprimaryBeige,
        appBar: const CustomAppBar(
          title: 'Photographers',
          backButton: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.swap_vert,
                    size: 24,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                  Text(
                    'Sort by : ',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Literata',
                        color: const Color.fromRGBO(0, 0, 0, 0.75)),
                  ),
                  DropdownButton<String>(
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Literata',
                          color: const Color.fromRGBO(0, 0, 0, 0.75)),
                      dropdownColor: KprimaryBeige,
                      value: dropDownValue,
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue = newValue!;
                        });
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
              child: Container(
                height: 1,
                color: const Color.fromARGB(255, 208, 208, 208),
              ),
            ),
            const Center(
              child: ServiceCard(),
            ),
          ],
        ));
  }
}
