import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/cash.dart';
import 'package:test_project/levels/second_bank.dart';
import 'package:test_project/widgets/score.dart';
import 'package:test_project/widgets/select_button.dart';

class SecondLvlScreen extends StatefulWidget {
  createState() => new _SecondLvlScreenState();
}

class _SecondLvlScreenState extends State<SecondLvlScreen> {
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
                    Score(score: "300")
                  ]),
              SizedBox(height: screenHeight * 0.03),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/3.png')),
              SizedBox(height: screenHeight * 0.035),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Прошло 10 лет, тебе уже 18, ты заметно вырос. А благодаря привычке откладывать и экономить ты накопил 300 баксов. Молодец! Ты уже пришёл в офис ВТБ, но вдруг засомневался. Что лучше оформить: брокерский счет или вклад?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectButton(
                      text: "Вклад",
                      key: const PageStorageKey("123"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new BankScreen()));
                      }),
                  SelectButton(
                      text: "Б.Счет",
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new CashScreen()));
                      })
                ],
              ),
            ],
          ),
        ));
  }
}
