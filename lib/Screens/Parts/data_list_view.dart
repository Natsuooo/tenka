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
    // if (list.isEmpty) {
    //   print('empty');
    //   return Center(
    //     child: Text('NO ITEM'),
    //   );
    // }

    // return ListView.builder(
    //   itemBuilder: (BuildContext context, int index) {
    //     var data = list[index];
    //     return DataListTile(data: data);
    //   },
    //   itemCount: list.length,
    // );

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
