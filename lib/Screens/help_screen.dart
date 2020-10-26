import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ヘルプ'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '表記について',
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
            Text('色は３種類．'),
            _subtitle('表記について'),
            SizedBox(height: 10),
            Text('これはヘルプです．' * 4),
          ],
        ),
      ),
    );
  }

  Widget _subtitle(title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}
