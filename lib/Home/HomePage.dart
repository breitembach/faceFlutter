import 'package:faceflutter/Home/TabBarTopHome.dart';
import 'package:faceflutter/Home/bottomBarHome.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
   TabController _tabController;

   @override
  void initState() {
    //_tabController = TabController(initialIndex: 0, vsync: this, length: tabBarTopHome().length );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
        appBar: AppBar(

          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.trending_up), text: "Popular",),
              Tab(icon: Icon(Icons.link), text: "Links"),
              Tab(icon: Icon(Icons.code), text: "Componentes"),
            ],
          ),
          title: Text("faceFlutter"),
        ),
/*       bottomNavigationBar: BottomNavigationBar(
          items: bottomBarHome
        ), */
        body: TabBarView(
          children: <Widget>[
            Text("data"),
            Text("data"),
            Text("data")
          ],
        )
      ),
    );
  }
}