import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:filter/data/models/filterModel.dart';
import 'package:filter/data/repositories/repository.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());
  Repository _repository = Repository();
  readJson() async {
    try {
      final response = await _repository.readJson();
      var data = response["data"];
      var cuisinesData;
      var suitableDietData;
      var experienceData;
      var mealPeriodData;
      var dressCodesData;
      var neighbourhoodsData;
      var sortByData;
      var priceRangeData;

      if (data.length == 0) {
        emit(DataFailure("No data found"));
      } else {
        for (int i = 0; i < data.length; i++) {
          if (data[i]["slug"] == "cuisine") {
            cuisinesData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
            print(cuisinesData);
          } else if (data[i]["slug"] == "suitable-diet") {
            suitableDietData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          } else if (data[i]["slug"] == "experience") {
            experienceData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          } else if (data[i]["slug"] == "mealperiod") {
            mealPeriodData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          } else if (data[i]["slug"] == "attire") {
            dressCodesData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          } else if (data[i]["slug"] == "location") {
            neighbourhoodsData = data[i]["taxonomies"][0]["locations"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          } else if (data[i]["slug"] == "sort") {
            sortByData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          } else if (data[i]["slug"] == "pricerange") {
            priceRangeData = data[i]["taxonomies"]
                .map((e) => FilterModel.fromjson(e))
                .toList();
          }
        }
      }
      print("here");

      emit(DataSuccess(
          cuisinesData,
          suitableDietData,
          experienceData,
          mealPeriodData,
          dressCodesData,
          neighbourhoodsData,
          sortByData,
          priceRangeData));
    } catch (e) {
      emit(DataFailure(e.toString()));
    }
  }
}
