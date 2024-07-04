// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:eunoia/core/Constants/Constants.dart';
import 'package:eunoia/features/home/data/home_cubit/home_cubit.dart';
import 'package:eunoia/features/home/presentation/widgets/home_screen_app_bar.dart';
import 'package:eunoia/features/home/presentation/widgets/home_screen_text.dart';
import 'package:eunoia/features/home/presentation/widgets/nearby_card.dart';
import 'package:eunoia/features/home/presentation/widgets/offer_card.dart';
import 'package:eunoia/features/home/presentation/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..getTopServiceData()
        ..getNearbyServiceData()
        ..getPopularServiceData(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: KprimaryBeige,
          appBar: const HomeScreenAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                endIndent: 60,
                indent: 60,
              ),
              const HomeScreenText(text: 'Special offers'),
              Expanded(
                  child: BlocBuilder<HomeCubit, HomeState>(
                      buildWhen: (previous, current) =>
                          previous.homeTopServicesStatus !=
                          current.homeTopServicesStatus,
                      builder: (context, state) {
                        return switch (state.homeTopServicesStatus) {
                          HomeTopServicesStatus.success ||
                          HomeTopServicesStatus.failure =>
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: state.topItems.length,
                              itemBuilder: (context, index) {
                                final item = state.topItems[index];
                                return OfferCard(topService: item);
                              },
                            ),
                          HomeTopServicesStatus.loading =>
                            const Center(child: CircularProgressIndicator())
                        };
                      })),
              const HomeScreenText(text: 'Popular'),
              Expanded(
                  child: BlocBuilder<HomeCubit, HomeState>(
                      buildWhen: (previous, current) =>
                          previous.homePopularStatus !=
                          current.homePopularStatus,
                      builder: (context, state) {
                        return switch (state.homePopularStatus) {
                          HomePopularStatus.success ||
                          HomePopularStatus.failure =>
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: state.popularItems.length,
                              itemBuilder: (context, index) {
                                final item = state.popularItems[index];
                                return PopularCard(popularService: item);
                              },
                            ),
                          HomePopularStatus.loading =>
                            const Center(child: CircularProgressIndicator())
                        };
                      })),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: HomeScreenText(text: 'Nearby'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.pin_drop_outlined,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, .7),
                    ),
                    Text(
                      'Ismailia',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, .7),
                        fontFamily: 'Literata',
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      previous.homeNearbyServiceStatus !=
                      current.homeNearbyServiceStatus,
                  builder: (context, state) {
                    return switch (state.homeNearbyServiceStatus) {
                      HomeNearbyServiceStatus.success ||
                      HomeNearbyServiceStatus.failure =>
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: state.nearByItems.length,
                          itemBuilder: (context, index) {
                            final item = state.nearByItems[index];
                            return NearbyCard(nearbyService: item);
                          },
                        ),
                      HomeNearbyServiceStatus.loading =>
                        const Center(child: CircularProgressIndicator())
                    };
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
