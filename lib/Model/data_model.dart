import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Repository/data_repository.dart';

class DataModel with ChangeNotifier {
  List<Data> _allDataList = [];
  List<Data> get allDataList => _allDataList;

  final DataRepository repo = DataRepository();
}
