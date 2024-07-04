import 'package:eunoia/core/constants/constants.dart';
import 'package:eunoia/features/business/presentation/widgets/cover_with_title.dart';
import 'package:eunoia/features/business/presentation/widgets/business_page_app_bar.dart';
import 'package:eunoia/features/business/presentation/widgets/package_card.dart';
import 'package:eunoia/features/business/presentation/widgets/section_title.dart';
import 'package:eunoia/features/business/presentation/widgets/similar_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  // Method to launch the URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryBeige,
      appBar: const BusinessPageAppBar(
        title: 'Mercure Al-Forsan',
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CoverWithTitle(
                pin: true,
                image: 'assets/images/mercure.png',
                title: 'Mercure Al-Forsan',
                rate: '4.5',
                location: 'Ismailia',
              ),
              const Divider(
                endIndent: 60,
                indent: 60,
              ),
              const SectionTitle(title: 'Location'),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      _launchURL('https://www.google.com/maps/place/Mercure+Ismailia+Forsan+Island+Hotel/@30.5908001,32.2589517,15z/data=!4m9!3m8!1s0x14f8594808a17409:0xa0b58f85a1cbfb6f!5m2!4m1!1i2!8m2!3d30.5908001!4d32.2589517!16s%2Fg%2F1tlr1zz7?entry=ttu');
                    },
                    child: Image.asset(
                      'assets/images/mappp.png',
                    ),
                  ),
                ),
              ),
              const Divider(
                endIndent: 60,
                indent: 60,
              ),
              const SectionTitle(title: 'Packages'),
              const PackageCard(
                  image: 'assets/images/package1.png',
                  price: '15,000',
                  title: 'Outdoor Venue'),
              const Padding(
                padding: EdgeInsets.only(top: 13.0, bottom: 5),
                child: Divider(
                  endIndent: 60,
                  indent: 60,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: SectionTitle(title: 'Similar'),
              ),
              const SimilarCard(
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
