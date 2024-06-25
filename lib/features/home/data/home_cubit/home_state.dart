part of 'home_cubit.dart';

enum HomePopularStatus { loading, success, failure }

enum HomeTopServicesStatus { loading, success, failure }

enum HomeNearbyServiceStatus { loading, success, failure }

final class HomeState extends Equatable {
  final HomePopularStatus homePopularStatus;
  final HomeTopServicesStatus homeTopServicesStatus;
  final HomeNearbyServiceStatus homeNearbyServiceStatus;
  final List<NearbyService> nearByItems;
  final List<PopularService> popularItems;
  final List<TopService> topItems;
  final String? nearByFailureMessage;
  final String? popularFailureMessage;
  final String? topServiceFailureMessage;

  HomeState(
      {required this.homePopularStatus,
      required this.homeTopServicesStatus,
      required this.homeNearbyServiceStatus,
      required this.nearByItems,
      required this.popularItems,
      required this.topItems,
      this.nearByFailureMessage,
      this.popularFailureMessage,
      this.topServiceFailureMessage});

  factory HomeState.initial() => HomeState(
        homeNearbyServiceStatus: HomeNearbyServiceStatus.loading,
        homeTopServicesStatus: HomeTopServicesStatus.loading,
        homePopularStatus: HomePopularStatus.loading,
        nearByItems: [],
        popularItems: [],
        topItems: [],
      );

  HomeState copyWith({
    HomePopularStatus? homePopularStatus,
    HomeNearbyServiceStatus? homeNearbyServiceStatus,
    HomeTopServicesStatus? homeTopServicesStatus,
    List<NearbyService>? nearByItems,
    List<PopularService>? popularItems,
    List<TopService>? topItems,
    String? nearByFailureMessage,
    String? popularFailureMessage,
    String? topServiceFailureMessage,
  }) {
    return HomeState(
      homePopularStatus: homePopularStatus ?? this.homePopularStatus,
      homeTopServicesStatus:
          homeTopServicesStatus ?? this.homeTopServicesStatus,
      homeNearbyServiceStatus:
          homeNearbyServiceStatus ?? this.homeNearbyServiceStatus,
      nearByItems: nearByItems ?? this.nearByItems,
      nearByFailureMessage: nearByFailureMessage ?? this.nearByFailureMessage,
      popularFailureMessage:
          popularFailureMessage ?? this.popularFailureMessage,
      topServiceFailureMessage:
          topServiceFailureMessage ?? this.topServiceFailureMessage,
      popularItems: popularItems ?? this.popularItems,
      topItems: topItems ?? this.topItems,
    );
  }

  @override
  List<Object?> get props => [
        homePopularStatus,
        homeNearbyServiceStatus,
        homeTopServicesStatus,
        nearByItems,
        popularItems,
        topItems,
        nearByFailureMessage,
        popularFailureMessage,
        topServiceFailureMessage,
      ];
}
