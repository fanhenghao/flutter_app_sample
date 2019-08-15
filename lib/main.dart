import 'package:firstflutter/else/ElsePage.dart';
import 'package:firstflutter/home/HomePage.dart';
import 'package:firstflutter/api/FlutterApiPage.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

void main() {
  runApp(new MaterialApp(
//    title: 'Flutter Tutorial',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StartFrame();
  }

//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
////      title: 'Startup Name Generator',
////      theme: new ThemeData(primaryColor: Colors.lightBlueAccent,),
//      home: new RandomWords(),
//    );
//  }
}

class StartFrame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _StartFrameState();
  }
}

class _StartFrameState extends State<StartFrame>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _currentItem = 0;
  final List<BottomNavigationBarItem> mList = [];

  @override
  void initState() {
    super.initState();
    tabController = new TabController(
        initialIndex: 0, vsync: this, length: 3); // 这里的length 决定有多少个底导 submenus
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(controller: tabController, children: <Widget>[
        new HomePage(),
        new FlutterApiPage(),
        new ElsePage()
      ]),
      bottomNavigationBar: Material(
        color: const Color(0xFFF0EEEF), //底部导航栏主题颜色
        child: SafeArea(
//          minimum: EdgeInsets.all(3),
          child: Container(
            height: 55.0,
//            padding: EdgeInsets.fromLTRB(0, 2, 0, 1),
//            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.teal,
                  blurRadius: 1.0,
//                  spreadRadius: 2.0,
//                  offset: Offset(-1.0, -1.0),
                ),
              ],
            ),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              // labelColor: const Color(0xFF000000),
              indicatorWeight: 2.0,
              labelColor: Colors.teal,
              unselectedLabelColor: const Color(0xFF8E8E8E),
              tabs: <Tab>[
                Tab(text: 'Home', icon: Icon(Icons.time_to_leave)),
                Tab(text: 'Flutter', icon: Icon(Icons.extension)),
                Tab(text: 'Else', icon: Icon(Icons.create)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
