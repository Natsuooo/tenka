import 'package:flutter/material.dart';

class SearchModel with ChangeNotifier {
  String _query = '';
  String get query => _query;

  int _count = 0;
  int get count => _count;

  void changeQuery(String value) {
    _query = value;
    notifyListeners();
  }
}
