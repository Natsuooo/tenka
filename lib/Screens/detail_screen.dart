import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = Map();
    args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: _Bar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Title(args['name'], args['danger']),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _Bar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(
        CupertinoIcons.back,
        color: Colors.black,
      ),
      // onPressed: () => Navigator.of(context).pop(),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.star),
        onPressed: () {},
      ),
    ],
  );
}

Widget _Title(name, danger) {
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
