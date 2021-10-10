import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/second.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class ChocolateScreen extends StatefulWidget {
  createState() => new _ChocolateScreenState();
}

class _ChocolateScreenState extends State<ChocolateScreen> {
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
                    Text("Шоколадка или Cash?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 24,
                        )),
                    SizedBox(height: screenHeight * 0.03),
                    Score(score: "0")
                  ]),
              SizedBox(height: screenHeight * 0.03),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/3.png')),
              SizedBox(height: screenHeight * 0.035),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Ты выбрал шоколадку. Руководствуясь сиюминутными желаниями, много не достичь. Нужно понимать, когда стоит тратить деньги, а когда лучше отложить на светлое будущее.",
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
                            builder: (context) => new SecondLvlScreen()),
                        (Route<dynamic> route) => false);
                  }))
            ],
          ),
        ));
  }
}
