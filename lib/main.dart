import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(
              title: "About",
            ),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: Colors.blue,
          splashColor: Colors.blue),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Center(
              child: Text(
                'Berfy',
                style: TextStyle(color: Colors.white),
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
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 2,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                  Tab(icon: Icon(Icons.view_quilt)),
                  Tab(icon: Icon(Icons.g_translate)),
                  Tab(icon: Icon(Icons.ac_unit)),
                ]),
          ),
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
            SliverDemo(),
            NavigatorDemo(),
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
