import 'package:flutter/material.dart';
import 'package:moorv2/databse/moor_database.dart';
import 'package:provider/provider.dart';

import 'AllPersonList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Database>(context);
    var text;
    return Scaffold(
      appBar: AppBar(title: Text('Moor database example'),),
      body: Container(child: Column(
        children: [
          TextField(onChanged: (val){
            text = val;
          },),
          TextButton(
            child: Text('Submit'),
            onPressed: (){
              provider.insertTodoEntries(new PersonData(id:null, name: text, address: "test address", mobile: "7065910157"));
            },
          ),
          AllPersonList()
        ],
      ),
      ),
    );
  }
}
