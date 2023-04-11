// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_project/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
      title: Text("Hazem A.Bakr"),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(125, 78, 91, 110)
                        ),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/250?image=9",
                          ),
                        ),
                      ),
            ],
          )
      ]),

    );
  }
}