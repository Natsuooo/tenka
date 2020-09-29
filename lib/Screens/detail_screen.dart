import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/star_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tenka_2_0_0/my_flutter_app_icons.dart';
import 'package:tenka_2_0_0/Model/memo_model.dart';
import 'package:tenka_2_0_0/Model/memo_model.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = Map();
    args = ModalRoute.of(context).settings.arguments;

    final memoModel = Provider.of<MemoModel>(context, listen: true);
    List<Memo> allMemoList = memoModel.allMemoList;
    List<Memo> memoList =
        allMemoList.where((item) => item.id == args['id']).toList();
    // List<Memo> memoList = await memoModel.getMemo(args['id']);
    // memoModel.getMemo(args['id']);
    // List<Memo> memoList = memoModel.memoList;
    // print(memoList);
    // print("${memo[0].text} allmemolist");
    // List<Memo> memo = memoModel.getMemo(args['id']);
    // List<Memo> memoList = memoModel.memoList;
    // memoModel.getMemo(args['id']);
    // print("${memoList[0].text} detailScreen");

    // print(memom[0]['text']);
    // print(memoList);

    return Scaffold(
      appBar: _bar(context, args['id'].toString()),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _title(args['name'], args['danger']),
              _table(args),
              _more(args['name']),
              _memoTitle(args['id'], memoList, context),
              _memoCard(memoList.isNotEmpty ? memoList[0].text : 'まだメモはありません．'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bar(context, id) {
    final starModel = Provider.of<StarModel>(context, listen: false);
    List<String> starList = starModel.starList;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: <Widget>[
        Consumer<StarModel>(
          builder: (context, starList, _) => IconButton(
            icon: starModel.isStar(id)
                ? Icon(Icons.star, color: Colors.yellow[700])
                : Icon(Icons.star_border, color: Colors.black38),
            onPressed: () {
              starModel.toggleStar(id);
            },
          ),
        ),
      ],
    );
  }

  Widget _title(name, danger) {
    _borderColor() {
      switch (danger) {
        case 1:
          return Colors.green[600];
          break;
        case 2:
          return Colors.yellow[700];
          break;
        case 3:
          return Colors.red[600];
          break;

        default:
          return Colors.green[600];
      }
    }

    return Container(
      alignment: Alignment.center,
      // padding: EdgeInsets.only(top: 60, bottom: 60, left: 30),
      // margin: EdgeInsets.only(top: 30, bottom: 60, left: 40),
      margin: EdgeInsets.only(top: 40, bottom: 40, left: 10, right: 10),
      // padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            // left: BorderSide(
            bottom: BorderSide(color: _borderColor(), width: 2),
          ),
        ),
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w100, //細く
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  Widget _table(args) {
    _starColor() {
      switch (args['danger']) {
        case 1:
          return [
            Icon(Icons.star, color: Colors.green[600]),
            Icon(Icons.star_border, color: Colors.green[600]),
            Icon(Icons.star_border, color: Colors.green[600]),
          ];
          break;
        case 2:
          return [
            Icon(Icons.star, color: Colors.yellow[700]),
            Icon(Icons.star, color: Colors.yellow[700]),
            Icon(Icons.star_border, color: Colors.yellow[700]),
          ];
          break;
        case 3:
          return [
            Icon(Icons.star, color: Colors.red[600]),
            Icon(Icons.star, color: Colors.red[600]),
            Icon(Icons.star, color: Colors.red[600]),
          ];
          break;
        default:
          return [
            Icon(Icons.star, color: Colors.green[600]),
            Icon(Icons.star_border, color: Colors.green[600]),
            Icon(Icons.star_border, color: Colors.green[600]),
          ];
      }
    }

    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black.withOpacity(0.3),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('危険度'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: _starColor(),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('カテゴリ'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(args['category']),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('E番号'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(args['enumber']),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('食品'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(args['food']),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 2,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('健康被害'),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(args['content'] * 5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _more(name) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 20),
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: 100,
        height: 50,
        child: InkWell(
          onTap: () async {
            var url = "https://google.com/search?q=添加物+${name}";
            if (await canLaunch(url)) {
              await launch(url);
            }
          },
          child: Row(
            children: [
              SizedBox(width: 5),
              Text('もっと見る'),
              Icon(
                CupertinoIcons.forward,
                color: Colors.grey[700],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _memoTitle(id, memoList, context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 15, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Myメモ'),
          FlatButton.icon(
            icon: Icon(
              MyFlutterApp.edit,
              size: 20,
              color: Colors.black,
            ),
            label: Text("編集"),
            onPressed: () {
              Navigator.of(context).pushNamed('/memo',
                  arguments: memoList.isNotEmpty
                      ? {
                          'id': id,
                          'memo_id': memoList[0].id,
                          'text': memoList[0].text
                        }
                      : {'id': id, 'memo_id': -1, 'text': ''});
            },
            // borderSide: BorderSide(width: 1.0, color: Colors.grey[700]),
            // shape:
            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }

  Widget _memoCard(String memo) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      child: Row(
        children: [
          Expanded(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(memo),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
