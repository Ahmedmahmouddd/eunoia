import 'package:eunoia/core/constants/constants.dart';
import 'package:flutter/material.dart';

Future<void> showRequestSheet(BuildContext context) async {
  final TextEditingController _dateController = TextEditingController();
  TimeOfDay _timeOfDay = TimeOfDay.now();

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );

    if (_picked != null) {
      _dateController.text = _picked.toString().split(" ")[0];
    }
  }

  Future<void> _selectTime(StateSetter setState) async {
    TimeOfDay? _pickedTime = await showTimePicker(
      initialTime: _timeOfDay,
      context: context,
    );

    if (_pickedTime != null) {
      setState(() {
        _timeOfDay = _pickedTime;
      });
    }
  }

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            decoration: const BoxDecoration(
              color:
                  KprimaryBeige, // Replace KprimaryBeige with an actual color
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            height: 550.0, // Replace 550.h with an actual value
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 20),
                    child: Center(
                      child: Text(
                        'Request Details',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, .65),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Literata',
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Date:',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .65),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Literata',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, .65),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Literata',
                      ),
                      controller: _dateController,
                      decoration: const InputDecoration(
                        hintText: 'DD/MM/YY',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, .65),
                            width: 1,
                          ),
                        ),
                      ),
                      onTap: () {
                        _selectDate();
                      },
                    ),
                  ),
                  const Text(
                    'Time:',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .65),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Literata',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      height: 40.0, // Replace 40.h with an actual value
                      width: 80.0, // Replace 80.w with an actual value
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(0, 0, 0, .65),
                          width: 1,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _selectTime(setState);
                        },
                        child: Center(
                          child: Text(
                            '${_timeOfDay.hour.toString().padLeft(2, '0')} : ${_timeOfDay.minute.toString().padLeft(2, '0')}',
                            style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, .65),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Literata',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Notes:',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .65),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Literata',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      maxLines: 3,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, .65),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Literata',
                      ),
                      decoration: InputDecoration(
                        hintText: 'Add your notes...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 0, 0, .65),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: KprimaryGreen,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: const Center(
                            child: Text(
                              'Send request',
                              style: TextStyle(
                                fontFamily: 'Literata',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onTap: () async {
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );
                          await Future.delayed(const Duration(seconds: 2));
                          Navigator.pop(context); // Close the loading indicator
                          Navigator.of(context).pop(); // Close the bottom sheet
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Request sent successfully!'),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
