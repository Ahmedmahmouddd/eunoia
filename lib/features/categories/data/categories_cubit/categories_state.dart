// ignore_for_file: non_constant_identifier_names

part of 'categories_cubit.dart';

enum DJsStatus { loading, success, failure }

enum FoodStatus { loading, success, failure }

enum VenuesStatus { loading, success, failure }

final class CategoriesState extends Equatable {
  final DJsStatus dJsStatus;
  final FoodStatus foodStatus;
  final VenuesStatus venuesStatus;
  final List<Category> foodItems;
  final List<Category> venuesItems;
  final List<Category> DjItems;
  final String? DJfailureMessage;
  final String? foodFailureMessage;
  final String? venuesFailureMessage;

  CategoriesState(
      {required this.dJsStatus,
      required this.foodStatus,
      required this.venuesStatus,
      required this.foodItems,
      required this.venuesItems,
      required this.DjItems,
      this.DJfailureMessage,
      this.foodFailureMessage,
      this.venuesFailureMessage});

  factory CategoriesState.initial() => CategoriesState(
        dJsStatus: DJsStatus.loading,
        foodStatus: FoodStatus.loading,
        venuesStatus: VenuesStatus.loading,
        foodItems: const [],
        venuesItems: const [],
        DjItems: const [],
      );

  CategoriesState copyWith({
    DJsStatus? dJsStatus,
    FoodStatus? foodStatus,
    VenuesStatus? venuesStatus,
    List<Category>? foodItems,
    List<Category>? venuesItems,
    List<Category>? DjItems,
    String? DJfailureMessage,
    String? foodFailureMessage,
    String? venuesFailureMessage,
  }) {
    return CategoriesState(
      dJsStatus: dJsStatus ?? this.dJsStatus,
      foodStatus: foodStatus ?? this.foodStatus,
      venuesStatus: venuesStatus ?? this.venuesStatus,
      foodItems: foodItems ?? this.foodItems,
      venuesItems: venuesItems ?? this.venuesItems,
      DjItems: DjItems ?? this.DjItems,
      DJfailureMessage: DJfailureMessage ?? this.DJfailureMessage,
      foodFailureMessage: foodFailureMessage ?? this.foodFailureMessage,
      venuesFailureMessage: venuesFailureMessage ?? this.venuesFailureMessage,
    );
  }

  @override
  List<Object?> get props => [
        dJsStatus,
        foodStatus,
        venuesStatus,
        venuesItems,
        foodItems,
        DjItems,
        DJfailureMessage,
        foodFailureMessage,
        venuesFailureMessage,
      ];




}
