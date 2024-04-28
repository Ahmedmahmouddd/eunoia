import 'package:eunoia/features/home/presentation/widgets/popular_card.dart';
import 'package:flutter/material.dart';

class PopularCardListView extends StatelessWidget {
  const PopularCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const PopularCard();
      },
    );
  }
}
