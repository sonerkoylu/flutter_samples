import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CRExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lime,
      body: SafeArea(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          //  verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.orange,
              width: 200,
              height: 100,
              child: Text("This"),
            ),
            SizedBox(
              height: 30,
              width: 5,
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Text("is"),
            ),
            SizedBox(
              height: 30,
              width: 5,
            ),
            Container(
              color: Colors.black,
              width: 200,
              height: 100,
              child: Text("Sparta !", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    ));
  }
}
