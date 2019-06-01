import 'package:flutter/material.dart';

Widget get BottomBarHome => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            activeIcon: Icon(
              Icons.home,
              size: 30,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.book,
              size: 30,
              color: Colors.white,
            ),
            title: Text(
              "Articles",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.assignment_ind,
              size: 30,
              color: Colors.red,
            ),
            title: Text(
              "User",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ],
      );