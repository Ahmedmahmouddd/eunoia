import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputFormField2 extends StatelessWidget {
  final bool hidePassword;
  final Function(String?) onSaved;
  final String? Function(String?)? validator;
  final VoidCallback? onPressed;
  final String title;
  final Icon icon;
  const InputFormField2({
    Key? key,
    required this.hidePassword,
    required this.onSaved,
    required this.validator,
    this.onPressed,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromRGBO(119, 119, 119, 0.6),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    obscureText: hidePassword,
                    onSaved: onSaved,
                    validator: validator,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 18,
                      fontFamily: 'Literata',
                    ),
                    decoration: InputDecoration(
                      hintText: '',
                      label: Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Text(title),
                      ),
                      labelStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.75),
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        fontFamily: 'Literata',
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                if (onPressed != null) ...[
                  IconButton(
                    icon: Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 50),
                      child: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                    onPressed: onPressed,
                  ),
                  const SizedBox(width: 5),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
