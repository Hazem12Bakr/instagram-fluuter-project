// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  final mymobilescreen;
  final mywebscreen;
  const Responsive({super.key,required this.mymobilescreen,required this.mywebscreen});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    //use layout to get the maxwidth widget to determine if its mobile or web 
    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints){
        if (BoxConstraints.maxWidth>600) {
          return widget.mywebscreen ;
        } else {
          return widget.mymobilescreen;
        }
      }
      );
  }
}