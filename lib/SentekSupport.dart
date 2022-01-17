import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SentekSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueGrey,
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.black,
                      backgroundImage:
                          AssetImage("assets/images/batman_avatar.png"),
                    ),
                    Text(
                      "Welcome To Sentek Corp.",
                      style: GoogleFonts.architectsDaughter(fontSize: 20),
                    ),
                    Container(
                        color: Colors.blue,
                        margin: EdgeInsetsDirectional.all(15),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                              size: 32,
                            ),
                            Text(
                              "Do you need help?",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        )),
                    Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 32,
                          ),
                          Text(
                            "Call me ISHMAEL",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
