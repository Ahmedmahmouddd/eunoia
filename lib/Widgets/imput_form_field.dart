import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  final bool hidePassword;
  final Function(String?) onSaved;
  final String? Function(String?)? validator;
  final VoidCallback? onPressed;
  final String title;
  final Icon icon;
  const InputFormField({
    Key? key,
    required this.hidePassword,
    required this.onSaved,
    required this.validator,
    this.onPressed,
    required this.title,required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
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
                 Padding(
                  padding:const EdgeInsets.only(top: 12.0),
                  child: icon,
                ),
                const SizedBox(width: 5),
                Container(
                  width: 1,
                  height: 55,
                  color: const Color.fromRGBO(119, 119, 119, 0.6),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: TextFormField(
                    obscureText: hidePassword,
                    onSaved: onSaved,
                    validator: validator,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Koh Santepheap',
                    ),
                    decoration: InputDecoration(
                      label: Text(title),
                      labelStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                        fontFamily: 'Koh Santepheap',
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                if (onPressed != null) ...[
                  IconButton(
                    icon: Icon(
                      hidePassword ? Icons.visibility_off : Icons.visibility,
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
