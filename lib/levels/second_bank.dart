import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/sliders.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class BankScreen extends StatefulWidget {
  createState() => new _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {

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
                    Text("Куда вложить?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 24,
                        )),
                    SizedBox(height: screenHeight * 0.03),
                    Score(score: "1K")
                  ]),
              SizedBox(height: screenHeight * 0.03),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/3.png')),
              SizedBox(height: screenHeight * 0.035),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Ты пришел в офис ВТБ, оформил банковский вклад под 8% годовых. Прошел год, в течение которого ты несколько раз пополнял вклад. Теперь у тебя 1000\$. Это много, но меньше, чем средняя доходность акций.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.05),
              Align(
                  alignment: Alignment.center,
                  child: NextButton(
                      text: "Понял",
                      onPressed: () {
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
