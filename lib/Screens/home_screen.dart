import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_view.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Screens/Parts/title_bar.dart';
import 'package:tenka_2_0_0/Screens/Parts/search_bar.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';
import 'package:tenka_2_0_0/Model/recent_model.dart';
import 'package:tenka_2_0_0/Screens/Parts/recent_list_view.dart';
import 'package:tenka_2_0_0/Entity/data.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context, listen: true);
    final searchModel = Provider.of<SearchModel>(context, listen: true);
    final recentModel = Provider.of<RecentModel>(context, listen: true);
    String query = searchModel.query;
    List<String> recentList = recentModel.recentList;
    // List<Data> allDataList = dataModel.allDataList;
    if (dataModel.isInitial) {
      dataModel.firstAccess();
    }
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            TitleBar(title: 'Tenka'),
            SearchBar(),
            // query == '' ? _subTitle('最近の検索') : SliverToBoxAdapter(),
            // RecentListView(list: recentModel.getRecentList(allDataList)),
            // query == ''
            //     ? RecentListView(list: dataModel.getRecentList(recentList))
            //     : SliverToBoxAdapter(),
            // query == '' ? _subTitle('全ての添加物') : SliverToBoxAdapter(),
            DataListView(list: dataModel.getSearchList(query)),
          ],
        ),
      ),
    );
  }

  Widget _subTitle(String subtitle) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(left: 10, bottom: 5, top: 15),
        child: Text(
          subtitle,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
