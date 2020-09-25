import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      elevation: 0.0,
      backgroundColor: Colors.grey[100],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          this.title,
          style: TextStyle(
            fontFamily: 'DancingScript',
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w100,
            // fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
