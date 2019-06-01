import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

final notesReference = FirebaseDatabase.instance.reference();

Widget get bottomBarHome => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
            activeIcon: Icon(
              Icons.home,
              size: 30,
              color: Colors.blueAccent,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(
              Icons.book,
              size: 30,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Articles",
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: Colors.blueAccent,
            ),
            title: Text(
              "User",
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
          ),
        ],
      );