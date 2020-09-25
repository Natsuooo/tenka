import 'package:flutter/material.dart';

import 'package:tenka_2_0_0/Screens/Parts/my_scroll_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MyScrollView(),
      ),
    );
  }
}
