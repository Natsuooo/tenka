import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Repository/star_repository.dart';

class StarModel with ChangeNotifier {
  List<String> _starList = [];
  List<String> get starList => _starList;

  bool _isStar = false;
  bool get isStar => _isStar;

  void changeStar() async {
    _isStar = !_isStar;
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

  void addStarList(List<String> starList) async {
    await repo.addStarList(starList);
    _fetchAll();
  }
}
