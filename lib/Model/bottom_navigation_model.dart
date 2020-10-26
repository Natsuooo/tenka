import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Screens/home_screen.dart';
import 'package:tenka_2_0_0/Screens/star_screen.dart';

class BottomNavigationModel with ChangeNotifier {
  final List<Widget> options = [
    HomeScreen(),
    StarScreen(),
  ];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void change(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Widget getSelectedScreen() {
    return options[selectedIndex];
  }
}
