import 'package:flutter/material.dart';
import 'TabBarPage.dart';

class FlutterApiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FlutterApiPageState();
  }
}

class _FlutterApiPageState extends State<FlutterApiPage> {
  final List _itemType = ['TabBarPage', 'type_2', 'type_3', 'type_4', 'type_5'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FlutterApi"),
        backgroundColor: Colors.teal,
      ),
      body: _item(),
    );
  }

  Widget _item() {
    return new ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return new Divider(
            color: Colors.greenAccent,
          );
        }
        return new ListTile(
          title: new Text(
            _itemType[i ~/ 2].toString(),
            style: const TextStyle(fontSize: 18),
          ),
          contentPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
          onTap: () {
            _onClick(i ~/ 2);
          },
        );
      },
      itemCount: _itemType.length * 2,
    );
  }

  _onClick(int i) {
    if (i == 0) {
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new TabBarPage(
                  itemTitle: _itemType[i],
                )),
      );
    }
    if(i==1){
      print("i==================================1");
    }
  }
}
