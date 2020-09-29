import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tenka_2_0_0/Model/memo_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';

class MemoScreen extends StatelessWidget {
  MemoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final memoModel = Provider.of<MemoModel>(context, listen: true);
    var args = Map();
    args = ModalRoute.of(context).settings.arguments;
    String _current = '';
    _current = args['text'];

    void _save() {
      if (args['memo_id'] == -1) {
        memoModel.add(Memo(id: args['id'], text: _current));
      } else {
        memoModel.update(Memo(id: args['id'], text: _current));
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Myメモ'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
            _save();
            Navigator.of(context).pop();
          },
        ),
        actions: [
          FlatButton(
            onPressed: () {
              _save();
              Navigator.of(context).pop();
            },
            child: Icon(Icons.check),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          controller: TextEditingController(text: _current),
          maxLines: 99,
          onChanged: (text) {
            _current = text;
          },
        ),
      ),
    );
  }
}
