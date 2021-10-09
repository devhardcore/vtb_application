import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/cash.dart';
import 'package:test_project/levels/chocolate.dart';
import 'package:test_project/welcome/second.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';
import 'package:test_project/widgets/select_button.dart';

class FirstLvlScreen extends StatefulWidget {
  createState() => new _FirstLvlScreenState();
}

class _FirstLvlScreenState extends State<FirstLvlScreen> {
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
                      "Добро пожаловать в суровый мир! "
                      "Тебе вот-вот исполнилось 8 лет, но уже пришлось столкнуться с важным выбором: купить шоладку на карманные деньги "
                      "или отложить их на светлое будущее. Что ты выберешь?",
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
                      text: "Шоколадка",
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ChocolateScreen()));
                      }),
                  SelectButton(
                      key: PageStorageKey("123"),
                      text: "Отложить",
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
