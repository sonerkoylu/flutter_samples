import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SentekSupportCard extends StatelessWidget {
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
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text("Welcome To Wayne Industries.",
                          style: GoogleFonts.architectsDaughter(fontSize: 20)),
                    ),
                    Container(
                      width: 200,
                      child: Divider(
                        height: 15,
                        color: Colors.brown,
                      ),
                    ),
                    Card(
                        margin: EdgeInsetsDirectional.all(10),
                        child: ListTile(
                          leading: Icon(Icons.email),
                          title: Text("Do you need help?"),
                          subtitle: Text("Immidiately answer this."),
                        )),
                    Card(
                      margin: EdgeInsetsDirectional.all(10),
                      child: ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Call me Catwoman..."),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
