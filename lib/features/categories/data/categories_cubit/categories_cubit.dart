import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:eunoia/core/constants/cash_storage.dart';
import 'package:eunoia/features/categories/data/cubit.dart/states.dart';
import 'package:eunoia/features/categories/data/models/category_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesStates> {
  CategoriesCubit() : super(InitialState());

  factory CategoriesCubit.getInstance(context) => BlocProvider.of(context);

  static const String DJsURL =
      'http://3.129.5.59/api/v1/services?businessCategory=DJs';
  static const String foodURL =
      'http://3.129.5.59/api/v1/services?businessCategory=Food';
  static const String VenuesURL =
      'https://eunoia-api-v1-0.onrender.com/api/v1/services?businessCategory=Venues';
  String? token = CacheData.getData('token');

  // Future<void> getDJcategory() async {
  //   emit(state.copyWith(dJsStatus: DJsStatus.loading));
  //   // try {
  //   final response = await http
  //       .get(Uri.parse(DJsURL), headers: {'Authorization': 'Bearer $token'});
  //   final responseBody = jsonDecode(response.body);

  //   if (response.statusCode == 200) {
  //     final List<Category> DJs = [];
  //     for (var item in responseBody['data']) {
  //       DJs.add(Category.fromJson(data: item));
  //     }
  //     emit(state.copyWith(dJsStatus: DJsStatus.success, DjItems: DJs));
  //   } else {
  //     emit(state.copyWith(
  //         dJsStatus: DJsStatus.failure,
  //         DJfailureMessage: responseBody['message']));
  //   }
  // }

  // Future<void> getFoodCategory() async {
  //   emit(state.copyWith(foodStatus: FoodStatus.loading));
  //   // try {
  //   final response = await http
  //       .get(Uri.parse(DJsURL), headers: {'Authorization': 'Bearer $token'});
  //   final responseBody = jsonDecode(response.body);

  //   if (response.statusCode == 200) {
  //     final List<Category> foods = [];
  //     for (var item in responseBody['data']) {
  //       foods.add(Category.fromJson(data: item));
  //     }
  //     emit(state.copyWith(foodStatus: FoodStatus.success, foodItems: foods));
  //   } else {
  //     emit(state.copyWith(
  //         foodStatus: FoodStatus.failure,
  //         foodFailureMessage: responseBody['message']));
  //   }
  // }

      final List<Category> venues = [];

  Future<void> getVenuesCategory() async {
    emit(LoadingState());
    // try {
    final response = await http
        .get(Uri.parse(VenuesURL), headers: {'Authorization': 'Bearer $token'});
    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (var item in responseBody['data']) {
        venues.add(Category.fromJson(data: item));
      }
      emit(SuccessState());
    } else {
      emit(ErrorState());
      // emit(state.copyWith(
      //     foodStatus: FoodStatus.failure,
      //     foodFailureMessage: responseBody['message']));
    }
  }
}
