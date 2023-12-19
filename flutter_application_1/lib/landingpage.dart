import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainpage.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      print('Timer callback executed');
      Get.offAll(MainPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(child: Text("loading")
            //   child: Image.asset(
            // 'assets/image/haru2.jpg',
            // fit: BoxFit.cover, )
            ),
        CircularProgressIndicator()
      ],
    ));
  }
}
