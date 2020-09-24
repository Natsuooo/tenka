import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Screens/Parts/data_list_view.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<DataModel>(context, listen: true);
    return Scaffold(
      body: DataListView(
        list: model.allDataList,
      ),
    );
  }
}
