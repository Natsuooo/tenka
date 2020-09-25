import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  MyHeader({Key key}) : super(key: key);
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeaderDelegate(
        child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
          child: Material(
            elevation: 10.0,
            shadowColor: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              onChanged: (value) {
                // setState(() {});
              },
              controller: editingController,
              decoration: InputDecoration(
                hintText: "添加物を検索",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
  double get maxExtent => 75.0;

  @override
  double get minExtent => 75.0;
}
