import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Colors.yellow,
          splashColor: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Center(
              child: Text(
                'Berfy',
                style: TextStyle(color: Colors.black),
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: '搜索',
                  onPressed: () => debugPrint('搜索被点击'))
            ],
            elevation: 0.0,
            bottom: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]),
          ),
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
//            Icon(
//              Icons.local_florist,
//              size: 180.0,
//              color: Colors.black12,
//            ),
            BasicDemo(),
            LayoutDemo(),
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}

//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      backgroundColor: Colors.grey[100],
//      appBar: AppBar(
//          title: Center(child: Text('Berfy',
//            style: TextStyle(color: Colors.white),
//          ),),
//          elevation: 0.0,
//      ),
//      body: ListViewDemo(),
//    );
//  }
//}
