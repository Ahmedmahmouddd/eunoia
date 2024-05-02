import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/business/presentation/widgets/business_page_app_bar.dart';
import 'package:eunoia/features/business/presentation/widgets/cover_with_title.dart';
import 'package:eunoia/features/business/presentation/widgets/section_title.dart';
import 'package:flutter/material.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BusinessPageAppBar(title: 'Mercure Al-Forsan'),
      backgroundColor: KprimaryBeige,
      body: ListView(
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoverWithTitle(
                image: 'assets/images/package2.png',
                title: 'Outdoor Venue',
                location: 'Mercure Al-Forsan',
                rate: '4',
                pin: false,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              SectionTitle(title: 'Description'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
                child: Text(
                  'Perfect for hosting events, provides an idyllic backdrop for intimate gatherings, and special occasions.',
                  style: TextStyle(
                    fontFamily: 'Literata',
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, .7),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              SectionTitle(title: 'Customize Package'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 3),
                child: Text(
                  'This venue is only for 15,000',
                  style: TextStyle(
                    fontFamily: 'Literata',
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, .7),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
              SectionTitle(title: 'Capacity'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 100,
                  indent: 100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
