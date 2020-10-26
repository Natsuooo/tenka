import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_view.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Screens/Parts/title_bar.dart';
import 'package:tenka_2_0_0/Screens/Parts/star_list_view.dart';
import 'package:tenka_2_0_0/Model/star_model.dart';

class StarScreen extends StatelessWidget {
  StarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<DataModel>(context, listen: true);
    final starModel = Provider.of<StarModel>(context, listen: true);
    List<String> starList = starModel.starList;
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            TitleBar(title: 'Star'),
            StarListView(list: dataModel.getStarList(starList)),
          ],
        ),
      ),
    );
  }
}
