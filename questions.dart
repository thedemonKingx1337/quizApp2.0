import 'package:flutter/material.dart';

class questionTextWidget extends StatelessWidget {
  String text;
  String q_text;
  String sub_text;
  questionTextWidget(this.text, this.q_text, this.sub_text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
        Text(
          q_text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 15,
          ),
          child: Text(
            sub_text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
