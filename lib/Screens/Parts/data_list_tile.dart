import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/star_model.dart';

class DataListTile extends StatelessWidget {
  final Data data;

  const DataListTile({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final starModel = Provider.of<StarModel>(context, listen: true);

    List<String> starList = starModel.starList;

    String _id = data.id.toString();

    _cardColor() {
      switch (data.danger) {
        case 1:
          return Colors.green[600];
          break;
        case 2:
          return Colors.yellow[700];
          break;
        case 3:
          return Colors.red[600];
          break;

        default:
          return Colors.green[600];
      }
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (details) => FocusScope.of(context).unfocus(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                shape: Border(
                  left: BorderSide(
                    color: _cardColor(),
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
                      contentPadding: EdgeInsets.only(
                          left: 15, top: 0, bottom: 0, right: 5),
                      title: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          data.name,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(left: 5, top: 3),
                        child: Text(
                          data.content,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      trailing: IconButton(
                        iconSize: 28,
                        icon: starModel.isStar(_id)
                            ? Icon(Icons.star, color: Colors.yellow[700])
                            : Icon(Icons.star_border, color: Colors.black38),
                        onPressed: () {
                          starModel.toggleStar(_id);
                          print(starList);
                        },
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
