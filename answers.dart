import 'package:flutter/material.dart';

class answerButtonWidget extends StatelessWidget {
  String text;
  VoidCallback buttonPressAction;
  answerButtonWidget(this.text, this.buttonPressAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ))),
          child: Text(text),
          onPressed: buttonPressAction),
    );
  }
}
