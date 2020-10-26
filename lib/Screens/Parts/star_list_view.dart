import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/star_model.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';

class StarListView extends StatelessWidget {
  final List<Data> list;
  const StarListView({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final starModel = Provider.of<StarModel>(context, listen: true);
    // final dataModel = Provider.of<DataModel>(context, listen: true);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var data = list[index];
          return DataListTile(data: data);
        },
        childCount: list == null ? 0 : list.length,
      ),
    );
  }
}
