import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_helloworld/controller/ExaminationController.dart';

import 'constants.dart';
import 'models/Examination.dart';

void main() => runApp(Exam());

class Exam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QueryPage(),
            ))));
  }
}

class QueryPage extends StatefulWidget {
  @override
  _QueryPageState createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  List<Widget> answerIcons = [];
  List<Examination> examination = ExaminationController().getExaminations();

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Finished"),
      content: const Text("You have finished this questionnaire."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  int currentIndex = 0;
  void CheckAnswer(bool answer) {
    // print("${examination.length} is examination Count");
    // print("${currentIndex} is currentIndex");

    const AlertDialog(title: Text('Material Alert!'));
    setState(() {
      if (examination.length - 1 > currentIndex) {
        if (examination[currentIndex].answer == answer) {
          answerIcons.add(rightAnswerIcon);
        } else {
          answerIcons.add(wrongAnswerIcon);
        }

        currentIndex++;
      } else {
        showAlertDialog(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                examination[currentIndex].query.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Wrap(
              runSpacing: 3,
              spacing: 3,
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: answerIcons,
            )),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: [
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: IconButton(
                          padding: EdgeInsets.all(12),
                          color: Colors.red[400],
                          icon: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () => {CheckAnswer(false)},
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: IconButton(
                          padding: EdgeInsets.all(12),
                          color: Colors.green[400],
                          icon: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () => {CheckAnswer(true)},
                        ))),
              ])),
        )
      ],
    );
  }
}
