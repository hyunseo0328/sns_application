import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Image.asset(
        'assets/image/haru2.jpg',
        fit: BoxFit.cover,
      )),
    );
  }
}
