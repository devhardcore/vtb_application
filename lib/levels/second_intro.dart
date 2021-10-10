import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/first.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class SecondIntroScreen extends StatefulWidget {
  createState() => new _SecondIntroScreenState();
}

class _SecondIntroScreenState extends State<SecondIntroScreen> {
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
                      "Механика игры заключается в том, что тебе нужно накопить достаточно денег для открытия собственного стартапа. Принимая верные решения, ты накапливаешь баксы. Они, кстати, отображаются рядом с заголовком. Там, наверху страницы.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.07),
              Align(
                  alignment: Alignment.center,
                  child: NextButton(onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FirstLvlScreen()),
                        (Route<dynamic> route) => false);
                  }))
            ],
          ),
        ));
  }
}
