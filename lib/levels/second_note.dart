import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/second.dart';
import 'package:test_project/levels/sliders.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class TradeNote extends StatefulWidget {
  createState() => new _TradeNoteState();
}

class _TradeNoteState extends State<TradeNote> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.07, vertical: screenHeight * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight * 0.04),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Куда инвестировать",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 24,
                        )),
                    SizedBox(height: screenHeight * 0.03),
                    Score(score: "10K")
                  ]),
              SizedBox(height: screenHeight * 0.03),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/5.png')),
              SizedBox(height: screenHeight * 0.035),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Ты смог преумножить свой капитал, вложившись в выгодные акции. Молодец!",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.05),
              Align(
                  alignment: Alignment.center,
                  child: NextButton(onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SlidersScreen()),
                        (Route<dynamic> route) => false);
                  }))
            ],
          ),
        ));
  }
}
