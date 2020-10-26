import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('このアプリについて',
                  style: Theme.of(context).primaryTextTheme.headline5),
              SizedBox(height: 20),
              Text(
                  '　添加物の安全性評価は実験動物を用いた毒性試験で行われており，人間での試験は行われていないため，安全性に不安が残ります．'),
              SizedBox(height: 5),
              Text(
                  '　また，私たちは一食の中だけでもたくさんの種類の添加物を一度に摂取していますが，複数の添加物摂取による安全性の試験や添加物過熱による物質変化については考慮されていないため，真の安全性は不明です．'),
              SizedBox(height: 5),
              Text('　身体への悪影響を減らすには，危険な添加物はなるべく摂取しないことが望まれます．'),
              SizedBox(height: 5),
              Text('　本アプリは，原材料名を見て，危険かどうか判断に迷ったときにすぐに調べることのできるアプリです．'),
            ],
          ),
        ),
      ),
    );
  }
}
