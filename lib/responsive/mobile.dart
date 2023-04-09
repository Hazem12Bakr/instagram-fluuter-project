// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Screen"),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [],),

    );
  }
}