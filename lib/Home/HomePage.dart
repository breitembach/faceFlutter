import 'package:faceflutter/Home/BottomBarHome.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(

        title: Text("faceFlutter"),
      ),
      bottomNavigationBar: BottomBarHome,
      body: Container(
        child: Text("Hello world"),
      ),
    );
  }
}