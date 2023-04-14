// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_project/shared/colors.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body:Center(
        child: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.upload,
            size: 55,
            ),
          ),
      ) ,
    );
  }
}