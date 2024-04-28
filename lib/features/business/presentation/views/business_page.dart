import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/business/presentation/widgets/cover_with_title.dart';
import 'package:eunoia/features/business/presentation/widgets/business_page_app_bar.dart';
import 'package:eunoia/features/business/presentation/widgets/package_card.dart';
import 'package:eunoia/features/business/presentation/widgets/section_title.dart';
import 'package:eunoia/features/business/presentation/widgets/similar_card.dart';
import 'package:flutter/material.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const BusinessPageAppBar(
        title: 'Mercure Al-Forsan',
      ),
      body: ListView(
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoverWithTitle(
                pin: true,
                image: 'assets/images/mercure.png',
                title: 'Mercure Al-Forsan',
                rate: '4.5',
                location: 'Ismailia',
              ),
              Divider(
                endIndent: 60,
                indent: 60,
              ),
              SectionTitle(title: 'Location'),
              Divider(
                endIndent: 60,
                indent: 60,
              ),
              SectionTitle(title: 'Packages'),
              PackageCard(
                  image: 'assets/images/package1.png',
                  price: '11,000',
                  title: 'Outdoor Venue'),
              Padding(
                padding: EdgeInsets.only(top: 13.0, bottom: 5),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: SectionTitle(title: 'Similar'),
              ),
              SimilarCard(
                  image: 'assets/images/similar.png',
                  rate: '3.5',
                  title: 'Gardenia'),
            ],
          ),
        ],
      ),
    );
  }
}
