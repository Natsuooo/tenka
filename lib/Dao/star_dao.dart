import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class StarDao {
  Future<List<String>> getStarList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('starList')) {
      return prefs.getStringList('starList');
    } else {
      return [];
    }
  }

  Future saveStarList(List<String> starList) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // if (prefs.containsKey('starList')) {
    prefs.setStringList('starList', starList);
    // }
  }
}
