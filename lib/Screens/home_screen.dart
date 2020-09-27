import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_view.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Screens/Parts/title_bar.dart';
import 'package:tenka_2_0_0/Screens/Parts/search_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context, listen: true);
    dataModel.fetchAll(); //毎回fetch allはヤバくない？
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15, bottom: 0),
        child: CustomScrollView(
          slivers: [
            TitleBar(title: 'Tenka'),
            SearchBar(),
            DataListView(list: dataModel.allDataList),
          ],
        ),
      ),
    );
  }
}
