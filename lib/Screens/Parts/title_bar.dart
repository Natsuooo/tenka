import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      elevation: 0.0,
      // backgroundColor: Colors.grey[100],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(bottom: 6),
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
      actions: [
        Visibility(
          child: PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuItem>[
              PopupMenuItem(
                child: Text('ヘルプ'),
                value: 'help',
              ),
              PopupMenuItem(
                child: Text('このアプリについて'),
                value: 'about',
              ),
              PopupMenuItem(
                child: Text('このアプリを評価する'),
                value: 'review',
              ),
            ],
            // onSelected: popupMenuSelected(context),
            onSelected: (value) {
              switch (value) {
                case 'help':
                  Navigator.of(context).pushNamed('/help');
                  break;
                case 'about':
                  Navigator.of(context).pushNamed('/about');
                  break;
                case 'review':
                  _launchURL();
                  break;
                default:
                  break;
              }
            },
          ),
          // visible: this.title == 'Tenka',
        ),
      ],
    );
  }

  // void popupMenuSelected(context, value) {
  //   switch (value) {
  //     case 'help':
  //       Navigator.of(context).pushNamed('/detail');
  //       break;
  //     default:
  //       break;
  //   }
  // }

  _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=link.mikan.mikanandroid';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
