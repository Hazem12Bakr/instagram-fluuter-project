// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_project/screens/add_post.dart';
import 'package:instagram_project/screens/home.dart';
import 'package:instagram_project/screens/profile.dart';
import 'package:instagram_project/screens/search.dart';
import 'package:instagram_project/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: mobileBackgroundColor,
          onTap: (index) {
            // navigate to the tabed page
            _pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });
           // print("==========  $index ");
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: currentPage==0? primaryColor:secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: currentPage == 1?primaryColor: secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  color:currentPage ==2?primaryColor: secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: currentPage == 3?primaryColor: secondaryColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: currentPage ==4?primaryColor: secondaryColor,
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
