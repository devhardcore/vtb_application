import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';
import 'package:url_launcher/url_launcher.dart';

class FinalScreen extends StatefulWidget {
  createState() => new _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.07, vertical: screenHeight * 0.05),
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.04),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Поздравляем!",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 24,
                            )),
                        SizedBox(height: screenHeight * 0.03),
                        Score(score: "100K")
                      ]),
                  SizedBox(height: screenHeight * 0.03),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/7.png')),
                  SizedBox(height: screenHeight * 0.035),
                  Container(
                      width: screenWidth * 0.8,
                      child: Text(
                        "Поздравляем, ты смог открыть свой стартап, так как сделал несколько правильных финансовых выборов. А теперь можете попробовать свои силы в приложении ВТБ Инвестиции ^_^",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(height: screenHeight * 0.05),
                  Align(
                    alignment: Alignment.center,
                    child: NextButton(
                        text: "ВТБ Онлайн",
                        onPressed: () => launch(
                            'https://play.google.com/store/apps/details?id=ru.vtb24.mobilebanking.android&hl=ru&gl=US')),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Align(
                    alignment: Alignment.center,
                    child: NextButton(
                        text: "Мои Инвестиции",
                        onPressed: () => launch(
                            "https://play.google.com/store/apps/details?id=ru.vtb.invest&hl=ru&gl=US")),
                  )
                ],
              ),
            ]));
  }
}
