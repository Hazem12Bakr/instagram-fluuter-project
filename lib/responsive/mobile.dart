// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Screen"),
      ),

      bottomNavigationBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
      ]),

    );
  }
}