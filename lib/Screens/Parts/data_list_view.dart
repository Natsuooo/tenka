import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_tile.dart';

class DataListView extends StatelessWidget {
  final List<Data> list;
  const DataListView({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
