import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/second_intro.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class IntroScreen extends StatefulWidget {
  createState() => new _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
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
                    Text("Добро пожаловать!",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 24,
                        )),
                    SizedBox(height: screenHeight * 0.03),
                    Score(score: "0")
                  ]),
              SizedBox(height: screenHeight * 0.015),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/2.png')),
              SizedBox(height: screenHeight * 0.015),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Привет ещё раз! Давай немного расскажу о том, что будет происходить. Начнем с цели игры: через простые выборы ты узнаешь, как мудро управлять своими финансами. Узнаешь, почему вредные привычки опасны не только для здоровья, но и для кошелька, а также получишь ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.05),
              Align(
                  alignment: Alignment.center,
                  child: NextButton(onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondIntroScreen()));
                  }))
            ],
          ),
        ));
  }
}
