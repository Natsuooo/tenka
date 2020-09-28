import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Repository/recent_repository.dart';

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

  void saveStarList(List<String> recentList) async {
    await repo.saveRecentList(recentList);
  }
}
