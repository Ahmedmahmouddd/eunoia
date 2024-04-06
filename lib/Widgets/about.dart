import 'package:eunoia/Widgets/EditableInputField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutProfile extends StatelessWidget {
  const AboutProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 3.h),
        const EditableField(
          title: 'CATEGORY',
          hint: 'Photographer',
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            size: 35,
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
        ),
        SizedBox(height: 7.h),
        const EditableField(
          title: 'MOBILE NUMBER',
          hint: '+20 1234567890',
          suffixIcon: Icon(Icons.edit, color: Color.fromRGBO(0, 0, 0, 0.6)),
        ),
        SizedBox(height: 7.h),
        const EditableField(
          title: 'lOCATION',
          hint: 'All over Egypt',
          suffixIcon: Icon(Icons.arrow_drop_down,
              size: 35, color: Color.fromRGBO(0, 0, 0, 0.6)),
        ),
      ],
    );
  }
}
