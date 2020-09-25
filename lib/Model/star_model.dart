import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Repository/star_repository.dart';

class StarModel with ChangeNotifier {
  List<String> _starList = [];
  List<String> get starList => _starList;

  final StarRepository repo = StarRepository();

  StarModel() {
    _fetchAll();
  }

  void _fetchAll() async {
    _starList = await repo.getStarList();
    notifyListeners();
  }

  // void add(String star) async {
  //   await repo.insertStarList(star);
  //   _fetchAll();
  // }
}
