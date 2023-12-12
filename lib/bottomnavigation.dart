import 'package:flutter/material.dart';
import 'package:headphoneapps/homepage.dart';
import 'package:headphoneapps/productlist.dart';

import 'detailPage.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int select=0;
  List list=[
    // ProductList(),

     HomePage(),
    Text("page2"),
    Text("page3"),
    Text("page4"),
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: list[select],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        onTap: (value) {
          setState(() {
            select=value;
          });
        },
          currentIndex: select,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),label: "Dashbord"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "WatchList"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
          ]),

    );
  }
}
