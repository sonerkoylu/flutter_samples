import 'package:flutter/material.dart';
import 'package:flutter_helloworld/LifeExpectaion.dart';
import 'Exam.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final theme = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          secondary: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LifeExpectation(),
      // home: new Scaffold(
      //   backgroundColor: Colors.blueGrey,
      //   appBar: new AppBar(
      //     title: Center(child: new Text("Happy new year..")),
      //   ),
      //   body: Center(
      //     child: new Image.asset(
      //       'assets/images/newyear.jpg',
      //     ),
      //   ),
      //),
    );
  }
}
