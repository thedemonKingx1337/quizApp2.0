import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class resultWidget extends StatelessWidget {
  int passedTotalScore;
  VoidCallback passedResetButtonPressed;
  resultWidget(this.passedTotalScore, this.passedResetButtonPressed);

  String scoreDialogue(score) {
    var dialogue = " ";
    if (score < 20) {
      return dialogue = "emm..ne PB ye patti inim padikkendi irikkunnu";
    } else if (score < 40) {
      return dialogue = "emm idivett sanam valanjath thanne";
    } else {
      return dialogue = "Ne aal kollalloda mowne";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Mendan"),
            Text(
              "Appo Thandha illa enn sammaich alle !LOL!",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 15),
            Text(" N i n t e  S c o r e ",
                style: GoogleFonts.amaranth(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red))),
            Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(passedTotalScore.toString(),
                    style: GoogleFonts.archivo(
                        textStyle:
                            TextStyle(color: Colors.blue, fontSize: 40)))),
            Text(
              scoreDialogue(passedTotalScore),
              style: TextStyle(fontSize: 10),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: passedResetButtonPressed, child: Text("Reset")),
            )
          ],
        ));
  }
}
