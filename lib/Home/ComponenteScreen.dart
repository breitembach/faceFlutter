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
        return Column(
          children: <Widget>[
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[Icon(Icons.phone)]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
