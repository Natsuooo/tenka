import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:provider/provider.dart';

class StarScreen extends StatelessWidget {
  StarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<Data>(context, listen: true);
    return Scaffold(
      body: Center(
        child: Text('Star'),
      ),
    );
  }
}
