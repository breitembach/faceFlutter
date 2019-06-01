import 'package:faceflutter/Home/componente/ComponenteScreen.dart';
import 'package:faceflutter/Home/popular/PopularWidget.dart';
import 'package:faceflutter/post/PostLink.dart';
import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int currentPage = 0;
  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    _tabController.addListener(() {
      currentPage = _tabController.index;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();
    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Novo Link",
        currentButton: FloatingActionButton(
          heroTag: "Postar Links",
          backgroundColor: Colors.blueAccent,
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
        hasLabel: true,
        labelText: "Criar Post",
        currentButton: FloatingActionButton(
            heroTag: "Criar Post",
            backgroundColor: Colors.blueAccent,
            mini: true,
            onPressed: () {},
            child: Icon(Icons.code))));

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("FaceFlutter"),
              centerTitle: true,
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
                backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
                parentButtonBackground: Colors.redAccent,
                orientation: UnicornOrientation.VERTICAL,
                parentButton: Icon(Icons.add),
                childButtons: childButtons),
            body: TabBarView(
              //controller: _tabController,
              children: <Widget>[
                PopularWidget(),
                //PostLink(),
                ComponenteScreen(),
              ],
            )));
  }
}
