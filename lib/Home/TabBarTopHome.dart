import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

List<Tab> tabBarTopHome({c}) => List<Tab>.from(
  [
    Tab(
      icon: Icon(Icons.trending_up, size: 15,),
      child: GestureDetector(
        onTap: () {
          c.animateTo(0, curve: Curves.bounceIn,duration: Duration(milliseconds: 200));
        },
        child: Text("Populares"),
      ),

    ),
    Tab(
      child: GestureDetector(
        onTap: () {
          c.animateTo(1, curve: Curves.bounceIn,duration: Duration(milliseconds: 200));
        },

        child: Text("Tesds"),
      )
    ),
    Tab(
      child: Text("Componentes"),
    )
  ]  
);
          