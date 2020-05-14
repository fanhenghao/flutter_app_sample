import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  String itemTitle;

  TabBarPage({Key key, @required this.itemTitle}) : super(key: key);

  @override
  TabBarPageState createState() => TabBarPageState();
}

class TabBarPageState extends State<TabBarPage> {
  bool _choiceBg = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: _item.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.itemTitle),
            backgroundColor: Colors.black54,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.tag_faces,
                  color: Colors.teal,
                ),
                onPressed: () {
//                  Toast.show("切换选中背景", context);
                  setState(() {
                    _choiceBg = !_choiceBg;
                  });
                },
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.teal,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.teal,
              indicator: bgIndicator(),
              tabs: _item.map<Widget>((TabBarChoice choice) {
                return Tab(
                  text: choice.text,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: _item.map<Widget>((TabBarChoice choice) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        choice.icon,
                        size: 100,
                        color: Colors.teal,
                      ),
                      Text(
                        choice.text,
                        style: TextStyle(color: Colors.teal, fontSize: 25),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  Decoration bgIndicator() {
    if (!_choiceBg) {
      return const UnderlineTabIndicator();
    }
    return ShapeDecoration(
        shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      side: BorderSide(color: Colors.white12, width: 2),
    ));
  }
}

class TabBarChoice {
  String text;
  IconData icon;

  TabBarChoice({@required this.text, @required this.icon});
}

var _item = [
  TabBarChoice(text: 'android', icon: Icons.android),
  TabBarChoice(text: 'active', icon: Icons.airplanemode_active),
  TabBarChoice(text: 'forward', icon: Icons.accessible_forward),
  TabBarChoice(text: 'airplay', icon: Icons.airplay),
  TabBarChoice(text: 'shuttle', icon: Icons.airport_shuttle),
  TabBarChoice(text: 'brightness', icon: Icons.brightness_7),
  TabBarChoice(text: 'faces', icon: Icons.tag_faces),
  TabBarChoice(text: 'build', icon: Icons.build),
];
