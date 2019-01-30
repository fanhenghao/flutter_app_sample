import 'package:flutter/material.dart';

class FlutterApiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FlutterApiPageState();
  }
}

class _FlutterApiPageState extends State<FlutterApiPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FlutterApi"),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
