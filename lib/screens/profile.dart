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
      body: Column(children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(125, 78, 91, 110)),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://picsum.photos/250?image=9",
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              ),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.fromLTRB(15, 21, 0, 0),
            width: double.infinity,
            child: Text("Programmer")),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: Colors.white,
          thickness: 0.44,
        ),
       
       SizedBox(
        height: 9,
       ),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.edit_location,
                color: Colors.grey,
                size: 24.0,
              ),
              label: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 17),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(0, 90, 103, 223)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 33)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(
                    color: Color.fromARGB(
                      109,
                      255,
                      255,
                      255,
                    ),
                    style: BorderStyle.solid,
                  ),
                )),
              ),
            ),
           
           SizedBox(
          width: 15,
        ),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.grey,
                size: 24.0,
              ),
              label: Text(
                "Log Out",
                style: TextStyle(fontSize: 17),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(143, 255, 55, 112)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 33)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(
                    color: Color.fromARGB(
                      109,
                      255,
                      255,
                      255,
                    ),
                    style: BorderStyle.solid,
                  ),
                )),
              ),
            ),
             SizedBox(
        height: 9,
         ),
            Divider(
          color: Colors.white,
          thickness: 0.44,
        ),
       
      
          ],
        )
      ]),
    );
  }
}
