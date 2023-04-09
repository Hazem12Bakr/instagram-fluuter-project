// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_project/responsive/mobile.dart';
import 'package:instagram_project/responsive/responsive.dart';
import 'package:instagram_project/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Responsive(
        mymobilescreen: MobileScreen(),
        mywebscreen: WebScreen(),
      ),
    );
  }
}
