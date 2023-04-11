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
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(125, 78, 91, 110)
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/250?image=9",
                          ),
                        ),
                      ),           
              Row(
                children: [
                  Column(
                children: [
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )

                ],
              ),
              SizedBox(
                     width: 17,
                    ),
              Column(
                children: [
                  Text(
                    "50",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )

                ],
              ),
              SizedBox(
                     width: 17,
                    ),
              Column(
                children: [
                  Text(
                    "10",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )

                ],
              ),
              
                ],
              )
           
           
            ],
          )
      ]),

    );
  }
}