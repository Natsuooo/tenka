import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Repository/data_repository.dart';

class DataModel with ChangeNotifier {
  List<Data> _allDataList = [];
  List<Data> get allDataList => _allDataList;
  bool _isInitial = true;
  bool get isInitial => _isInitial;
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  final DataRepository repo = DataRepository();

  void firstAccess() {
    _isInitial = false;
    fetchAll();
  }

  void fetchAll() async {
    _allDataList = await repo.getAllData();
    _isLoading = false;
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
              data.katakana1.contains(query) |
              data.katakana2.contains(query) |
              data.hiragana.contains(query) |
              data.alphabet1.contains(query) |
              data.alphabet2.contains(query) |
              data.enumber.toLowerCase().contains(query) |
              data.enumber.contains(query))
          .toList();
    }
    return _searchList;
    // notifyListeners();
  }

  List<Data> _starList = [];

  getStarList(List starList) {
    _starList = _allDataList
        .where((data) => starList.contains(data.id.toString()))
        .toList();
    return _starList;
  }

  List<Data> _recentList = [];
  getRecentList(List recentList) {
    _recentList = _allDataList
        .where((data) => recentList.contains(data.id.toString()))
        .toList();
    return _recentList;
  }
}
