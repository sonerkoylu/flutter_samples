import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeExpectation extends StatefulWidget {
  @override
  _LifeExpectationState createState() => _LifeExpectationState();
}

class _LifeExpectationState extends State<LifeExpectation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome to Life Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContainerWidget(Colors.red),
                  ),
                  Expanded(child: ContainerWidget(Colors.white)),
                ],
              ),
            ),
            Expanded(child: ContainerWidget(Colors.red)),
            Expanded(child: ContainerWidget(Colors.red)),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ContainerWidget(Colors.red)),
                  Expanded(child: ContainerWidget(Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Color _color;

  ContainerWidget(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: _color),
    );
  }
}
