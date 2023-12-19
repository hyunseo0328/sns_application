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
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            //photo box
            SizedBox(
              height: 220.0,
              width: 220.0,
              child: Image.asset('assets/image/haru6.jpg'),
            ),
            SizedBox(width: 13),
            //description box
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
                  Text(' Likes: sweet potato, chicken '),
                  Text(' Hates: baths, hair cuts'),
                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 20),
      //uploaded photos
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
      ),
      Container(height: 70),
      Center(
          child: Column(
        children: [
          Container(child: Image.asset('assets/image/bone.jpg', height: 70)),
          SizedBox(height: 5),
          Text("PETstagram"),
        ],
      ))
    ]);
  }
}
