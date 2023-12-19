import 'package:flutter/material.dart';
import 'package:flutter_application_1/landingpage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //this widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LandingPage(),
    ); //MaterialApp
  }
}
