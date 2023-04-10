// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_project/screens/add_post.dart';
import 'package:instagram_project/screens/home.dart';
import 'package:instagram_project/screens/profile.dart';
import 'package:instagram_project/screens/search.dart';
import 'package:instagram_project/shared/colors.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  final PageController _pageController = PageController();
  int page = 0;

navigate2Screen(int indexx)
{
  _pageController.jumpToPage(indexx);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color:page==0? primaryColor:secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(0);
              setState(() {
                page==0;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color:page==0? primaryColor:secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(1);
              setState(() {
                page==1;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color:page==1? primaryColor:secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(2);
              setState(() {
                page==2;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color:page==2? primaryColor:secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(3);
              setState(() {
                page==3;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color:page==3? primaryColor:secondaryColor,
            ),
            onPressed: () {
              navigate2Screen(4);
              setState(() {
                page==3;
              });
            },
          ),
        
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/img/Instagram.svg.svg",
          color: primaryColor,
          height: 32,
        ),
      ),
   
    body: PageView(
      controller: _pageController,
      onPageChanged: (index) {
      
      },
       physics: NeverScrollableScrollPhysics(),
      //controller: _pageController,
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
