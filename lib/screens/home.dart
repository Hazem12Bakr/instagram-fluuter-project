// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_project/shared/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
           onPressed: (){},
           icon: Icon(
            Icons.messenger_outline,
           )),
           IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.logout,
            )),
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset("assets/img/Instagram.svg.svg",color:primaryColor ,height: 40,width: 10,),
      ),
    );
  }
}