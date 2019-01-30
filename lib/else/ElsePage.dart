import 'package:flutter/material.dart';

class ElsePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ElsePageState();
  }
}

class _ElsePageState extends State<ElsePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("其他"),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
