import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  final String text;
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final int price;
  final Function(int) onSelect;

  ToggleButton({
    required this.text,
    required this.initialValue,
    this.onChanged,
    required this.price,
    required this.onSelect,
  });

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: InkWell(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
            if (widget.onChanged != null) {
              widget.onChanged!(_isSelected);
            }
            if (_isSelected) {
              widget.onSelect(widget.price);
            } else {
              widget.onSelect(-widget.price); // Subtract price on deselection
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: _isSelected ? Colors.grey : Colors.grey,
                    width: 2.0,
                  ),
                ),
                padding: const EdgeInsets.all(3.0),
                child: _isSelected
                    ? const Icon(Icons.check,
                        size: 15.0, color: Color.fromARGB(255, 100, 100, 100))
                    : Container(
                        width: 15.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
              ),
              const SizedBox(
                  width: 10), // Add some spacing between icon and text
              Text(
                widget.text,
                style: const TextStyle(
                  fontFamily: 'Literata',
                  fontSize: 16,
                  color: Color.fromRGBO(0, 0, 0, .7),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '+${widget.price} EGP',
                    style: const TextStyle(
                      fontFamily: 'Literata',
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, .7),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
