import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComponenteScreen extends StatefulWidget {
  @override
  _ComponenteScreenState createState() => _ComponenteScreenState();
}

class _ComponenteScreenState extends State<ComponenteScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              GestureDetector(
          onTap: () {
           
          },
          child: Card(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                  "http://www.coderzheaven.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-27-at-11.45.17-AM.png"),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                              "Componente de radio button",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 15),
                child: Row(
                  children: <Widget>[
                    Text(
                                '''Descrição do componente de radio button''',
                                style: TextStyle(fontSize: 13),
                                maxLines: 3,
                              )
                  ],
                ),
              ),
            ],
          )),
          
        )
            ],
          ),
        );
      },
    );
  }
}
