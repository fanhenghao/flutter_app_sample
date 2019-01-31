import 'package:firstflutter/RandomWords.dart';
import 'package:firstflutter/else/ElsePage.dart';
import 'package:firstflutter/home/HomePage.dart';
import 'package:firstflutter/api/FlutterApiPage.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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

  @override
  void initState() {
    super.initState();
    tabController = new TabController(
        initialIndex: 0, vsync: this, length: 4); // 这里的length 决定有多少个底导 submenus
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(title: new Text("全局主页"), backgroundColor: Colors.teal),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: null,
//      backgroundColor: Colors.teal,
//      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new HomePage(),
        new FlutterApiPage(),
        new ElsePage()
      ]),
      bottomNavigationBar: Material(
        color: const Color(0xFFF0EEEF), //底部导航栏主题颜色
        child: SafeArea(
          child: Container(
            height: 60.0,
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
              indicatorColor: Colors.teal,
              //tab标签的下划线颜色
              // labelColor: const Color(0xFF000000),
              indicatorWeight: 2.0,
              labelColor: Colors.teal,
              unselectedLabelColor: const Color(0xFF8E8E8E),
              tabs: <Tab>[
                Tab(text: '主页', icon: Icon(Icons.android)),
                Tab(text: 'Flutter', icon: Icon(Icons.extension)),
                Tab(text: '其他', icon: Icon(Icons.create)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
