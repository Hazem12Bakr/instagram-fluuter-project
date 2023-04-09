// ignore_for_file: unused_import

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
    return const MaterialApp(
      home: Responsive(
        mymobilescreen: MobileScreen(),
        mywebscreen: WebScreen(),
      ),
    );
  }
}
