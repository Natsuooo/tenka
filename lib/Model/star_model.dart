import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Repository/star_repository.dart';
import 'package:tenka_2_0_0/Entity/data.dart';

class StarModel with ChangeNotifier {
  List<String> _starList = [];
  List<String> get starList => _starList;

  bool isStar(String id) {
    return _starList.contains(id);
  }

  void toggleStar(String id) async {
    if (_starList.contains(id)) {
      _starList.remove(id);
    } else {
      _starList.add(id);
    }
    saveStarList(_starList);
    notifyListeners();
  }

  final StarRepository repo = StarRepository();

  StarModel() {
    _fetchAll();
  }

  void _fetchAll() async {
    _starList = await repo.getStarList();
    notifyListeners();
  }

  void saveStarList(List<String> starList) async {
    await repo.saveStarList(starList);
    // _fetchAll();
  }
}
