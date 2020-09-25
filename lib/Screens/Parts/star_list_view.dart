import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_tile.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';
import 'package:provider/provider.dart';

class StarListView extends StatelessWidget {
  final List<Data> list;
  const StarListView({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<SearchModel>(context, listen: true);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var data = list[index];
          List<int> starList = [0, 1, 2];
          if (starList.contains(data.id)) {
            return DataListTile(data: data);
          } else {
            return Container();
          }
        },
        childCount: list == null ? 0 : list.length,
      ),
    );
  }
}
