import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/welcome/second.dart';

class FirstScreen extends StatefulWidget {
  createState() => new _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
              SizedBox(height: screenHeight * 0.08),
              Image.asset('assets/images/1.png'),
              SizedBox(height: screenHeight * 0.01),
              Text("Привет!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF333333),
                    fontSize: 32,
                  )),
              SizedBox(height: screenHeight * 0.01),
              Text("by VTB Bank",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFCECECE),
                    fontSize: 12,
                  )),
              SizedBox(height: screenHeight * 0.03),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Меня зовут ВТБ, я помогу тебе прокачаться в финансовой грамотности с помощью небольшой игры. Ты готов? :)",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF333333),
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.40),
              Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: const Color(0xFF3A83F1),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SecondScreen()));
                    },
                    child: SvgPicture.asset("assets/images/tr.svg"),
                  )), // This trailing co
            ],
          ),
        ));
  }
}
