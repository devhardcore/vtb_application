import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/final.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';

class SlidersScreen extends StatefulWidget {
  createState() => new _SlidersScreenState();
}

class _SlidersScreenState extends State<SlidersScreen> {
  double _currentSliderValue1 = 20;
  double _currentSliderValue2 = 10;
  double _currentSliderValue3 = 40;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.07, vertical: screenHeight * 0.05),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.04),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Первая зарплата",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 24,
                            )),
                        SizedBox(height: screenHeight * 0.03),
                        Score(score: "10K")
                      ]),
                  SizedBox(height: screenHeight * 0.02),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/3.png')),
                  SizedBox(height: screenHeight * 0.015),
                  Container(
                      width: screenWidth * 0.8,
                      child: Text(
                          "Прошел год, ты устроился на работу и получил первую зарплату. Ты смело оставил 50% на различные траты: еду, проезд и тд. У тебя осталось 50% от зарплаты, давай решим, куда их потратить.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 16,
                          ))),
                  SizedBox(height: screenHeight * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Тусы"),
                      Slider(
                        value: _currentSliderValue1,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        label: _currentSliderValue1.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue1 = value;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Отложить"),
                      Slider(
                        value: _currentSliderValue2,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        label: _currentSliderValue2.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue2 = value;
                          });
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Альтруизм"),
                      Slider(
                        value: _currentSliderValue3,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        label: _currentSliderValue3.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue3 = value;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Align(
                      alignment: Alignment.center,
                      child: NextButton(onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new FinalScreen()),
                            (Route<dynamic> route) => false);
                      }))
                ],
              ),
            ]));
  }
}
