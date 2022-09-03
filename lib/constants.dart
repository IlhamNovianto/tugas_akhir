import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Color.fromARGB(255, 0, 0, 0);
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: SizedBox(height: 30, child: Image.asset("images/logoKaiwisata.png")),
  centerTitle: false,
);
var drawerTextColor = const TextStyle(color: Colors.black, fontSize: 12);
var tilePadding = const EdgeInsets.only(left: 8, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 0,
  child: Column(
    children: [
      DrawerHeader(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Image.asset("images/logoKaiwisata.png"),
            ),
          )),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home, color: Colors.black),
          title: Text('D A S H B O A R D', style: drawerTextColor),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings, color: Colors.black),
          title: Text('S E T T I N G S', style: drawerTextColor),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.favorite, color: Colors.black),
          title: Text(
            'F A V O R I T E',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout, color: Colors.black),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);
