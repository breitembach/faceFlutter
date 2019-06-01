import 'package:faceflutter/Home/popular/PopularCommentsScreen.dart';
import 'package:faceflutter/Home/popular/PopularDetails.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularWidget extends StatefulWidget {
  @override
  _PopularWidgetState createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  Future<List<Card>> popularPosts;

  @override
  void initState() {
    //popularPosts = List<Card>.from([])
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PopularDetails()));
          },
          child: Card(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("Título da postagem"),
              ),
              Image.network(
                  "https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Alguma Descrição",
                  style: TextStyle(color: Colors.grey[500]),
                ),
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
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.description),
                        Text("Comentar")
                      ],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          )),
        ),
        Card(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: Text("Título da postagem"),
            ),
            Image.network(
                "https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Alguma Descrição",
                style: TextStyle(color: Colors.grey[500]),
              ),
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
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.description),
                      Text("Comentar")
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ],
        )),
        Card(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: Text("Título da postagem"),
            ),
            Image.network(
                "https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Alguma Descrição",
                style: TextStyle(color: Colors.grey[500]),
              ),
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
                  onPressed: () {},
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.description),
                      Text("Comentar")
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ))
      ],
    );
  }
}
