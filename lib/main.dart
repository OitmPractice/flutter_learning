import 'package:flutter/material.dart';

import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';


void main() => runApp(App());


// 需要修改数据的小部件 StatefulWidget
// 不需要修改数据的小部件 使用 StatelessWidget
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: Home(),
      // home: SliverDemo(),
      // home: NavigatorDemo(),

      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About')
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return DefaultTabController (
      length: 4,
      child: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   tooltip: 'Navigration',
        //   onPressed: () => debugPrint('Menu Pressed'),
        // ),
        title: Text(
          'Oitm',
        ),
        actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Search Pressed'),
          ),
        ],
        elevation: 0,
        bottom: TabBar(
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.black54,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist)),
            Tab(icon: Icon(Icons.change_history)), 
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.view_quilt)),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ListViewDemo(),
          BasicDemo(),
          LayoutDemo(),
          // ViewDemo(),
          SliverDemo(),
        ],
      ),
      drawer: DrawerDemo(),
      bottomNavigationBar: BottomNavitationBarDemo(),
      // endDrawer: Text('End drawer'),

    ),
    );
  }
}
