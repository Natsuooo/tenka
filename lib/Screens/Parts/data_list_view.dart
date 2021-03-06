import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_tile.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tenka_2_0_0/my_flutter_app_icons.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';

class DataListView extends StatelessWidget {
  final List<Data> list;
  const DataListView({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<SearchModel>(context, listen: true);
    final dataModel = Provider.of<DataModel>(context, listen: true);
    String query = searchModel.query;
    if (dataModel.isLoading) {
      return SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[500]),
            ),
          ),
        ),
      );
    }
    if (list.isNotEmpty) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            var data = list[index];
            return DataListTile(data: data);
          },
          childCount: list == null ? 0 : list.length,
        ),
      );
    } else {
      return _noResult(query);
    }
  }

  Widget _noResult(query) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Icon(
              MyFlutterApp.not_found,
              size: 60,
              color: Colors.grey[500],
            ),
            SizedBox(height: 30),
            Text(
              '"$query" は見つかりませんでした．',
            ),
            SizedBox(height: 5),
            Container(
              width: 150,
              height: 50,
              alignment: Alignment.center,
              child: Container(
                child: InkWell(
                  onTap: () async {
                    var url = "https://google.com/search?q=$query";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  child: Row(
                    children: [
                      // SizedBox(width: 30),
                      Text('Googleで検索する'),
                      Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
