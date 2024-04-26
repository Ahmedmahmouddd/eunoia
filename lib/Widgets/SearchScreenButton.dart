// ignore_for_file: file_names

import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';

class SearchScreenButton extends StatelessWidget {
  const SearchScreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: KprimaryGreen, borderRadius: BorderRadius.circular(5)),
      child: const Icon(
        Icons.search,
        size: 26,
        color: Colors.white,
      ),
    );
  }
}
