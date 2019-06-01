import 'package:flutter/material.dart';

class PopularScreen extends StatefulWidget {
  @override
  _PopularScreenState createState() => _PopularScreenState();
}



class _PopularScreenState extends State<PopularScreen> {
  Future<List<Card>> popularPosts;

  @override
  void initState() { 
    //popularPosts = List<Card>.from([])
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Card(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             CircleAvatar(
               child: Text("Icon"),
             ),
             Text("Título da postagem"),
             Padding(
               padding: EdgeInsets.all(10),
               child: Text("Alguma Descrição",style: TextStyle(color: Colors.grey[500]),),
             )
           ], 
          )
        )  
      ],
    );
  }
}