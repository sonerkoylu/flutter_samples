import 'package:flutter/material.dart';

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("Contact App")),
        ),
        body: SafeArea(
          child: Transform(
            transform: Matrix4.rotationZ(-0.2),
            alignment: FractionalOffset.center,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(30),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Image.asset(
                'assets/images/newyear.jpg',
              ),
              //color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
