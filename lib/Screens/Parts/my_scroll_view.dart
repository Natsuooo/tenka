import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_view.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Screens/Parts/title_bar.dart';
import 'package:tenka_2_0_0/Screens/Parts/my_header.dart';

class MyScrollView extends StatelessWidget {
  MyScrollView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<DataModel>(context, listen: true);
    return CustomScrollView(
      slivers: [
        TitleBar(title: 'Tenka'),
        MyHeader(),
        DataListView(list: model.allDataList),
      ],
    );
  }
}
