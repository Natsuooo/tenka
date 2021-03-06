import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_tile.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';

class RecentListView extends StatelessWidget {
  final List<Data> list;
  const RecentListView({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      return SliverToBoxAdapter(
        child: Container(
          child: Text('最近の検索はありません．'),
        ),
      );
    }
  }
}
