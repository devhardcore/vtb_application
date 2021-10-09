import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/final.dart';
import 'package:test_project/levels/second.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class CashScreen extends StatefulWidget {
  createState() => new _CashScreenState();
}

class _CashScreenState extends State<CashScreen> {
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
                      "Ты выбрал отложить деньги на светлое будущее. Да, сейчас ты не понимаешь, зачем. Но важно, что начинает формироваться привычка не тратить деньги на сиюминутные радости. Сейчас у тебя всего 15 баксов, но выбирая также в дальнейшем, ты точно достигнешь своих финансовых целей!",
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
                            builder: (context) => new FinalScreen()));
                  }))
            ],
          ),
        ));
  }
}
