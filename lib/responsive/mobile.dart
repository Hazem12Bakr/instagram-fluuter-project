// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_project/shared/colors.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Screen"),
      ),

      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: mobileBackgroundColor,
        
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: primaryColor,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: secondaryColor,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle,color: secondaryColor,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,color: secondaryColor,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: secondaryColor,),label: ""),
      ]),

    );
  }
}