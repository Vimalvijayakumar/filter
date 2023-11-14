import 'package:filter/data/models/filterModel.dart';
import 'package:filter/ui/commonWidgets/alert.dart';
import 'package:filter/ui/commonWidgets/checkBoxTile_widget.dart';
import 'package:filter/ui/screens/filter/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool Chkvalue = false;

  List seletedSortArray = [];
  List selectedCuisineArray = [];
  List selectedDietArray = [];
  List selectedExpArray = [];
  List selectedMealPrdArray = [];
  List selectedDressCodeArray = [];
  List selectedNeighbrArray = [];
  List selectedPriceRangeArray = [];
  List totalFilterArray = [];

  select(String titleSlug, FilterModel option) {
    if (titleSlug == "sort") {
      if (seletedSortArray.contains(option)) {
        seletedSortArray.removeWhere((item) => item.slug == option.slug);

        setState(() {});
      } else {
        setState(() {
          seletedSortArray.add(option);
        });
      }
    } else if (titleSlug == "cuisines") {
      if (selectedCuisineArray.contains(option)) {
        selectedCuisineArray.removeWhere((item) => item.id == option.id);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];
        setState(() {});
      } else {
        setState(() {
          selectedCuisineArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    } else if (titleSlug == "suitable_diets") {
      if (selectedDietArray.contains(option)) {
        selectedDietArray.removeWhere((item) => item.id == option.id);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];

        setState(() {});
      } else {
        setState(() {
          selectedDietArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    } else if (titleSlug == "experiences") {
      if (selectedExpArray.contains(option)) {
        selectedExpArray.removeWhere((item) => item.id == option.id);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];
        setState(() {});
      } else {
        setState(() {
          selectedExpArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    } else if (titleSlug == "meal_period") {
      if (selectedMealPrdArray.contains(option)) {
        selectedMealPrdArray.removeWhere((item) => item.id == option.id);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];
        setState(() {});
      } else {
        setState(() {
          selectedMealPrdArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    } else if (titleSlug == "dress_code") {
      if (selectedDressCodeArray.contains(option)) {
        selectedDressCodeArray.removeWhere((item) => item.id == option.id);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];
        setState(() {});
      } else {
        setState(() {
          selectedDressCodeArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    } else if (titleSlug == "neighbourhoods") {
      if (selectedNeighbrArray.contains(option)) {
        selectedNeighbrArray.removeWhere((item) => item.id == option.id);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];
        setState(() {});
      } else {
        setState(() {
          selectedNeighbrArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    } else if (titleSlug == "price_range") {
      if (selectedPriceRangeArray.contains(option)) {
        selectedPriceRangeArray.removeWhere((item) => item.slug == option.slug);
        totalFilterArray = [
          ...selectedCuisineArray,
          ...selectedDietArray,
          ...selectedExpArray,
          ...selectedMealPrdArray,
          ...selectedDressCodeArray,
          ...selectedNeighbrArray,
          ...selectedPriceRangeArray
        ];
        setState(() {});
      } else {
        setState(() {
          selectedPriceRangeArray.add(option);
          totalFilterArray = [
            ...selectedCuisineArray,
            ...selectedDietArray,
            ...selectedExpArray,
            ...selectedMealPrdArray,
            ...selectedDressCodeArray,
            ...selectedNeighbrArray,
            ...selectedPriceRangeArray
          ];
        });
      }
    }

    print(totalFilterArray);
  }

  chipClick(FilterModel chipdata) {
    if (totalFilterArray.contains(chipdata)) {
      totalFilterArray.removeWhere((item) => item == chipdata);

      if (selectedCuisineArray.contains(chipdata)) {
        selectedCuisineArray.removeWhere((item) => item.id == chipdata.id);
      } else if (selectedDietArray.contains(chipdata)) {
        selectedDietArray.removeWhere((item) => item.id == chipdata.id);
      } else if (selectedExpArray.contains(chipdata)) {
        selectedExpArray.removeWhere((item) => item.id == chipdata.id);
      } else if (selectedMealPrdArray.contains(chipdata)) {
        selectedMealPrdArray.removeWhere((item) => item.id == chipdata.id);
      } else if (selectedDressCodeArray.contains(chipdata)) {
        selectedDressCodeArray.removeWhere((item) => item.id == chipdata.id);
      } else if (selectedNeighbrArray.contains(chipdata)) {
        selectedNeighbrArray.removeWhere((item) => item.id == chipdata.id);
      } else if (selectedPriceRangeArray.contains(chipdata)) {
        selectedPriceRangeArray.removeWhere((item) => item.id == chipdata.id);
      }
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FilterCubit>(context).readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        title: const Text(
          "Filter Options",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          if (state is DataFailure) {
            showToast(state.error);
          }
          if (state is DataSuccess) {
            var sortdata = state.sortByData;
            seletedSortArray.add(sortdata[0]);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is DataSuccess) {
            var sortByData = state.sortByData;
            var cuisinesData = state.cuisinesData;
            var dietData = state.suitableDietData;
            var experiencesData = state.experienceData;
            var mealPeriodData = state.mealPeriodData;
            var dressCodesData = state.dressCodesData;
            var neighbourhoodData = state.neighbourhoodsData;
            var priceRagesData = state.priceRangeData;

            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Wrap(
                        spacing: 5,
                        runSpacing: 0,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        children: totalFilterArray.map((e) {
                          return ActionChip(
                            labelPadding: const EdgeInsets.only(right: 5),
                            elevation: 0.0,
                            padding: const EdgeInsets.all(1.0),
                            avatar: const Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 15,
                            ),
                            label: Text(
                              '${e.name}',
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
                            ),
                            shape: const RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            onPressed: () {
                              chipClick(e);
                            },
                            backgroundColor: Colors.grey[200],
                          );
                        }).toList()),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sort by",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Column(
                              children: sortByData.map((e) {
                            return GestureDetector(
                              onTap: () {
                                select("sort", e);
                              },
                              child: ChK_BoxWidget(
                                  chkvalue: seletedSortArray.contains(e),
                                  name: e.name),
                            );
                          }).toList()),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Cuisines",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedCuisineArray.length == 0
                                      ? ""
                                      : "(${selectedCuisineArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: cuisinesData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("cuisines", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue: selectedCuisineArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Suitable Diets",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedDietArray.length == 0
                                      ? ""
                                      : "(${selectedDietArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: dietData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("suitable_diets", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue: selectedDietArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Experiences",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedExpArray.length == 0
                                      ? ""
                                      : "(${selectedExpArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: experiencesData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("experiences", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue: selectedExpArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Meal Periods",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedMealPrdArray.length == 0
                                      ? ""
                                      : "(${selectedMealPrdArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: mealPeriodData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("meal_period", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue: selectedMealPrdArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Dress Codes",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedDressCodeArray.length == 0
                                      ? ""
                                      : "(${selectedDressCodeArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: dressCodesData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("dress_code", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue:
                                        selectedDressCodeArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Neighbourhoods",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedNeighbrArray.length == 0
                                      ? ""
                                      : "(${selectedNeighbrArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: neighbourhoodData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("neighbourhoods", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue: selectedNeighbrArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            childrenPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            title: Row(
                              children: [
                                const Text(
                                  "Price ranges",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  selectedPriceRangeArray.length == 0
                                      ? ""
                                      : "(${selectedPriceRangeArray.length})",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            children: priceRagesData.map((e) {
                              return GestureDetector(
                                onTap: () {
                                  select("price_range", e);
                                },
                                child: ChK_BoxWidget(
                                    chkvalue:
                                        selectedPriceRangeArray.contains(e),
                                    name: e.name),
                              );
                            }).toList()),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
