// ignore_for_file: file_names
import 'package:eunoia/Constants/Constants.dart';
import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: CustomAppBar(
        title: 'ChatBot',
        backButton: false,
      ),
    );
  }
}
