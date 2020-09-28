import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class RecentDao {
  Future<List<String>> getRecentList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('recentList')) {
      return prefs.getStringList('recentList');
    } else {
      return [];
    }
  }

  Future saveRecentList(List<String> recentList) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('recentList', recentList);
  }
}
