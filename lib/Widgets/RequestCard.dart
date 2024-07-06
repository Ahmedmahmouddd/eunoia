// ignore_for_file: non_constant_identifier_names, file_names
import 'package:eunoia/core/Constants/Constants.dart';
import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double ScreenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                )
              ],
              color: Colors.white,
            ),
            height: 180,
            child: Row(
              children: [
                Container(
                  width: ScreenWidth * 0.25,
                  color: const Color.fromRGBO(245, 185, 167, 0.24),
                  height: 165,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '7',
                        style: TextStyle(
                            fontFamily: Literata,
                            color: Color.fromRGBO(0, 0, 0, 0.79),
                            fontSize: 30),
                      ),
                      Text(
                        'Jul 2024',
                        style: TextStyle(
                            fontFamily: Literata,
                            color: Color.fromRGBO(75, 75, 75, 1),
                            fontSize: 16),
                      ),
                      Text(
                        'Sun',
                        style: TextStyle(
                            fontFamily: Literata,
                            color: Color.fromRGBO(75, 75, 75, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  width: ScreenWidth * 0.65,
                  color: Colors.white,
                  height: 160,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          '4:00 PM',
                          style: TextStyle(
                              fontFamily: Literata,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              fontSize: 18),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Notes:',
                              style: TextStyle(
                                  fontFamily: Literata,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: 18),
                            ),
                          ),
                          Text(
                            ' No kids allowed',
                            style: TextStyle(
                                fontFamily: Literata,
                                color: Color.fromRGBO(0, 0, 0, 0.6),
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Sent',
                              style: TextStyle(
                                  fontFamily: 'Literata',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
