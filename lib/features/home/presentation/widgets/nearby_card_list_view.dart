import 'package:eunoia/features/home/presentation/widgets/nearbyCard.dart';
import 'package:flutter/material.dart';

class NearbyCardListView extends StatelessWidget {
  const NearbyCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const NearbyCard();
      },
    );
  }
}
