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
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 13),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(
                    "https://picsum.photos/250?image=9",
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
            height: MediaQuery.of(context).size.height *0.35,
            width: double.infinity,
           ),
         ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
              onPressed: (){},
               icon: Icon(Icons.favorite_border),
               ),

            IconButton(
              onPressed: (){},
               icon: Icon(
                Icons.comment_outlined,
               ),
               ),
            IconButton(
              onPressed: (){},
               icon: Icon(
                Icons.send,
               ),
               ),
              ],
            ),
            IconButton(
              onPressed: (){},
               icon: Icon(
                Icons.bookmark_outline,
               ),
               ),


          ],
        )

       
        ],
      ),
    );
  }
}
