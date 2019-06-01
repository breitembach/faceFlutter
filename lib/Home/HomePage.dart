import 'package:faceflutter/Home/PopularScreen.dart';
import 'package:faceflutter/Home/TabBarTopHome.dart';
import 'package:faceflutter/Home/bottomBarHome.dart';
import 'package:faceflutter/post/PostLink.dart';
import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();
    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Novo Link",
        currentButton: FloatingActionButton(
          heroTag: "train",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.edit),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PostLink(),
              ),
            );
          },
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: "Criar Post",
            backgroundColor: Colors.greenAccent,
            mini: true,
            onPressed: () {},
            child: Icon(Icons.create))));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: "directions",
            backgroundColor: Colors.blueAccent,
            mini: true,
            onPressed: () {},
            child: Icon(Icons.directions_car))));

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.trending_up),
                    text: "Popular",
                  ),
                  Tab(icon: Icon(Icons.link), text: "Links"),
                  Tab(icon: Icon(Icons.code), text: "Componentes"),
                ],
              ),
/*       bottomNavigationBar: BottomNavigationBar(
          items: bottomBarHome
        ), */
            ),
            floatingActionButton: UnicornDialer(
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
                parentButtonBackground: Colors.redAccent,
                orientation: UnicornOrientation.VERTICAL,
                parentButton: Icon(Icons.add),
                childButtons: childButtons),
            body: TabBarView(
              children: <Widget>[PopularScreen(), Text(""), Text("")],
            )));
  }
}
