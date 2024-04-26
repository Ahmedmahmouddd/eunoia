import 'package:eunoia/features/home/presentation/widgets/offerCard.dart';
import 'package:flutter/material.dart';

class OfferCardlistlView extends StatelessWidget {
  const OfferCardlistlView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const OfferCard();
      },
    );
  }
}
