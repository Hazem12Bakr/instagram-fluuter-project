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
    final double widthScreen = MediaQuery.of(context).size.width;
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
          thickness:widthScreen>600? 0.06 : 0.44,
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
                    EdgeInsets.symmetric(vertical:widthScreen>600?19: 10, horizontal: 33)),
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
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(143, 255, 55, 112)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical:widthScreen>600?19:  10, horizontal: 33)),
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
          ],
        ),
        SizedBox(
          height: 9,
        ),
        Divider(
          color: Colors.white,
          thickness:widthScreen>600? 0.06 : 0.44,
        ),
        SizedBox(
          height: 19,
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //ot have 2 elements in one line
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    "data:image/png;base64,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",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
