// ignore_for_file: file_names, non_constant_identifier_names

import 'package:eunoia/Widgets/CustomAppBar.dart';
import 'package:eunoia/Widgets/SearchScreenBar.dart';
import 'package:eunoia/Widgets/serviceCard.dart';
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _showListView = false;
  bool _isLoading = false;

  void _loadListView() async {
    setState(() {
      _isLoading = true;
      _showListView = false;
    });

    // Add a delay to simulate loading time
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      _isLoading = false;
      _showListView = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = getScreenWidth(context);

    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const CustomAppBar(
        title: 'Search',
        backButton: false,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SearchScreenBar(),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: KprimaryGreen,
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 26,
                  ),
                  onPressed: _loadListView,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    Text('Clear',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: Literata,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)),
                  ])),
          if (_isLoading)
            const Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          else if (_showListView)
            Expanded(
              child: ListView(
                children: const [
                  ServiceCard4(),
                  ServiceCard5(),
                ],
              ),
            )
        ],
      ),
    );
  }
}
