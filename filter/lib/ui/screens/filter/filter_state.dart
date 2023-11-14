part of 'filter_cubit.dart';

@immutable
sealed class FilterState {}

final class FilterInitial extends FilterState {}

final class Loading extends FilterState {}

final class DataSuccess extends FilterState {
  final List cuisinesData;
  final List suitableDietData;
  final List experienceData;
  final List mealPeriodData;
  final List dressCodesData;
  final List neighbourhoodsData;
  final List sortByData;
  final List priceRangeData;

  DataSuccess(
      this.cuisinesData,
      this.suitableDietData,
      this.experienceData,
      this.mealPeriodData,
      this.dressCodesData,
      this.neighbourhoodsData,
      this.sortByData,
      this.priceRangeData);
}

final class DataFailure extends FilterState {
  final String error;

  DataFailure(this.error);
}
