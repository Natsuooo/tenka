import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = Map();
    args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(child: Center(child: Text(args['name']))),
    );
  }
}
