import 'package:faceflutter/Home/BottomBarHome.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    //_tabController = TabController(initialIndex: 0, vsync: this, length:  );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          child: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text("dasdadds"),
              )
            ],
          ),
        ),
        title: Text("faceFlutter"),
      ),
      bottomNavigationBar: bottomBarHome,
      body: Container(
        child: Text("Hello world"),
      ),
    );
  }
}
