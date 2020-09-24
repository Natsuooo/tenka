import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';

class DataListTile extends StatelessWidget {
  final Data data;

  const DataListTile({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(data.name),
      ),
    );
  }
}
