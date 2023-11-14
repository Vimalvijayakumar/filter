import 'dart:convert';

import 'package:filter/data/models/filterModel.dart';
import 'package:flutter/services.dart';

class Repository {
  Future readJson() async {
    final String response = await rootBundle.loadString('assets/filter.json');
    final resData = await json.decode(response);
    return resData;
    // print(response);
  }
}
