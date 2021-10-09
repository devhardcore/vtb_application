import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/levels/intro.dart';

class SecondScreen extends StatefulWidget {
  createState() => new _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

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
              Text("Познакомимся?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF333333),
                    fontSize: 28,
                  )),
              SizedBox(height: screenHeight * 0.03),
              Container(
                  width: screenWidth * 0.8,
                  child: Text(
                      "Чтобы эффективнее организовать обучение, давайте немного узнаем о вас",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xFF4F4F4F),
                        fontSize: 16,
                      ))),
              SizedBox(height: screenHeight * 0.08),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text("Возраст:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF4F4F4F),
                            fontSize: 18,
                          ))),
                  Container(
                    width: screenWidth * 0.08,
                    child: TextFormField(
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF4F4F4F),
                        ),
                        initialValue: "18",
                        decoration: new InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ]),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text("Зарплата в тыс:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF4F4F4F),
                            fontSize: 18,
                          ))),
                  Container(
                    width: screenWidth * 0.08,
                    child: TextFormField(
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF4F4F4F),
                        ),
                        initialValue: "100",
                        maxLength: 3,
                        decoration: new InputDecoration(
                          counterText: "",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ]),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Инвестировал?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF4F4F4F),
                        fontSize: 18,
                      )),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.2),
              Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: const Color(0xFF3A83F1),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new IntroScreen()));
                    },
                    child: SvgPicture.asset("assets/images/tr.svg"),
                  )), // This trailing co
            ],
          ),
        ));
  }
}
