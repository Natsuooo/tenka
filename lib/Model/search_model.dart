import 'package:flutter/material.dart';

class SearchModel with ChangeNotifier {
  String _query = '';
  String get query => _query;

  void changeQuery(String value) {
    _query = value;
    notifyListeners();
  }
}
