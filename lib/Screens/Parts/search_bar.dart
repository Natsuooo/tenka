import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';

class SearchBar extends StatelessWidget {
  // final _formKey = GlobalKey<FormState>();
  SearchBar({Key key}) : super(key: key);
  // TextEditingController editingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final searchModel = Provider.of<SearchModel>(context, listen: true);
    final dataModel = Provider.of<DataModel>(context, listen: true);
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeaderDelegate(
        child: Container(
          color: Colors.grey[50],
          padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
          child: Material(
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              onChanged: (value) {
                searchModel.changeQuery(value);
                // dataModel.getSearchList(value);
              },
              autofocus: false,
              cursorColor: Colors.grey[500],
              // controller: editingController,
              decoration: InputDecoration(
                hintText: "添加物名で検索",
                prefixIcon: Icon(Icons.search, color: Colors.grey[700]),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  TextEditingController editingController = TextEditingController();

  SliverHeaderDelegate({this.child});
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        child: child,
      );
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => 70.0;

  @override
  double get minExtent => 70.0;
}
