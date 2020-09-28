import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Repository/data_repository.dart';

class DataModel with ChangeNotifier {
  List<Data> _allDataList = [];
  List<Data> get allDataList => _allDataList;
  bool _isInitial = true;
  bool get isInitial => _isInitial;

  final DataRepository repo = DataRepository();

  void firstAccess() {
    _isInitial = false;
    fetchAll();
  }

  void fetchAll() async {
    _allDataList = await repo.getAllData();
    notifyListeners();
  }

  List<Data> _searchList = [];
  List<Data> get searchList => _searchList;

  getSearchList(query) {
    if (query == '') {
      _searchList = _allDataList;
    } else {
      _searchList = _allDataList
          .where((data) =>
              data.name.contains(query) |
              data.katakana.contains(query) |
              data.hiragana.contains(query) |
              data.alphabet.contains(query))
          .toList();
    }
    return _searchList;
    // notifyListeners();
  }
}
