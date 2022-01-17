import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "CookBook Specials",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Cook()),
    );
  }
}

//Expanded flex attribute for sizing
class Cook extends StatefulWidget {
  @override
  State<Cook> createState() => _CookState();
}

class _CookState extends State<Cook> {
  int menuId = 1;

  List<String> soups = ["Soup 1", "Soup 2", "Soup 3", "Soup 4", "Soup 5"];
  List<String> desserts = [
    "Dessert 1",
    "Dessert 2",
    "Dessert 3",
    "Dessert 4",
    "Dessert 5"
  ];
  List<String> mainCooks = [
    "Main Cook 1",
    "Main Cook 2",
    "Main Cook 3",
    "Main Cook 4",
    "Main Cook 5"
  ];

  void setMenu() {
    menuId = Random().nextInt(5);

    setState(() {
      if (menuId == 0) {
        menuId = menuId + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: setMenu,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/corba_$menuId.jpg"),
              ),
            ),
          ),
          Text(soups[menuId]),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black12,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: setMenu,
                child: Image.asset("assets/images/yemek_$menuId.jpg"),
              ),
            ),
          ),
          Text(mainCooks[menuId]),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black12,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: setMenu,
                child: Image.asset("assets/images/tatli_$menuId.jpg"),
              ),
            ),
          ),
          Text(desserts[menuId]),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
