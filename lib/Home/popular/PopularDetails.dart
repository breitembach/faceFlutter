import 'package:flutter/material.dart';

class PopularDetails extends StatefulWidget {
  @override
  _PopularDetailsState createState() => _PopularDetailsState();
}

class _PopularDetailsState extends State<PopularDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: Column(
        children: <Widget>[
          Image.network("https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png"),
          Text("Title of Popular Details"),
          Text("Description"),
          Text("Comentários",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20,)),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
              return Card(
                
                child: Text("dasdads"),
              );
             },
            ),
          ),
        ],
      )
    );
  }
}