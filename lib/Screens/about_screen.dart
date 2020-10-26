import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('このアプリについて'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tenkaは，食品を購入する際に，添加物がいけないという認識から作ったアプリです．'),
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
