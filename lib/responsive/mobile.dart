import 'package:flutter/material.dart';
import 'package:instagram_project/responsive/web.dart';
void main() {
  runApp(const MobileScreen());
}
 
class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebScreen(),
    );
  }
}