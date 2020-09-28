import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_view.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Screens/Parts/title_bar.dart';
import 'package:tenka_2_0_0/Screens/Parts/search_bar.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context, listen: true);
    // final searchModel = Provider.of<SearchModel>(context, listen: true);
    // dataModel.fetchAll(); //毎回fetch allはヤバくない？
    final searchModel = Provider.of<SearchModel>(context, listen: true);
    String query = searchModel.query;
    if (dataModel.isInitial) {
      dataModel.firstAccess();
    }
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            TitleBar(title: 'Tenka'),
            SearchBar(),
            DataListView(list: dataModel.getSearchList(query)),
          ],
        ),
      ),
    );
  }
}
