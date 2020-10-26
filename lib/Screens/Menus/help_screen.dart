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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '機能について',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              SizedBox(height: 10),
              Text('□カンタン検索'),
              SizedBox(height: 5),
              Text('　一文字打つだけで簡単・高速に添加物を調べることができます．'),
              SizedBox(height: 15),
              Text('□Google検索'),
              SizedBox(height: 5),
              Text('　検索したい添加物が本アプリに掲載されていなかった場合，そのままGoogleで検索することができます．'),
              SizedBox(height: 15),
              Text('□もっと見る'),
              SizedBox(height: 5),
              Text(
                  '　本アプリではできるだけわかりやすい表記を心掛けているため，情報が不十分な場合があります．その際は，「もっと見る」からGoogleでより詳しい情報を調べることができます．'),
              SizedBox(height: 15),
              Text('□スター'),
              SizedBox(height: 5),
              Text('　特に注意したい添加物にスターを付けて分かりやすく表示できます．'),
              SizedBox(height: 15),
              Text('□メモ'),
              SizedBox(height: 5),
              Text('　添加物を摂取したときの自分の体の反応など，添加物ごとに覚えておきたい内容をメモすることができます．'),
              SizedBox(height: 40),
              Text(
                '表記について',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              SizedBox(height: 10),
              Text('□危険度'),
              SizedBox(height: 5),
              Text('　添加物の安全度や危険度については，様々な情報を元にアプリ制作者が判断しています．'),
              SizedBox(height: 5),
              Text('　危険度は3段階で評価し，星の数と色で分類してあります．'),
              SizedBox(height: 15),
              Text('□一括表示'),
              SizedBox(height: 5),
              Text('　一括表示の一括名には☆マーク，一括表示可能な添加物には＊マークがついています．'),
              SizedBox(height: 40),
              Text(
                '食品表示ラベルの読み方',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              SizedBox(height: 10),
              Text('□一括表示'),
              SizedBox(height: 5),
              Text(
                  '　一括表示が可能な添加物は，物質（添加物）名の表示義務がなく一括名で表示可能なため，どの添加物が何種類使用されているか不明なものがあります．'),
              SizedBox(height: 5),
              Text('＜一括表示添加物＞'),
              SizedBox(height: 5),
              Text(
                  '１. 調味料（アミノ酸，核酸，有機酸，無機塩）　２. 乳化剤　３. 酸味料　４. PH調整剤５. 膨張剤　６. イーストフード　７. かんすい　８. 豆腐用凝固剤　９. 香料　10. ガムベース　11. チューインガム軟化剤　12. 苦味料　13. 酵素　14. 光沢剤'),
              SizedBox(height: 15),
              Text('□表示免除'),
              SizedBox(height: 5),
              Text('　表示が免除されている添加物があり，使用されているか不明のものがあります．'),
              SizedBox(height: 5),
              Text('＜表示免除添加物＞'),
              SizedBox(height: 5),
              Text('１. 栄養強化剤（ビタミン類，アミノ酸類，ミネラル類）'),
              SizedBox(height: 5),
              Text('２. 加工助剤（殺菌剤，製造用剤）'),
              SizedBox(height: 5),
              Text('３. キャリーオーバー'),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
