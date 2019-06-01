import 'package:flutter/material.dart';

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
              Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 120.0,
                      height: 80.0,
                      child: Image.network(
                          "https://www.computersciencedegreehub.com/wp-content/uploads/2016/02/what-is-coding-300x200.jpg"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Componente de radio button",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '''Descrição do componente de radio button''',
                              style: TextStyle(fontSize: 13),
                              maxLines: 3,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
