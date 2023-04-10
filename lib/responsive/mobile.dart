// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_project/screens/add_post.dart';
import 'package:instagram_project/screens/home.dart';
import 'package:instagram_project/screens/profile.dart';
import 'package:instagram_project/screens/search.dart';
import 'package:instagram_project/shared/colors.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: mobileBackgroundColor,
          onTap: (index) {
            // navigate to the tabed page
            _pageController.jumpToPage(index);
           // print("==========  $index ");
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: primaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  color: secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: secondaryColor,
                ),
                label: ""),
          ]),
    
    body: PageView(
     // onPageChanged: (value) {},
       physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        Home(),
        Search(),
        AddPost(),
        Center(child: Text("salm alykom")),
        Profile(),
        
      ],
    ),
    
    );
  }
}
