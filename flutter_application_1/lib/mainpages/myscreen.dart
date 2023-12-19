import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //basic profile
      Container(
        width: MediaQuery.of(context).size.width,
        height: 240.0,
        color: Colors.amber[50],
        margin: EdgeInsets.all(5),
        child: Row(
          children: [
            SizedBox(
              height: 220.0,
              width: 220.0,
              child: Image.asset('assets/image/haru6.jpg'),
            ),
            SizedBox(
              height: 200.0, // Set the desired height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ji Haru',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      )),
                  Text(' Breed : Maltese'),
                  Text(' Age : 6'),
                  Text(' Birth Date : 2018 December 25th '),
                ],
              ),
            )
          ],
        ),
      ),

      //uploaded photos
      Column(
        children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset('assets/image/haru4.jpg'),
                  ),
                  Expanded(
                    child: Image.asset('assets/image/haru5.jpg'),
                  ),
                  Expanded(
                    child: Image.asset('assets/image/haru6.jpg'),
                  ),
                ]),
          ),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Expanded(
                  child: Image.asset('assets/image/haru7.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/image/haru8.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/image/haru9.jpg'),
                ),
              ]))
        ],
      ),
    ]);
  }
}
