//// Flutter code sample for material.BottomNavigationBar.1
//
//// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
//// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
//// widgets and the [currentIndex] is set to index 0. The selected item is
//// amber. The `_onItemTapped` function changes the selected item's index
//// and displays a corresponding message in the center of the [Scaffold].
////
//// ![A scaffold with a bottom navigation bar containing three bottom navigation
//// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)
//
//import 'package:flutter/material.dart';
//import 'package:firstflutter/else/ElsePage.dart';
//import 'package:firstflutter/home/HomePage.dart';
//import 'package:firstflutter/api/FlutterApiPage.dart';
//
//void main() => runApp(MyApp());
//
///// This Widget is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'Flutter Code Sample';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: MyStatefulWidget(),
//    );
//  }
//}
//
//class MyStatefulWidget extends StatefulWidget {
//  MyStatefulWidget({Key key}) : super(key: key);
//
//  @override
//  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
//}
//
//class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//  int _selectedIndex = 0;
//  static const TextStyle optionStyle =
//      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  var _pageController = new PageController(initialPage: 0);
//  var _widgetOptions = <Widget>[
////    Text(
////      'Index 0: Home',
////      style: optionStyle,
////    ),
////    Text(
////      'Index 1: Business',
////      style: optionStyle,
////    ),
////    Text(
////      'Index 2: School',
////      style: optionStyle,
////    ),
//    new HomePage(),
//    new FlutterApiPage(),
//    new ElsePage(),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: new PageView.builder(
//        onPageChanged: _pageChange,
//        controller: _pageController,
//        itemCount: _widgetOptions.length,
//        itemBuilder: (BuildContext context, int index) {
//          return _widgetOptions.elementAt(_selectedIndex);
//        },
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Home'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.business),
//            title: Text('Business'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.school),
//            title: Text('School'),
//          ),
//        ],
//        currentIndex: _selectedIndex,
//        selectedItemColor:Colors.teal,
//        onTap: _onItemTapped,
//      ),
//    );
//  }
//
//  void _onItemTapped(int index) {
//    //bottomNavigationBar 和 PageView 关联
//    _pageController.animateToPage(index,
//        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
//  }
//
////  void _onItemTapped(int index) {
////    setState(() {
////      _selectedIndex = index;
////    });
////  }
//
//  void _pageChange(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }
//}
