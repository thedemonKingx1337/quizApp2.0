import 'package:flutter/material.dart';
import 'package:project_march/quizApp2.0/answers.dart';
import 'package:project_march/quizApp2.0/result.dart';
import 'package:project_march/ui_ux_works/uiAss4.dart';
import 'questions.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _q_index = 0;
  int totalScore = 0;
  void resetButtonPressed() {
    setState(() {
      _q_index = 0;
      totalScore = 0;
    });
  }

  final questionsDialogue = [
    " [ Psych: \"NO\" Button Work aavilla    !LOL! ]",
    "YES koduth alle [  Menden Njan paranje alle \"NO\" work aavillann  ] \n \n OK Next Question . . . ",
    "Chummatha \"CR7\" Work aavumarnn Manden \n[  Messi koduthathin thanks.  ]\n \n Ok Next Question...  "
  ];
  final questions = [
    " PB  oru  nalla  manushyan  aahno ?  ",
    " Messi  OR  CR7  ?  ? ",
    "Ninakk thantha illa enn  Naattkarkk ariyavo ???"
  ];
  final questionsSubtitle = [
    " ",
    " [ ! Peedikkanda CR Work aavulla !] ",
    " ",
  ];

  final Map_answersCollection = [
    {
      "answer": [
        {"text": "Good", "score": 10},
        {"text": "Very very Good", "score": 20},
        {"text": "allahne mwthe powli", "score": 30}
      ]
    },
    {
      "answer": [
        {"text": "Messi", "score": 30},
        {"text": "CR", "score": 0},
        {"text": "any other\'s but not CR Suiiiiii...!!!!", "score": 10}
      ]
    },
    {
      "answer": [
        {"text": "Yes", "score": 10},
        {"text": "No", "score": 20},
        {"text": "Arinjuda", "score": 30}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Quiz PB")),
      body: _q_index < questions.length
          ? Container(
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    questionTextWidget(
                        questionsDialogue.elementAt(_q_index),
                        questions.elementAt(_q_index),
                        questionsSubtitle.elementAt(_q_index)),
                    ...Map_answersCollection[_q_index]["answer"]!
                        .map((iteratedAnswer) => Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: answerButtonWidget(
                                  iteratedAnswer["text"].toString(),
                                  () => _answerButtonClicked(
                                      iteratedAnswer["score"] as int),
                                ),
                              ),
                            )),
                  ]),
            )
          : resultWidget(totalScore, resetButtonPressed),
    );
  }

  void _answerButtonClicked(int MarkOfscore) {
    setState(() {
      totalScore = totalScore + MarkOfscore;
      _q_index = _q_index + 1;
    });
  }
}
