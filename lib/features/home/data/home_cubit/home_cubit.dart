import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:eunoia/core/config/logger.dart';
import 'package:eunoia/core/constants/cash_storage.dart';
import 'package:eunoia/features/home/data/models/nearby_services/nearby_service_model.dart';
import 'package:eunoia/features/home/data/models/popular_services/popular_service_model.dart';
import 'package:eunoia/features/home/data/models/top_services/top_services_model.dart';
import 'package:http/http.dart' as client;
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  static const String nearbyServiceURL =
      'https://eunoia-api-v1-0.onrender.com/api/v1/services/nearBy';
  static const String topServiceURL =
      'https://eunoia-api-v1-0.onrender.com/api/v1/services?limit=10&sort=-ratingsAverage';
  static const String popularServiceURL =
      'https://eunoia-api-v1-0.onrender.com/api/v1/services/popular';

  // CacheData.getData('token');
  String? token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ODNlOTUyZjhhNTllN2U1YWNiZGRhNSIsImlhdCI6MTcxOTkyMDk4MywiZXhwIjoxNzI3Njk2OTgzfQ.gbbz1-pkU7SKo9p_kxq59ZThlXBLZWFhE45tq-eLeyQ';

  final http = HttpLogger(client.Client());

  Future<void> getNearbyServiceData() async {
    emit(state.copyWith(
        homeNearbyServiceStatus: HomeNearbyServiceStatus.loading));
    // try {
    final response = await http.get(Uri.parse(nearbyServiceURL),
        headers: {'Authorization': 'Bearer $token'});
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final List<NearbyService> nearbyServices = [];
      for (var item in responseBody['data']) {
        nearbyServices.add(NearbyService.fromJson(data: item));
      }
      emit(state.copyWith(
          homeNearbyServiceStatus: HomeNearbyServiceStatus.success,
          nearByItems: nearbyServices));
    } else {
      emit(state.copyWith(
          homeNearbyServiceStatus: HomeNearbyServiceStatus.failure,
          nearByFailureMessage: responseBody['message']));
    }
  }

  Future<void> getPopularServiceData() async {
    emit(state.copyWith(homePopularStatus: HomePopularStatus.loading));
    // try {
    final response = await http.get(Uri.parse(popularServiceURL),
        headers: {'Authorization': 'Bearer $token'});
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final List<PopularService> popularServices = [];
      for (var item in responseBody['data']) {
        popularServices.add(PopularService.fromJson(data: item));
      }
      emit(state.copyWith(
          homePopularStatus: HomePopularStatus.success,
          popularItems: popularServices));
    } else {
      emit(state.copyWith(
          homePopularStatus: HomePopularStatus.failure,
          popularFailureMessage: responseBody['message']));
    }
  }

  Future<void> getTopServiceData() async {
    emit(state.copyWith(homeTopServicesStatus: HomeTopServicesStatus.loading));
    // try {
    final response = await http.get(Uri.parse(topServiceURL),
        headers: {'Authorization': 'Bearer $token'});
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final List<TopService> topServices = [];
      for (var item in responseBody['data']) {
        topServices.add(TopService.fromJson(data: item));
      }
      emit(state.copyWith(
          homeTopServicesStatus: HomeTopServicesStatus.success,
          topItems: topServices));
    } else {
      emit(state.copyWith(
          homeTopServicesStatus: HomeTopServicesStatus.failure,
          topServiceFailureMessage: responseBody['message']));
    }
  }
}
