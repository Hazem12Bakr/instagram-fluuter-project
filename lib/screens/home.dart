// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

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
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: widthScreen>600? webBackgroundColor : mobileBackgroundColor,
      appBar:widthScreen>600?null: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.messenger_outline,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
              )),
        ],
        backgroundColor: mobileBackgroundColor,
        title: SvgPicture.asset(
          "assets/img/Instagram.svg.svg",
          color: primaryColor,
          height: 40,
          width: 10,
        ),
      ),
      body: Container(
        
        decoration: BoxDecoration(
          color: mobileBackgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(vertical: 16,horizontal: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      SizedBox(
                        width: 17,
                      ),
                      Text(
                        "hazem a.bakr",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR601dYfdAM4YZpz6rWo_Ir1u18y8IsbxAyeEZh4_qEjpJ6ZqEfvLSBgdIfdZApND4dAqk&usqp=CAU",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                width: double.infinity,
                child: Text(
                  "10 Likes",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromARGB(214, 157, 157, 165),
                    fontSize: 18,
                  ),
                )),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Text(
                  "USERNAME ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 189, 196, 199),
                  ),
                ),
                Text(
                  " Cairo City Egypt ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 189, 196, 199),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(10, 13, 9, 10),
                  width: double.infinity,
                  child: Text("view all 100 comments",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 63, 17, 227),
                  ),
                  textAlign: TextAlign.start,
            
                  ),
                  
                  ),
            ),
          Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 9, 10),
                  width: double.infinity,
                  child: Text(
                    "3 Julay 2023",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(214, 157, 157, 165),
                  ),
                  textAlign: TextAlign.start,
            
                  )),
          
         
          ],
        ),
      ),
    );
  }
}
