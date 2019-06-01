import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
             Padding(
               padding: EdgeInsets.all(5),
               child: Text("Título da postagem"),
             ),
             Image.network("https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
             Padding(
               padding: EdgeInsets.all(10),
               child: Text("Alguma Descrição",style: TextStyle(color: Colors.grey[500]),),
             ),
             Row(
               children: <Widget>[
                 FlatButton(
                   child: Row(
                     children: <Widget>[
                       Icon(FontAwesomeIcons.thumbsUp),
                       Text("Curtir")
                     ],
                   ),
                   onPressed: (){},
                 ),
                 FlatButton(
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.description),
                       Text("Comentar")
                     ],
                   ),
                   onPressed: (){},
                 )
               ],
             ),
             
           ], 
          )
        ),
        Card(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.all(5),
               child: Text("Título da postagem"),
             ),
             Image.network("https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
             Padding(
               padding: EdgeInsets.all(10),
               child: Text("Alguma Descrição",style: TextStyle(color: Colors.grey[500]),),
             ),
             Row(
               children: <Widget>[
                 FlatButton(
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.linked_camera),
                       Text("Curtir")
                     ],
                   ),
                   onPressed: (){},
                 ),
                 FlatButton(
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.description),
                       Text("Comentar")
                     ],
                   ),
                   onPressed: (){},
                 )
               ],
             ),
             
           ], 
          )
        ),
        Card(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.all(5),
               child: Text("Título da postagem"),
             ),
             Image.network("https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
             Padding(
               padding: EdgeInsets.all(10),
               child: Text("Alguma Descrição",style: TextStyle(color: Colors.grey[500]),),
             ),
             Row(
               children: <Widget>[
                 FlatButton(
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.linked_camera),
                       Text("Curtir")
                     ],
                   ),
                   onPressed: (){},
                 ),
                 FlatButton(
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.description),
                       Text("Comentar")
                     ],
                   ),
                   onPressed: (){},
                 )
               ],
             ),
             
           ], 
          )
        )      
      ],
    );
  }
}