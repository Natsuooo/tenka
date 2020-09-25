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
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (details) => FocusScope.of(context).unfocus(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                shape: Border(
                  left: BorderSide(
                    color: Colors.green,
                    width: 5,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                shadowColor: Colors.black.withOpacity(0.3),
                child: InkWell(
                  onTap: () async {},
                  child: Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.only(),
                      title: Padding(
                        padding: EdgeInsets.only(),
                        child: Text(
                          data.name,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(),
                        child: Text(data.content),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
