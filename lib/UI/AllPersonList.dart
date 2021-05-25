import 'package:flutter/material.dart';
import 'package:moorv2/databse/moor_database.dart';
import 'package:provider/provider.dart';

class AllPersonList extends StatefulWidget {
  @override
  _AllPersonListState createState() => _AllPersonListState();
}

class _AllPersonListState extends State<AllPersonList> {
  Database provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<Database>(context);

    return StreamProvider.value(
      value: provider.watchAllPerson(),
      child: Consumer<List<PersonData>>(
        builder: (context, _dataList, child) {
          return _dataList == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            itemCount: _dataList.length,
            itemBuilder: (context, index) {
              return Container(
                foregroundDecoration: BoxDecoration(color: Color(0x60FDFDFD)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.radio_button_checked,
                        color: Theme.of(context).accentColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 28,
                      ),
                      Text(_dataList[index].name)
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
