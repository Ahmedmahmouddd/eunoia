import 'package:flutter/material.dart';
import 'package:eunoia/Widgets/about.dart';
import 'package:eunoia/Widgets/packagesProfile.dart';
import 'package:eunoia/Widgets/photosProfile.dart';

class SegmentControlBar extends StatefulWidget {
  const SegmentControlBar({Key? key}) : super(key: key);

  @override
  State<SegmentControlBar> createState() => _SegmentControlBarState();
}

class _SegmentControlBarState extends State<SegmentControlBar> {
  int _selectedIndex = 0;

  List<String> segmentTitles = ['About', 'Packages', 'Photos'];

  List<Widget> segmentScreens() {
    return [
      AboutProfile(),
      PackagesProfile(),
      PhotosProfile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.59),
          thickness: .2,
        ),
        Container(
          alignment: Alignment.center,
          child: CustomSegmentedControl(
            segmentTitles: segmentTitles,
            initialIndex: _selectedIndex,
            onValueChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
        const Divider(
          color: Color.fromRGBO(0, 0, 0, 0.6),
          thickness: .2,
        ),
        segmentScreens()[_selectedIndex], // Display selected widget
      ],
    );
  }
}

class CustomSegmentedControl extends StatefulWidget {
  final List<String> segmentTitles;
  final ValueChanged<int>? onValueChanged;
  final int initialIndex;

  const CustomSegmentedControl({
    Key? key,
    required this.segmentTitles,
    this.onValueChanged,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  _CustomSegmentedControlState createState() => _CustomSegmentedControlState();
}

class _CustomSegmentedControlState extends State<CustomSegmentedControl> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        widget.segmentTitles.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
            if (widget.onValueChanged != null) {
              widget.onValueChanged!(index);
            }
          },
          child: _buildSegment(
            widget.segmentTitles[index],
            index == _selectedIndex,
          ),
        ),
      ),
    );
  }

  Widget _buildSegment(String text, bool isSelected) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Literata', // You can specify your own font here
            color: const Color.fromRGBO(0, 0, 0, 0.6),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
