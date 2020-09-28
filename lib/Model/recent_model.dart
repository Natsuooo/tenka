import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Repository/recent_repository.dart';
import 'package:tenka_2_0_0/Entity/data.dart';

class RecentModel with ChangeNotifier {
  List<String> _recentList = [];
  List<String> get recentList => _recentList;

  final RecentRepository repo = RecentRepository();

  RecentModel() {
    _fetchAll();
  }

  void _fetchAll() async {
    _recentList = await repo.getRecentList();
    notifyListeners();
  }

  void saveRecentList(String id) async {
    if (_recentList.contains(id)) {
      _recentList.remove(id);
    }
    _recentList.add(id);
    if (_recentList.length > 5) {
      _recentList.removeAt(0);
    }
    repo.saveRecentList(_recentList);
    notifyListeners();
  }

  // List<Data> _recentDataList = [];

  // getRecentList(List<Data> allDataList) {
  //   _recentDataList = allDataList
  //       .where((data) => _recentList.contains(data.id.toString()))
  //       .toList();
  //   print(_recentDataList);
  //   return _recentDataList;
  // }
}
